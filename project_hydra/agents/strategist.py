"""
HYDRA Strategist Agent — O Cérebro.
Aplica matriz MCDA (Multi-Criteria Decision Analysis) nos dados do Scout
para determinar o modelo de negócio vencedor e o plano de 90 dias.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any

from project_hydra.agents.base import BaseAgent
from project_hydra.core import config
from project_hydra.core.llm_client import call_llm_json
from project_hydra.core.models import (
    BusinessModelScore,
    CriteriaScores,
    HydraState,
    PhasePlan,
    ScoutReport,
    StrategyReport,
)

_STRATEGIST_SYSTEM = """Você é o Strategist Agent do HYDRA, um venture studio autônomo.

Sua missão: transformar sinais de mercado em uma estratégia de negócio executável.
Você aplica raciocínio rigoroso, orientado a dados e velocidade de execução.

Contexto crítico:
- Capital semente: R$ 1.000 (MVP máx R$ 200, preservar R$ 800 para escala)
- Meta: R$ 100.000 em MRR em 90 dias
- Limite do Founder: máximo 1% do tempo operacional
- Stack disponível: n8n, OpenClaw/Buzz, Supabase, Meta Ads API, Google Ads API, Vercel, Anthropic API
- A Adventure Labs JÁ OPERA como prova de conceito: Rose, Young, Benditta são clientes ativos
- Telegram ceo_buzz_Bot (chat 1069502175) para notificações

Princípios de decisão:
1. Velocidade sobre perfeição — receita em 7 dias, não 30
2. Aproveitar infraestrutura existente — zero desenvolvimento de produto quando possível
3. Receita recorrente sobre pontual — MRR > venda única
4. Autonomia > headcount — cada cliente deve ser gerenciado por agentes, não por humanos

Formato de resposta: JSON estruturado conforme schema fornecido."""


class StrategistAgent(BaseAgent):
    """
    The Strategist — Aplica MCDA e gera o plano estratégico completo.
    """

    agent_name = "strategist"
    agent_role = "Strategist (O Cérebro)"
    agent_emoji = "🧠"

    def __init__(self, state: HydraState, scout_report: ScoutReport):
        super().__init__(state)
        self.scout_report = scout_report
        self._business_models: list[dict] = []
        self._weights: dict = {}

    def run(self) -> StrategyReport:
        self._start()

        try:
            # 1. Carrega modelos e pesos
            self._load_matrix_data()

            # 2. Calcula scores MCDA para cada modelo
            scores = self._score_all_models()
            scores.sort(key=lambda x: x.weighted_score, reverse=True)

            for i, score in enumerate(scores):
                score.rank = i + 1

            winner = scores[0]
            self.logger.info(
                f"Modelo vencedor: {winner.model_name} (score: {winner.weighted_score:.2f}/10)"
            )

            # 3. Gera estratégia completa com LLM
            strategy = self._generate_full_strategy(winner, scores)

            # 4. Salva no estado global
            self.state.strategy_report = strategy

            # 5. Notifica Founder via Telegram
            from project_hydra.core import telegram
            telegram.notify_strategy_winner(
                model_name=winner.model_name,
                score=winner.weighted_score,
                estimated_mrr=winner.monthly_revenue_potential_day90_brl,
            )

            self._record_spend(0.08, "Strategist LLM analysis", "api")
            self._end(success=True)
            return strategy

        except Exception as e:
            self.logger.error(f"Strategist falhou: {e}", exc_info=True)
            self._end(success=False)
            return self._fallback_strategy()

    # ─── Matrix Loading ────────────────────────────────────────────────────────

    def _load_matrix_data(self) -> None:
        models_file = config.DATA_DIR / "business_models.json"
        weights_file = config.DATA_DIR / "decision_matrix_weights.json"

        with open(models_file, encoding="utf-8") as f:
            data = json.load(f)
            self._business_models = data["models"]

        with open(weights_file, encoding="utf-8") as f:
            data = json.load(f)
            self._weights = {
                k: v["weight"] for k, v in data["criteria"].items()
            }

        self.logger.info(
            f"Matrix carregada: {len(self._business_models)} modelos, "
            f"critérios: {list(self._weights.keys())}"
        )

    # ─── MCDA Scoring ──────────────────────────────────────────────────────────

    def _score_all_models(self) -> list[BusinessModelScore]:
        """Aplica a matriz MCDA a todos os modelos de negócio."""
        scores = []
        for model in self._business_models:
            score = self._score_model(model)
            scores.append(score)
            self.logger.info(
                f"  {model['name']}: {score.weighted_score:.2f}/10 "
                f"(custo: R${score.launch_cost_brl}, dias: {score.days_to_first_revenue})"
            )
        return scores

    def _score_model(self, model: dict) -> BusinessModelScore:
        """Calcula o score ponderado de um modelo."""
        raw_scores = model.get("criteria_scores", {})

        criteria = CriteriaScores(
            time_to_revenue=float(raw_scores.get("time_to_revenue", 5)),
            launch_cost=float(raw_scores.get("launch_cost", 5)),
            automation_potential=float(raw_scores.get("automation_potential", 5)),
            scalability=float(raw_scores.get("scalability", 5)),
            stack_alignment=float(raw_scores.get("stack_alignment", 5)),
        )

        weighted = (
            criteria.time_to_revenue * self._weights.get("time_to_revenue", 0.30)
            + criteria.launch_cost * self._weights.get("launch_cost", 0.20)
            + criteria.automation_potential * self._weights.get("automation_potential", 0.25)
            + criteria.scalability * self._weights.get("scalability", 0.15)
            + criteria.stack_alignment * self._weights.get("stack_alignment", 0.10)
        )

        return BusinessModelScore(
            model_id=model["id"],
            model_name=model["name"],
            scores=criteria,
            weighted_score=round(weighted, 2),
            launch_cost_brl=float(model.get("launch_cost_brl", 200)),
            days_to_first_revenue=int(model.get("days_to_first_revenue", 14)),
            monthly_revenue_potential_day90_brl=float(
                model.get("monthly_revenue_potential_day90_brl", 10000)
            ),
            risk_level=model.get("risk_level", "medium"),
            stack_fit=model.get("stack_fit", "medium"),
        )

    # ─── LLM Strategy Generation ───────────────────────────────────────────────

    def _generate_full_strategy(
        self,
        winner: BusinessModelScore,
        all_scores: list[BusinessModelScore],
    ) -> StrategyReport:
        """Gera o plano estratégico completo usando LLM."""

        scores_summary = "\n".join(
            f"  {i+1}. {s.model_name}: {s.weighted_score:.1f}/10 "
            f"(dias: {s.days_to_first_revenue}, custo: R${s.launch_cost_brl}, "
            f"MRR projetado: R${s.monthly_revenue_potential_day90_brl:,.0f})"
            for i, s in enumerate(all_scores)
        )

        opportunities = "\n".join(f"- {o}" for o in self.scout_report.top_opportunities[:5])
        niches = ", ".join(self.scout_report.recommended_niches[:3])

        prompt = f"""Com base na análise MCDA dos 5 modelos de negócio e nos sinais do Scout:

## Ranking MCDA (pesos: velocidade 30%, custo 20%, automação 25%, escala 15%, stack 10%):
{scores_summary}

## Modelo Vencedor: {winner.model_name}
- Score: {winner.weighted_score:.1f}/10
- Custo de lançamento: R$ {winner.launch_cost_brl}
- Dias para primeira receita: {winner.days_to_first_revenue}
- MRR projetado em 90 dias: R$ {winner.monthly_revenue_potential_day90_brl:,.0f}
- Fit com stack: {winner.stack_fit}

## Oportunidades de Mercado Identificadas:
{opportunities}

## Nichos Recomendados:
{niches}

## Contexto de Mercado:
{self.scout_report.market_context}

---

Gere o plano estratégico completo para HYDRA. A stack Adventure Labs já tem:
n8n (automações), OpenClaw/Buzz (agentes IA + WhatsApp/Telegram), Supabase,
Meta Ads API, Google Ads API, Vercel, Anthropic API.
O modelo já está provado internamente (clientes Rose, Young, Benditta).

Responda com JSON seguindo este schema:
{{
  "project_name": "nome do projeto HYDRA (criativo, relacionado ao modelo)",
  "central_thesis": "tese central em 1-2 frases — o que o HYDRA faz e por que vence",
  "value_proposition": "proposta de valor única para o cliente-alvo",
  "target_customer": "cliente-alvo específico (perfil detalhado)",
  "revenue_path_7_days": "passo a passo concreto para o primeiro real em 7 dias",
  "plan_90_days": [
    {{
      "phase_name": "Fase 1: MVP e Primeiro Cliente",
      "duration": "Dias 1-7",
      "goal": "objetivo mensurável",
      "actions": ["ação 1", "ação 2", "ação 3", "ação 4", "ação 5"],
      "target_mrr_brl": 3000,
      "key_metrics": ["métrica 1", "métrica 2"],
      "dependencies": ["dependência 1"]
    }},
    {{
      "phase_name": "Fase 2: Tração",
      "duration": "Dias 8-30",
      "goal": "objetivo mensurável",
      "actions": ["ação 1", "ação 2", "ação 3", "ação 4", "ação 5"],
      "target_mrr_brl": 15000,
      "key_metrics": ["métrica 1", "métrica 2"],
      "dependencies": []
    }},
    {{
      "phase_name": "Fase 3: Aceleração",
      "duration": "Dias 31-60",
      "goal": "objetivo mensurável",
      "actions": ["ação 1", "ação 2", "ação 3", "ação 4", "ação 5"],
      "target_mrr_brl": 50000,
      "key_metrics": ["métrica 1", "métrica 2"],
      "dependencies": []
    }},
    {{
      "phase_name": "Fase 4: Escala",
      "duration": "Dias 61-90",
      "goal": "objetivo mensurável",
      "actions": ["ação 1", "ação 2", "ação 3", "ação 4", "ação 5"],
      "target_mrr_brl": 100000,
      "key_metrics": ["métrica 1", "métrica 2"],
      "dependencies": []
    }}
  ],
  "redlines": [
    "redline 1 (proteção financeira)",
    "redline 2 (proteção legal/LGPD)",
    "redline 3 (proteção de reputação)",
    "redline 4 (limite do Founder)",
    "redline 5 (proteção do capital semente)"
  ],
  "pivot_triggers": [
    "gatilho de pivô 1 (ex: zero leads em 48h)",
    "gatilho de pivô 2",
    "gatilho de pivô 3"
  ],
  "estimated_launch_cost_brl": 100,
  "client_target_count_90d": 35,
  "ticket_medio_brl": 3000
}}"""

        try:
            result = call_llm_json(prompt, _STRATEGIST_SYSTEM, temperature=0.6)
        except Exception as e:
            self.logger.warning(f"LLM Strategy failed, using defaults: {e}")
            result = self._default_strategy_data(winner)

        phases = [
            PhasePlan(**phase) for phase in result.get("plan_90_days", [])
        ]

        return StrategyReport(
            session_id=self.session_id,
            winner=winner,
            all_scores=all_scores,
            market_signals=self.scout_report.signals,
            project_name=result.get("project_name", "HYDRA AAAS"),
            central_thesis=result.get("central_thesis", ""),
            value_proposition=result.get("value_proposition", ""),
            target_customer=result.get("target_customer", ""),
            revenue_path_7_days=result.get("revenue_path_7_days", ""),
            plan_90_days=phases,
            redlines=result.get("redlines", []),
            pivot_triggers=result.get("pivot_triggers", []),
            estimated_launch_cost_brl=float(result.get("estimated_launch_cost_brl", 100)),
            client_target_count_90d=int(result.get("client_target_count_90d", 35)),
            ticket_medio_brl=float(result.get("ticket_medio_brl", 3000)),
        )

    def _default_strategy_data(self, winner: BusinessModelScore) -> dict:
        """Dados estratégicos padrão quando LLM não está disponível."""
        return {
            "project_name": "HYDRA AAAS — Autonomous Account Manager",
            "central_thesis": (
                "O HYDRA opera como um account manager de IA que gerencia campanhas de tráfego pago "
                "para PMEs brasileiras com qualidade de agência a 60% do custo humano. "
                "A Adventure Labs já é o MVP vivo — basta produtizar e vender."
            ),
            "value_proposition": (
                "Gestão autônoma de Meta Ads + Google Ads por R$ 2.500/mês "
                "(vs R$ 4.000-8.000 de uma agência humana), "
                "com relatórios diários, otimizações em tempo real e atendimento via WhatsApp."
            ),
            "target_customer": (
                "PMEs brasileiras gastando R$ 5.000-50.000/mês em anúncios online. "
                "Segmentos prioritários: clínicas (odonto/estética), imobiliárias, infoprodutores, "
                "e-commerce e cursos online. Dono ou gerente de marketing insatisfeito "
                "com custo/resultado de agências tradicionais."
            ),
            "revenue_path_7_days": (
                "Dia 1: Definir oferta (landing page em 2h no Vercel), criar WhatsApp Business. "
                "Dia 2: Lista de 50 prospects aquecidos (ex-contatos, referências de clientes atuais, LinkedIn). "
                "Dia 3-4: Abordagem via WhatsApp com pitch de 3 linhas + link para demo. "
                "Dia 5: Demo de 30min mostrando relatórios dos clientes Rose/Young como social proof. "
                "Dia 6: Follow-up e fechamento do primeiro contrato (R$ 2.500-3.500). "
                "Dia 7: Onboarding do cliente #1, acesso às contas de ads, primeiro relatório automático."
            ),
            "plan_90_days": [
                {
                    "phase_name": "Fase 1: MVP e Primeiro Cliente",
                    "duration": "Dias 1-7",
                    "goal": "Fechar 1-2 contratos (MRR R$ 3.000-7.000)",
                    "actions": [
                        "Criar landing page HYDRA no Vercel (1 dia, R$ 0)",
                        "Definir pacotes: Starter R$ 2.500 | Pro R$ 3.500 | Agency R$ 5.000",
                        "Ativar lista de 50 prospects via WhatsApp (script de 3 linhas)",
                        "Realizar 5-10 demos mostrando reports reais da Adventure Labs",
                        "Fechar primeiro contrato e onboarding em menos de 24h",
                    ],
                    "target_mrr_brl": 5000,
                    "key_metrics": ["demos_realizadas", "propostas_enviadas", "mrr_fechado"],
                    "dependencies": ["landing_page_no_ar", "script_de_vendas_aprovado"],
                },
                {
                    "phase_name": "Fase 2: Tração",
                    "duration": "Dias 8-30",
                    "goal": "8 clientes ativos (MRR R$ 20.000-25.000)",
                    "actions": [
                        "Automatizar onboarding de novos clientes via n8n",
                        "Criar sequência de follow-up automático (OpenClaw/Buzz)",
                        "Ativar canal de indicações (comissão de 10% por referral)",
                        "Publicar primeiros cases de resultado no LinkedIn",
                        "Testar campanhas de aquisição pagas (R$ 500, ROI mínimo 5x)",
                    ],
                    "target_mrr_brl": 22000,
                    "key_metrics": [
                        "churn_rate", "nps_clientes", "custo_de_aquisicao", "mrr_total"
                    ],
                    "dependencies": ["onboarding_automatizado", "template_relatorio_pronto"],
                },
                {
                    "phase_name": "Fase 3: Aceleração",
                    "duration": "Dias 31-60",
                    "goal": "20 clientes ativos (MRR R$ 50.000-60.000)",
                    "actions": [
                        "Lançar programa de parceiros (agências white-label)",
                        "Criar conteúdo de autoridade: posts + vídeos curtos com resultados",
                        "Automação completa de relatórios e alertas (n8n + Supabase)",
                        "Escalar aquisição paga (R$ 3.000/mês ads, ROI mínimo 10x)",
                        "Contratar 1 assistente de suporte (part-time, R$ 1.500/mês)",
                    ],
                    "target_mrr_brl": 55000,
                    "key_metrics": [
                        "ltv_medio", "nps", "receita_por_agente", "autonomia_pct"
                    ],
                    "dependencies": ["sistema_relatorio_100_pct_automatico"],
                },
                {
                    "phase_name": "Fase 4: Escala R$ 100k",
                    "duration": "Dias 61-90",
                    "goal": "35 clientes ativos (MRR R$ 87.500-105.000)",
                    "actions": [
                        "Lançar tier 'Agency' para agências revendedoras (R$ 5-10k/mês, 3-10 sub-clientes)",
                        "Automação de sales pipeline completo (prospecção → demo → fechamento)",
                        "Dashboard de performance em tempo real para clientes (Metabase)",
                        "Reinvestir 30% do MRR em aquisição de clientes",
                        "Avaliar hiring de 1 gestor de sucesso de clientes para desafogar Founder",
                    ],
                    "target_mrr_brl": 100000,
                    "key_metrics": [
                        "mrr_total", "pct_operacoes_autonomas", "nps_minimo_8",
                        "custo_por_cliente_brl", "tempo_founder_por_semana_horas"
                    ],
                    "dependencies": ["tier_agency_criado", "sales_automation_ativa"],
                },
            ],
            "redlines": [
                "Nunca gastar mais de R$ 200 sem ter sinal de tração (lead ou clique confirmado)",
                "Nunca prometer ROI garantido em campanhas (violação CONAR e CDCon)",
                "Nunca processar dados pessoais de usuários finais sem base legal LGPD documentada",
                "Founder não pode operar mais de 1% do tempo nas operações — escalar com agentes",
                "Nunca onboarding de cliente novo se custo de API > R$ 150/mês para aquele cliente",
            ],
            "pivot_triggers": [
                "Zero leads qualificados em 48h após lançamento → mudar nicho ou oferta",
                "Taxa de fechamento < 10% após 20 demos → revisar pricing ou proposta de valor",
                "Churn > 15% no mês 2 → auditoria de qualidade de entrega",
            ],
            "estimated_launch_cost_brl": 100,
            "client_target_count_90d": 35,
            "ticket_medio_brl": 3000,
        }

    def _fallback_strategy(self) -> StrategyReport:
        """Strategy de fallback quando tudo falha."""
        from project_hydra.core.models import BusinessModelScore, CriteriaScores
        winner = BusinessModelScore(
            model_id="hybrid_aaas",
            model_name="Hybrid AAAS — Autonomous Account Manager as a Service",
            scores=CriteriaScores(
                time_to_revenue=10.0,
                launch_cost=9.0,
                automation_potential=10.0,
                scalability=9.0,
                stack_alignment=10.0,
            ),
            weighted_score=9.6,
            launch_cost_brl=100.0,
            days_to_first_revenue=3,
            monthly_revenue_potential_day90_brl=105000.0,
            risk_level="low",
            stack_fit="perfect",
            rank=1,
        )
        data = self._default_strategy_data(winner)
        phases = [PhasePlan(**p) for p in data["plan_90_days"]]
        return StrategyReport(
            session_id=self.session_id,
            winner=winner,
            all_scores=[winner],
            market_signals=[],
            project_name=data["project_name"],
            central_thesis=data["central_thesis"],
            value_proposition=data["value_proposition"],
            target_customer=data["target_customer"],
            revenue_path_7_days=data["revenue_path_7_days"],
            plan_90_days=phases,
            redlines=data["redlines"],
            pivot_triggers=data["pivot_triggers"],
            estimated_launch_cost_brl=data["estimated_launch_cost_brl"],
            client_target_count_90d=data["client_target_count_90d"],
            ticket_medio_brl=data["ticket_medio_brl"],
        )
