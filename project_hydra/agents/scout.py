"""
HYDRA Scout Agent — O Olheiro.
Minera dados de tendências e falhas de mercado para alimentar o Strategist.

Fontes de dados:
1. Braindump da Adventure Labs (docs/braindump/)
2. Supabase adv_ideias (read-only)
3. Supabase adv_csuite_memory (read-only)
4. Análise contextual via LLM
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Optional

from project_hydra.agents.base import BaseAgent
from project_hydra.core import config, supabase_client
from project_hydra.core.llm_client import call_llm_json
from project_hydra.core.models import HydraState, MarketSignal, ScoutReport

_SCOUT_SYSTEM = """Você é o Scout Agent do sistema HYDRA, um venture studio autônomo.

Sua missão: identificar sinais reais de mercado — dores, tendências, oportunidades e validações —
a partir de dados brutos (braindumps, ideias, memórias de agentes).

Contexto operacional:
- Capital semente: R$ 1.000 (MVP máx R$ 200)
- Meta: R$ 100.000 em 90 dias
- Foco: mercado brasileiro (PMEs, infoprodutores, agências)
- Stack disponível: n8n, OpenClaw, Supabase, Meta Ads API, Google Ads API, Vercel, Anthropic API

Regras:
- Só reporte sinais com evidência concreta (cite a fonte)
- Priorize oportunidades com validação de demanda (alguém já pagou ou pediu)
- Identifique a dor mais dolorosa e mais imediata
- Não invente dados — se não há evidência, diga isso
- Foque em mercados onde a stack já tem vantagem competitiva

Responda em JSON estruturado conforme o schema fornecido."""


class ScoutAgent(BaseAgent):
    """
    The Scout — Coleta e analisa sinais de mercado.
    Lê arquivos da stack Adventure (read-only) e Supabase adv_* (read-only).
    """

    agent_name = "scout"
    agent_role = "Scout (Olheiro)"
    agent_emoji = "🔭"

    def run(self) -> ScoutReport:
        self._start()
        signals: list[MarketSignal] = []
        sources_used: list[str] = []

        try:
            # 1. Lê braindump da Adventure Labs
            braindump_signals = self._scan_braindump()
            signals.extend(braindump_signals)
            if braindump_signals:
                sources_used.append("braindump")

            # 2. Lê ideias do Supabase (adv_ideias, read-only)
            db_signals = self._scan_supabase_ideas()
            signals.extend(db_signals)
            if db_signals:
                sources_used.append("supabase_adv_ideias")

            # 3. Lê memória do C-Suite (insights estratégicos)
            csuite_signals = self._scan_csuite_memory()
            signals.extend(csuite_signals)
            if csuite_signals:
                sources_used.append("adv_csuite_memory")

            # 4. Enriquece com análise LLM
            report = self._generate_scout_report(signals, sources_used)

            self.logger.info(
                f"Scout concluído: {len(signals)} sinais de {len(sources_used)} fonte(s)"
            )
            self._record_spend(0.05, "Scout LLM analysis", "api")
            self._end(success=True)
            return report

        except Exception as e:
            self.logger.error(f"Scout falhou: {e}", exc_info=True)
            self._end(success=False)
            # Retorna report mínimo para não bloquear pipeline
            return self._fallback_report(signals, sources_used)

    # ─── Data Sources ──────────────────────────────────────────────────────────

    def _scan_braindump(self) -> list[MarketSignal]:
        """Lê e analisa o braindump da Adventure Labs."""
        braindump_path = config.BRAINDUMP_FILE
        if not braindump_path.exists():
            self.logger.warning(f"Braindump não encontrado: {braindump_path}")
            return []

        content = braindump_path.read_text(encoding="utf-8")
        self.logger.info(f"Braindump lido: {len(content)} chars")

        # Parse simples: extrai linhas com bullet points como sinais potenciais
        signals = []
        for line in content.splitlines():
            line = line.strip()
            if not line or line.startswith(">") or line.startswith("#"):
                continue
            # Captura ideias e projetos mencionados
            if any(kw in line.lower() for kw in [
                "app", "agent", "bot", "saas", "tool", "dashboard",
                "crm", "report", "automac", "campanha", "ads", "lead",
                "client", "vend", "receita", "revenue"
            ]):
                signals.append(MarketSignal(
                    source="braindump",
                    topic=line[:100],
                    signal_type="opportunity",
                    strength=0.6,
                    evidence=f"Mencionado no braindump da Adventure Labs: '{line[:80]}'",
                    tags=["braindump", "founder_idea"],
                ))

        self.logger.info(f"Braindump: {len(signals)} sinais extraídos")
        return signals[:20]  # Limita para não sobrecarregar o LLM

    def _scan_supabase_ideas(self) -> list[MarketSignal]:
        """Lê adv_ideias do Supabase em modo read-only."""
        if not config.USE_SUPABASE:
            self.logger.debug("Supabase desativado — pulando leitura de ideias")
            return []

        try:
            rows = supabase_client.select_adventure_read_only(
                table="adv_ideias",
                columns="title, status, priority, created_at",
                filters={"status": "ativo"},
                limit=30,
            )
        except Exception as e:
            self.logger.warning(f"adv_ideias indisponível: {e}")
            return []

        signals = []
        for row in rows:
            strength = {"alta": 0.85, "media": 0.65, "baixa": 0.45}.get(
                (row.get("priority") or "media").lower(), 0.6
            )
            signals.append(MarketSignal(
                source="supabase_adv_ideias",
                topic=row.get("title", "Ideia sem título"),
                signal_type="opportunity",
                strength=strength,
                evidence=f"Ideia catalogada no Supabase (prioridade: {row.get('priority', 'N/A')})",
                tags=["supabase", "cataloged_idea"],
            ))

        self.logger.info(f"Supabase adv_ideias: {len(signals)} sinais")
        return signals

    def _scan_csuite_memory(self) -> list[MarketSignal]:
        """Lê adv_csuite_memory para capturar insights estratégicos recentes."""
        if not config.USE_SUPABASE:
            return []

        try:
            rows = supabase_client.select_adventure_read_only(
                table="adv_csuite_memory",
                columns="agent, summary, created_at",
                limit=10,
            )
        except Exception as e:
            self.logger.debug(f"adv_csuite_memory indisponível: {e}")
            return []

        signals = []
        for row in rows:
            agent = row.get("agent", "unknown")
            summary = row.get("summary", "")
            if not summary:
                continue
            signals.append(MarketSignal(
                source="adv_csuite_memory",
                topic=summary[:100],
                signal_type="validation",
                strength=0.75,
                evidence=f"Decisão do C-Suite ({agent.upper()}): {summary[:150]}",
                tags=["csuite", "strategic_decision"],
            ))

        self.logger.info(f"C-Suite memory: {len(signals)} sinais")
        return signals

    # ─── LLM Analysis ──────────────────────────────────────────────────────────

    def _generate_scout_report(
        self, signals: list[MarketSignal], sources: list[str]
    ) -> ScoutReport:
        """Usa LLM para sintetizar sinais em insights acionáveis."""

        signals_text = "\n".join(
            f"- [{s.signal_type.upper()}] {s.topic} (força: {s.strength:.0%}) — {s.evidence[:100]}"
            for s in signals[:30]
        )

        prompt = f"""Analise os seguintes sinais de mercado coletados da Adventure Labs
(agência martech brasileira com stack completa: n8n, OpenClaw/Buzz, Supabase, Meta Ads, Google Ads, Anthropic API):

## Sinais Coletados ({len(signals)} total):
{signals_text if signals_text else "Nenhum sinal de fontes externas — use conhecimento de mercado."}

## Contexto:
- Capital semente: R$ 1.000 (MVP máx R$ 200)
- Meta em 90 dias: R$ 100.000 em MRR
- Stack já pronta: n8n automations, agentes IA, APIs Meta/Google Ads, Supabase, Vercel, Telegram
- Mercado alvo: PMEs brasileiras, infoprodutores, agências de marketing
- A Adventure Labs JÁ OPERA com agentes de IA para clientes de marketing (Rose, Young, Benditta)

## Tarefa:
Identifique as TOP 5 oportunidades de mercado imediatas para um novo produto/serviço.
Foque em: (1) dores que PMEs brasileiras pagam para resolver, (2) onde a stack Adventure tem vantagem injusta.

Responda com JSON:
{{
  "top_opportunities": ["lista de 5 oportunidades específicas"],
  "top_pain_points": ["lista de 5 dores mais críticas com evidência de disposição a pagar"],
  "market_context": "parágrafo sobre o momento do mercado martech brasileiro",
  "recommended_niches": ["3 nichos específicos ordenados por potencial/velocidade"],
  "synthesis": "análise estratégica em 3-5 frases"
}}"""

        try:
            result = call_llm_json(prompt, _SCOUT_SYSTEM, temperature=0.5)
        except Exception as e:
            self.logger.warning(f"LLM falhou no Scout, usando defaults: {e}")
            result = self._default_analysis()

        return ScoutReport(
            session_id=self.session_id,
            signals=signals,
            top_opportunities=result.get("top_opportunities", []),
            top_pain_points=result.get("top_pain_points", []),
            market_context=result.get("market_context", ""),
            recommended_niches=result.get("recommended_niches", []),
            data_sources_used=sources,
        )

    def _default_analysis(self) -> dict:
        """Análise padrão quando LLM não disponível."""
        return {
            "top_opportunities": [
                "AI Account Manager para PMEs (Meta + Google Ads automatizados)",
                "Relatórios de campanha white-label para agências",
                "Agente de atendimento WhatsApp para serviços locais",
                "Dashboard de performance unificado (Meta + Google) para PMEs",
                "Automação de criação de criativos para Meta Ads",
            ],
            "top_pain_points": [
                "PMEs gastam R$ 5-50k/mês em ads sem entender os resultados",
                "Agências cobram R$ 3-8k/mês por gestão humana (cara e inconsistente)",
                "Leads não são contactados em tempo real (40%+ se perdem)",
                "Relatórios de campanha são manuais e demoram horas para criar",
                "Pequenos anunciantes não têm acesso a expertise de gestão de tráfego",
            ],
            "market_context": (
                "O mercado de martech brasileiro está em expansão acelerada. "
                "PMEs que investem em tráfego pago enfrentam custos crescentes de agências "
                "e falta de transparência. IA generativa cria uma janela única para oferecer "
                "serviços de qualidade agência a 40-60% do custo humano."
            ),
            "recommended_niches": [
                "Clínicas e serviços de saúde (alta margem, ads intensivos)",
                "Imobiliárias e construtoras (ticket alto, leads críticos)",
                "Infoprodutores e educação online (escala rápida, Meta Ads dependente)",
            ],
        }

    def _fallback_report(
        self, signals: list[MarketSignal], sources: list[str]
    ) -> ScoutReport:
        """Report de fallback com análise default."""
        analysis = self._default_analysis()
        return ScoutReport(
            session_id=self.session_id,
            signals=signals,
            data_sources_used=sources,
            **{k: v for k, v in analysis.items() if k != "synthesis"},
        )
