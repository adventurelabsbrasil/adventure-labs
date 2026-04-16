"""
HYDRA Builder Agent — O Construtor.
Gera artefatos operacionais a partir do StrategyReport:
LP content, outreach templates, n8n specs, SQL, checklist, pivot protocol.
"""

from __future__ import annotations

import json
from typing import Any

from project_hydra.agents.base import BaseAgent
from project_hydra.core import config
from project_hydra.core.llm_client import call_llm, call_llm_json
from project_hydra.core.models import (
    ArtifactStatus,
    BuildArtifact,
    BuildReport,
    HydraState,
    InfraChecklistItem,
    StrategyReport,
)

_BUILDER_SYSTEM = """Você é o Builder Agent do HYDRA, um venture studio autônomo.

Sua missão: transformar a estratégia aprovada em artefatos operacionais prontos para deploy.
Você gera código, copy, templates e specs que podem ser usados imediatamente.

Contexto:
- Stack: Vercel (LP), Supabase (DB), n8n (automações), OpenClaw/Buzz (WhatsApp/Telegram),
  Meta Ads API, Google Ads API, Anthropic API
- Capital: R$ 1.000 semente, MVP máx R$ 200
- Mercado: PMEs brasileiras, tráfego pago

Regras:
- Gere artefatos prontos para uso, não rascunhos
- Todo copy em português brasileiro (pt-BR)
- Linguagem profissional mas acessível
- Nunca prometa resultados garantidos (CONAR)
- Foque em velocidade de deploy — MVP em horas, não dias"""


class BuilderAgent(BaseAgent):
    """The Builder — Gera artefatos operacionais para lançamento do MVP."""

    agent_name = "builder"
    agent_role = "Builder (O Construtor)"
    agent_emoji = "🏗️"

    def __init__(self, state: HydraState, strategy_report: StrategyReport):
        super().__init__(state)
        self.strategy = strategy_report

    def run(self) -> BuildReport:
        self._start()
        artifacts: list[BuildArtifact] = []

        try:
            # 1. Landing page content
            lp = self._generate_landing_page()
            artifacts.append(lp)
            self.logger.info("Landing page content gerado")

            # 2. Outreach templates
            outreach = self._generate_outreach_templates()
            artifacts.extend(outreach)
            self.logger.info(f"{len(outreach)} templates de outreach gerados")

            # 3. n8n workflow spec
            n8n = self._generate_n8n_workflow()
            artifacts.append(n8n)
            self.logger.info("n8n workflow spec gerado")

            # 4. Infra checklist
            checklist = self._generate_infra_checklist()

            # 5. Pivot protocol
            pivot = self._generate_pivot_protocol()

            # 6. Deployment guide
            deploy = self._generate_deployment_guide()

            total_cost = sum(item.estimated_cost_brl for item in checklist)
            auto_count = sum(1 for item in checklist if item.is_automated)
            auto_pct = (auto_count / len(checklist) * 100) if checklist else 0

            report = BuildReport(
                session_id=self.session_id,
                strategy=self.strategy,
                artifacts=artifacts,
                infra_checklist=checklist,
                deployment_guide=deploy,
                pivot_protocol=pivot,
                total_estimated_cost_brl=total_cost,
                automated_steps_pct=round(auto_pct, 1),
            )

            self.state.build_report = report
            self._record_spend(0.12, "Builder LLM generation", "api")

            from project_hydra.core import telegram
            telegram.notify_build_complete(len(artifacts), total_cost)

            self._end(success=True)
            return report

        except Exception as e:
            self.logger.error(f"Builder falhou: {e}", exc_info=True)
            self._end(success=False)
            return self._fallback_report()

    # ─── Artifact Generators ───────────────────────────────────────────────────

    def _generate_landing_page(self) -> BuildArtifact:
        """Gera conteúdo da landing page do HYDRA."""
        prompt = f"""Gere o conteúdo completo de uma landing page para:

Produto: {self.strategy.project_name}
Proposta de valor: {self.strategy.value_proposition}
Cliente-alvo: {self.strategy.target_customer}
Preço: R$ {self.strategy.ticket_medio_brl:,.0f}/mês

Retorne JSON:
{{
  "headline": "título principal (max 10 palavras)",
  "subheadline": "subtítulo explicativo (max 20 palavras)",
  "hero_cta": "texto do botão principal",
  "benefits": ["benefício 1", "benefício 2", "benefício 3", "benefício 4"],
  "social_proof": "frase de prova social (ex: 'Usado por X empresas')",
  "pricing_tiers": [
    {{"name": "Starter", "price": "R$ 2.500/mês", "features": ["feat1", "feat2", "feat3"]}},
    {{"name": "Pro", "price": "R$ 3.500/mês", "features": ["feat1", "feat2", "feat3", "feat4"]}},
    {{"name": "Agency", "price": "R$ 5.000/mês", "features": ["feat1", "feat2", "feat3", "feat4", "feat5"]}}
  ],
  "faq": [
    {{"q": "pergunta 1", "a": "resposta 1"}},
    {{"q": "pergunta 2", "a": "resposta 2"}},
    {{"q": "pergunta 3", "a": "resposta 3"}}
  ],
  "final_cta": "texto do CTA final"
}}"""

        try:
            data = call_llm_json(prompt, _BUILDER_SYSTEM, temperature=0.7)
            content = json.dumps(data, ensure_ascii=False, indent=2)
        except Exception:
            content = json.dumps(self._default_lp(), ensure_ascii=False, indent=2)

        return BuildArtifact(
            artifact_type="landing_page",
            name="HYDRA Landing Page Content",
            description="Conteúdo estruturado da LP principal (headline, benefits, pricing, FAQ)",
            content=content,
            status=ArtifactStatus.CREATED,
        )

    def _generate_outreach_templates(self) -> list[BuildArtifact]:
        """Gera templates de outreach WhatsApp e email."""
        prompt = f"""Gere templates de vendas para:

Produto: {self.strategy.project_name}
Proposta: {self.strategy.value_proposition}
Preço: R$ {self.strategy.ticket_medio_brl:,.0f}/mês

Retorne JSON:
{{
  "whatsapp_cold": "mensagem de 3 linhas para prospect frio no WhatsApp",
  "whatsapp_warm": "mensagem para contato quente (referência/ex-cliente)",
  "whatsapp_followup": "follow-up após demo",
  "email_subject": "assunto do email de prospecção",
  "email_body": "corpo do email (5-8 linhas, profissional e direto)"
}}"""

        try:
            data = call_llm_json(prompt, _BUILDER_SYSTEM, temperature=0.7)
        except Exception:
            data = self._default_outreach()

        artifacts = [
            BuildArtifact(
                artifact_type="outreach_whatsapp",
                name="WhatsApp Outreach Templates",
                description="3 templates: cold, warm, follow-up",
                content=json.dumps({
                    "cold": data.get("whatsapp_cold", ""),
                    "warm": data.get("whatsapp_warm", ""),
                    "followup": data.get("whatsapp_followup", ""),
                }, ensure_ascii=False, indent=2),
                status=ArtifactStatus.CREATED,
            ),
            BuildArtifact(
                artifact_type="email_template",
                name="Email Prospecção Template",
                description="Email de prospecção B2B com subject e body",
                content=json.dumps({
                    "subject": data.get("email_subject", ""),
                    "body": data.get("email_body", ""),
                }, ensure_ascii=False, indent=2),
                status=ArtifactStatus.CREATED,
            ),
        ]
        return artifacts

    def _generate_n8n_workflow(self) -> BuildArtifact:
        """Gera spec de workflow n8n para onboarding automatizado."""
        spec = {
            "name": "HYDRA Client Onboarding",
            "description": "Workflow de onboarding automático para novos clientes HYDRA",
            "trigger": "Webhook (formulário LP ou manual)",
            "nodes": [
                {"id": "1", "type": "webhook", "name": "New Client Trigger",
                 "config": "POST /hydra/onboard"},
                {"id": "2", "type": "supabase", "name": "Create Client Record",
                 "config": "INSERT hydra_clients"},
                {"id": "3", "type": "http_request", "name": "Verify Ads Access",
                 "config": "Check Meta/Google Ads API access"},
                {"id": "4", "type": "code", "name": "Generate Welcome Report",
                 "config": "Create first campaign audit report via Anthropic API"},
                {"id": "5", "type": "whatsapp", "name": "Send Welcome Message",
                 "config": "Evolution API → welcome + report link"},
                {"id": "6", "type": "telegram", "name": "Notify Founder",
                 "config": "Buzz Bot → new client onboarded"},
                {"id": "7", "type": "schedule", "name": "Schedule Daily Reports",
                 "config": "Cron: daily 10:00 UTC → campaign report"},
            ],
            "connections": "1→2→3→4→5→6, 2→7",
            "estimated_build_time": "2-3 horas",
        }
        return BuildArtifact(
            artifact_type="n8n_workflow_spec",
            name="HYDRA Onboarding Workflow",
            description="Spec completa do workflow n8n de onboarding de clientes",
            content=json.dumps(spec, ensure_ascii=False, indent=2),
            status=ArtifactStatus.CREATED,
        )

    def _generate_infra_checklist(self) -> list[InfraChecklistItem]:
        """Gera checklist de infraestrutura para lançamento."""
        return [
            InfraChecklistItem(
                step=1, action="Deploy landing page HYDRA no Vercel",
                tool="Vercel CLI", estimated_cost_brl=0, is_automated=True,
                notes="Next.js ou HTML estático, free tier"),
            InfraChecklistItem(
                step=2, action="Configurar domínio (opcional: hydra.adventurelabs.com.br)",
                tool="Registro.br / Cloudflare", estimated_cost_brl=40, is_automated=False,
                notes="Pode usar subdomínio gratuito"),
            InfraChecklistItem(
                step=3, action="Executar hydra_schema.sql no Supabase",
                tool="Supabase SQL Editor", estimated_cost_brl=0, is_automated=True,
                notes="6 tabelas com RLS, free tier"),
            InfraChecklistItem(
                step=4, action="Configurar .env.hydra com API keys reais",
                tool="Infisical", estimated_cost_brl=0, is_automated=False,
                notes="Copiar de .env.hydra.example"),
            InfraChecklistItem(
                step=5, action="Criar WhatsApp Business para HYDRA",
                tool="Evolution API", estimated_cost_brl=0, is_automated=False,
                notes="Usar instância existente da Adventure Labs"),
            InfraChecklistItem(
                step=6, action="Importar workflow de onboarding no n8n",
                tool="n8n", estimated_cost_brl=0, is_automated=True,
                notes="Baseado no spec gerado pelo Builder"),
            InfraChecklistItem(
                step=7, action="Configurar Metabase dashboard para clientes",
                tool="Metabase", estimated_cost_brl=0, is_automated=True,
                notes="Template de dashboard com métricas de campanha"),
            InfraChecklistItem(
                step=8, action="Testar pipeline completo (main_hydra.py --phase full)",
                tool="Python CLI", estimated_cost_brl=5, is_automated=True,
                notes="Validar todos os agentes em DRY_RUN primeiro"),
            InfraChecklistItem(
                step=9, action="Preparar lista de 50 prospects para outreach",
                tool="Manual + LinkedIn", estimated_cost_brl=0, is_automated=False,
                notes="Priorizar contatos quentes e referências"),
            InfraChecklistItem(
                step=10, action="Disparar primeiro lote de outreach (WhatsApp)",
                tool="Evolution API / Manual", estimated_cost_brl=0, is_automated=False,
                notes="Usar templates gerados pelo Builder"),
        ]

    def _generate_pivot_protocol(self) -> str:
        """Gera protocolo de pivô para 48h sem tração."""
        return """## Protocolo de Pivô HYDRA (48h)

### Gatilhos Automáticos:
1. **Zero leads em 48h** → Ativa pivô de oferta
2. **Taxa de resposta < 5%** em 100 mensagens → Ativa pivô de mensagem
3. **Zero demos agendadas em 72h** → Ativa pivô de nicho

### Ações de Pivô (em ordem):

**Nível 1 — Ajuste de Mensagem (0-24h sem tração):**
- Alterar headline e CTA da landing page
- Testar 3 variações de pitch no WhatsApp
- Mudar ângulo: de "economia" para "resultados" ou vice-versa

**Nível 2 — Pivô de Oferta (24-48h sem tração):**
- Reduzir preço para R$ 1.500/mês (oferta de lançamento)
- Adicionar trial gratuito de 7 dias
- Oferecer audit gratuita como lead magnet

**Nível 3 — Pivô de Nicho (48h+ sem tração):**
- Mudar segmento-alvo (ex: de clínicas para e-commerce)
- Reposicionar como "Relatórios de Campanha as a Service" (ticket menor, volume maior)
- Considerar modelo de infoproduto como ponte (report pago a R$ 97)

### Regras de Capital no Pivô:
- Cada pivô tem budget de R$ 50 para testar
- Se 3 pivôs falharem, PAUSAR e escalar para Founder
- Nunca investir em ads pagos antes de validar organicamente"""

    def _generate_deployment_guide(self) -> str:
        """Gera guia de deploy passo-a-passo."""
        return """## Guia de Deploy HYDRA

### Pré-requisitos:
1. Python 3.11+ instalado
2. pnpm (para projetos Next.js)
3. Acesso ao Supabase da Adventure Labs
4. Conta Vercel (free tier)

### Setup (15 minutos):
```bash
# 1. Instalar dependências
pip install -r project_hydra/requirements.hydra.txt

# 2. Configurar ambiente
cp project_hydra/.env.hydra.example project_hydra/.env.hydra
# Editar .env.hydra com API keys reais

# 3. Criar tabelas no Supabase
psql $DATABASE_URL -f project_hydra/sql/hydra_schema.sql

# 4. Testar em DRY_RUN
python project_hydra/main_hydra.py --phase full --dry-run

# 5. Executar com LLM real
python project_hydra/main_hydra.py --phase full
```

### Deploy da LP:
```bash
# Usar conteúdo de outputs/landing_page.json para criar LP
# Deploy via Vercel CLI ou GitHub push
```"""

    # ─── Defaults/Fallbacks ────────────────────────────────────────────────────

    def _default_lp(self) -> dict:
        return {
            "headline": "Seu Account Manager de IA por 60% Menos",
            "subheadline": "Gestão autônoma de Meta Ads + Google Ads com relatórios diários e otimização em tempo real",
            "hero_cta": "Agendar Demo Gratuita",
            "benefits": [
                "Relatórios diários automáticos de performance",
                "Otimização de campanhas 24/7 por IA",
                "60% mais barato que uma agência tradicional",
                "Atendimento via WhatsApp em tempo real",
            ],
            "social_proof": "Gerenciamos mais de R$ 500.000 em campanhas para empresas brasileiras",
            "pricing_tiers": [
                {"name": "Starter", "price": "R$ 2.500/mês",
                 "features": ["1 conta Meta Ads", "Relatórios semanais", "Suporte WhatsApp"]},
                {"name": "Pro", "price": "R$ 3.500/mês",
                 "features": ["Meta + Google Ads", "Relatórios diários", "Otimização automática", "Suporte prioritário"]},
                {"name": "Agency", "price": "R$ 5.000/mês",
                 "features": ["Multi-conta", "Dashboard em tempo real", "White-label", "API access", "Suporte dedicado"]},
            ],
            "faq": [
                {"q": "Como funciona a gestão por IA?", "a": "Nossos agentes analisam suas campanhas 24/7, otimizam lances, pausam anúncios de baixo desempenho e geram relatórios automáticos."},
                {"q": "Preciso dar acesso às minhas contas?", "a": "Sim, com permissões de leitura e edição. Seus dados são protegidos por LGPD."},
                {"q": "E se eu não gostar?", "a": "Cancele a qualquer momento. Sem multa, sem burocracia."},
            ],
            "final_cta": "Comece Agora — Primeira Semana Grátis",
        }

    def _default_outreach(self) -> dict:
        return {
            "whatsapp_cold": "Oi! Sou da HYDRA, uma solução de IA que gerencia Meta e Google Ads automaticamente. Empresas como a sua estão economizando 60% vs agências. Posso te mostrar em 15min?",
            "whatsapp_warm": "Oi [Nome]! Tudo bem? Lancei um serviço novo — gestão de tráfego pago por IA, R$ 2.500/mês (vs R$ 5-8k de agência). Lembrei de você. Quer ver uma demo rápida?",
            "whatsapp_followup": "Oi [Nome]! Seguindo nossa conversa — preparei um relatório gratuito da sua conta de ads mostrando onde otimizar. Posso enviar?",
            "email_subject": "[Nome], sua gestão de ads pode custar 60% menos",
            "email_body": "Olá [Nome],\n\nSou da HYDRA, um serviço de gestão de tráfego pago operado por IA.\n\nNossos agentes gerenciam Meta Ads e Google Ads 24/7 — otimizando campanhas, gerando relatórios diários e alertando sobre oportunidades.\n\nO resultado? Qualidade de agência a 60% do custo.\n\nSe a [Empresa] investe em tráfego pago, posso te mostrar em 15 minutos como funciona.\n\nPosso agendar uma demo rápida?\n\nAbraço,\n[Nome]\nHYDRA | Adventure Labs",
        }

    def _fallback_report(self) -> BuildReport:
        """Report com defaults quando LLM falha."""
        artifacts = [
            BuildArtifact(
                artifact_type="landing_page", name="HYDRA LP (fallback)",
                description="Conteúdo default", content=json.dumps(self._default_lp(), ensure_ascii=False, indent=2),
                status=ArtifactStatus.CREATED),
        ]
        checklist = self._generate_infra_checklist()
        return BuildReport(
            session_id=self.session_id, strategy=self.strategy,
            artifacts=artifacts, infra_checklist=checklist,
            deployment_guide=self._generate_deployment_guide(),
            pivot_protocol=self._generate_pivot_protocol(),
            total_estimated_cost_brl=sum(i.estimated_cost_brl for i in checklist),
            automated_steps_pct=60.0)
