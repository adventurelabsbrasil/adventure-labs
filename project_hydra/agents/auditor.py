"""
HYDRA Auditor Agent — O Guardião.
Verifica LGPD, risco financeiro, ética (CONAR/CDC) e emite veredicto.
Chamado múltiplas vezes no pipeline (strategy review + build review).
"""

from __future__ import annotations

import json
import re
from typing import Any

from project_hydra.agents.base import BaseAgent
from project_hydra.core import config
from project_hydra.core.llm_client import call_llm_json
from project_hydra.core.logger import log_audit_event
from project_hydra.core.models import (
    AuditResult,
    AuditVerdict,
    EthicsCheck,
    FinancialRiskCheck,
    HydraState,
    LGPDCheck,
    RiskLevel,
)

_AUDITOR_SYSTEM = """Você é o Auditor Agent do HYDRA — o Guardião que protege o Founder.

Sua missão: revisar TODA ação proposta pelos outros agentes e vetar qualquer coisa que:
1. Viole a LGPD (Lei 13.709/2018) — dados pessoais sem base legal
2. Viole o CONAR — promessas de resultado garantido em publicidade
3. Viole o CDC — práticas comerciais abusivas ou enganosas
4. Coloque em risco o capital semente (R$ 1.000, MVP máx R$ 200)
5. Exija mais de 1% do tempo do Founder
6. Tenha risco reputacional para a Adventure Labs

Regras de decisão:
- Se QUALQUER violação grave → VETOED (bloqueio total)
- Se riscos menores → APPROVED_WITH_CONDITIONS (listar condições)
- Se tudo limpo → APPROVED
- Na dúvida, seja conservador — é melhor vetar e revisar do que aprovar e quebrar

Responda sempre em JSON conforme o schema fornecido."""

# Padrões proibidos (CONAR/CDC)
_FORBIDDEN_PATTERNS = [
    r"garant[ioae].*resultado",
    r"resultado.*garant",
    r"100%\s*(de\s*)?(certeza|sucesso|garantia)",
    r"sem\s*risco",
    r"retorno\s*garantido",
    r"lucro\s*(certo|garantido)",
    r"fiqu[eao]\s*ric[oa]",
    r"dinheiro\s*fácil",
    r"ganhe\s*dinheiro\s*dormindo",
]

# Indicadores de dados pessoais (LGPD)
_PII_PATTERNS = [
    r"\bCPF\b", r"\bCNPJ\b", r"\bRG\b",
    r"email.*@", r"telefone", r"celular",
    r"endereço", r"endereco", r"CEP\b",
    r"dados?\s*pessoais?", r"nome\s*completo",
    r"data\s*de?\s*nascimento", r"gênero", r"genero",
    r"geolocaliza", r"IP\b.*usu[áa]rio",
]


class AuditorAgent(BaseAgent):
    """The Auditor — Guardrail agent que protege capital, ética e legalidade."""

    agent_name = "auditor"
    agent_role = "Auditor (O Guardião)"
    agent_emoji = "🛡️"

    def __init__(self, state: HydraState, action_type: str, content_to_audit: dict):
        super().__init__(state)
        self.action_type = action_type
        self.content = content_to_audit
        self._content_str = json.dumps(content_to_audit, default=str, ensure_ascii=False)

    def run(self) -> AuditResult:
        self._start()

        try:
            # 1. Check LGPD
            lgpd = self._check_lgpd()
            self.logger.info(f"LGPD: {'compliant' if lgpd.compliant else 'NON-COMPLIANT'}")

            # 2. Check financial risk
            financial = self._check_financial_risk()
            self.logger.info(f"Financial risk: {financial.risk_level.value}")

            # 3. Check ethics (CONAR/CDC)
            ethics = self._check_ethics()
            self.logger.info(f"Ethics: {ethics.status}")

            # 4. Determine verdict
            verdict, risk_score, conditions, reasoning = self._determine_verdict(
                lgpd, financial, ethics
            )

            result = AuditResult(
                action_type=self.action_type,
                verdict=verdict,
                risk_score=risk_score,
                lgpd_check=lgpd,
                financial_check=financial,
                ethics_check=ethics,
                conditions=conditions,
                reasoning=reasoning,
                auditor_notes=f"Auditoria de {self.action_type} concluída.",
            )

            # Persist and notify
            self.state.audit_results.append(result)
            log_audit_event(self.action_type, verdict.value, risk_score)

            from project_hydra.core import telegram, supabase_client
            telegram.notify_audit_result(self.action_type, verdict.value, risk_score)
            supabase_client.save_audit_result(
                self.session_id, result.model_dump(mode="json")
            )

            self._record_spend(0.03, f"Auditor {self.action_type}", "api")
            self._end(success=True)
            return result

        except Exception as e:
            self.logger.error(f"Auditor falhou: {e}", exc_info=True)
            self._end(success=False)
            return self._fallback_audit()

    # ─── LGPD Check ────────────────────────────────────────────────────────────

    def _check_lgpd(self) -> LGPDCheck:
        """Verifica conformidade com LGPD (Lei 13.709/2018)."""
        detected_types: list[str] = []
        for pattern in _PII_PATTERNS:
            if re.search(pattern, self._content_str, re.IGNORECASE):
                detected_types.append(pattern.replace(r"\b", "").replace("\\b", ""))

        has_pii = len(detected_types) > 0
        consent_required = has_pii
        dpo_required = len(detected_types) >= 3

        notes = "Nenhum dado pessoal detectado no conteúdo."
        if has_pii:
            notes = (
                f"Detectados {len(detected_types)} tipo(s) de dado pessoal. "
                f"Base legal LGPD obrigatória antes de processar. "
                f"Padrões: {', '.join(detected_types[:5])}"
            )

        return LGPDCheck(
            compliant=not has_pii or consent_required,
            data_types_detected=detected_types,
            consent_required=consent_required,
            dpo_notification_required=dpo_required,
            notes=notes,
        )

    # ─── Financial Risk Check ──────────────────────────────────────────────────

    def _check_financial_risk(self) -> FinancialRiskCheck:
        """Avalia risco financeiro baseado no estado do capital."""
        remaining = self.state.capital_remaining_brl
        spent = self.state.capital_spent_brl

        # Estima custo da ação sendo auditada
        estimated_action_cost = self._estimate_action_cost()
        remaining_after = remaining - estimated_action_cost

        if remaining_after < 50:
            risk = RiskLevel.CRITICAL
        elif remaining_after < 100:
            risk = RiskLevel.HIGH
        elif remaining_after < 150:
            risk = RiskLevel.MEDIUM
        else:
            risk = RiskLevel.LOW

        # Runway em dias (estimativa de R$ 10/dia em API costs)
        daily_burn = 10.0
        runway = int(remaining_after / daily_burn) if daily_burn > 0 else 999

        notes = (
            f"Capital restante: R$ {remaining:.2f}. "
            f"Custo estimado desta ação: R$ {estimated_action_cost:.2f}. "
            f"Saldo após ação: R$ {remaining_after:.2f}. "
            f"Runway estimado: {runway} dias."
        )

        return FinancialRiskCheck(
            risk_level=risk,
            capital_at_risk_brl=estimated_action_cost,
            capital_remaining_after_brl=max(0, remaining_after),
            runway_days=runway,
            notes=notes,
        )

    def _estimate_action_cost(self) -> float:
        """Estima custo da ação baseado no tipo."""
        cost_map = {
            "strategy_review": 0.10,
            "build_review": 0.15,
            "outreach_campaign": 5.00,
            "ads_spend": 50.00,
            "infrastructure": 10.00,
        }
        return cost_map.get(self.action_type, 1.00)

    # ─── Ethics Check ──────────────────────────────────────────────────────────

    def _check_ethics(self) -> EthicsCheck:
        """Verifica conformidade ética (CONAR, CDC)."""
        misleading: list[str] = []
        blocked: list[str] = []

        # Scan forbidden patterns
        for pattern in _FORBIDDEN_PATTERNS:
            matches = re.findall(pattern, self._content_str, re.IGNORECASE)
            if matches:
                blocked.append(f"Padrão proibido encontrado: '{matches[0]}'")

        # Check for superlatives without evidence
        superlatives = re.findall(
            r"(melhor|maior|único|primeiro|líder|número\s*1)",
            self._content_str,
            re.IGNORECASE,
        )
        if superlatives:
            misleading.append(
                f"Superlativos sem evidência: {', '.join(set(s.lower() for s in superlatives[:3]))}"
            )

        conar_compliant = len(blocked) == 0
        if blocked:
            status = "blocked"
        elif misleading:
            status = "caution"
        else:
            status = "clean"

        notes = "Conteúdo ético e em conformidade com CONAR/CDC."
        if blocked:
            notes = f"BLOQUEADO — {len(blocked)} violação(ões) de CONAR/CDC detectadas."
        elif misleading:
            notes = f"CAUTELA — {len(misleading)} ponto(s) de atenção ética."

        return EthicsCheck(
            status=status,
            conar_compliant=conar_compliant,
            misleading_claims=misleading,
            blocked_patterns=blocked,
            notes=notes,
        )

    # ─── Verdict Determination ─────────────────────────────────────────────────

    def _determine_verdict(
        self,
        lgpd: LGPDCheck,
        financial: FinancialRiskCheck,
        ethics: EthicsCheck,
    ) -> tuple[AuditVerdict, float, list[str], str]:
        """Determina veredicto final baseado nos 3 checks."""
        conditions: list[str] = []
        risk_score = 0.0

        # Score financial risk
        risk_values = {
            RiskLevel.LOW: 1.0,
            RiskLevel.MEDIUM: 4.0,
            RiskLevel.HIGH: 7.0,
            RiskLevel.CRITICAL: 10.0,
        }
        risk_score += risk_values.get(financial.risk_level, 5.0) * 0.4

        # Score LGPD
        if not lgpd.compliant:
            risk_score += 4.0
        elif lgpd.consent_required:
            risk_score += 1.5
            conditions.append("Implementar mecanismo de consentimento LGPD antes de processar dados pessoais")

        # Score ethics
        if ethics.status == "blocked":
            risk_score += 4.0
        elif ethics.status == "caution":
            risk_score += 1.5
            conditions.extend([f"Revisar: {c}" for c in ethics.misleading_claims])

        # Determine verdict
        if ethics.status == "blocked" or financial.risk_level == RiskLevel.CRITICAL:
            verdict = AuditVerdict.VETOED
            reasoning = (
                f"VETADO — Motivo: "
                f"{'Violação ética (CONAR/CDC) detectada. ' if ethics.status == 'blocked' else ''}"
                f"{'Risco financeiro CRÍTICO (capital insuficiente). ' if financial.risk_level == RiskLevel.CRITICAL else ''}"
                f"Ação bloqueada até resolução."
            )
        elif conditions:
            verdict = AuditVerdict.APPROVED_WITH_CONDITIONS
            reasoning = (
                f"Aprovado com {len(conditions)} condição(ões). "
                f"Risco geral: {risk_score:.1f}/10. "
                f"Condições devem ser atendidas antes da execução."
            )
        else:
            verdict = AuditVerdict.APPROVED
            reasoning = (
                f"Aprovado sem restrições. LGPD OK, risco financeiro {financial.risk_level.value}, "
                f"ética limpa. Score de risco: {risk_score:.1f}/10."
            )

        return verdict, round(min(risk_score, 10.0), 1), conditions, reasoning

    # ─── Fallback ──────────────────────────────────────────────────────────────

    def _fallback_audit(self) -> AuditResult:
        """Audit conservador quando o sistema falha."""
        return AuditResult(
            action_type=self.action_type,
            verdict=AuditVerdict.APPROVED_WITH_CONDITIONS,
            risk_score=5.0,
            lgpd_check=LGPDCheck(
                compliant=True, data_types_detected=[], consent_required=False,
                dpo_notification_required=False, notes="Check automático indisponível — revisão manual recomendada."),
            financial_check=FinancialRiskCheck(
                risk_level=RiskLevel.MEDIUM, capital_at_risk_brl=0,
                capital_remaining_after_brl=self.state.capital_remaining_brl,
                runway_days=20, notes="Estimativa conservadora."),
            ethics_check=EthicsCheck(
                status="caution", conar_compliant=True, misleading_claims=[],
                blocked_patterns=[], notes="Check automático indisponível — revisão manual recomendada."),
            conditions=["Revisão manual recomendada — auditoria automática falhou"],
            reasoning="Fallback conservador: aprovado com condição de revisão manual.",
            auditor_notes="Auditor Agent falhou — resultado conservador emitido.",
        )
