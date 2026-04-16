"""
HYDRA Core Models — Pydantic schemas para todo o sistema.
Isolado em project_hydra/. Não importa ou modifica modelos da stack Adventure.
"""

from __future__ import annotations

from datetime import datetime
from enum import Enum
from typing import Any, Optional
from pydantic import BaseModel, Field
import uuid


# ─── Enums ────────────────────────────────────────────────────────────────────

class BusinessModelId(str, Enum):
    MICRO_SAAS = "micro_saas"
    INFOPRODUTOS = "infoprodutos"
    B2B_AGENTS = "b2b_agents"
    COMMUNITY = "community"
    HYBRID_AAAS = "hybrid_aaas"


class HydraPhase(str, Enum):
    INIT = "init"
    SCOUTING = "scouting"
    STRATEGIZING = "strategizing"
    BUILDING = "building"
    AUDITING = "auditing"
    COMPLETE = "complete"
    PIVOT = "pivot"
    ABORTED = "aborted"


class RiskLevel(str, Enum):
    LOW = "low"
    MEDIUM = "medium"
    HIGH = "high"
    CRITICAL = "critical"


class AuditVerdict(str, Enum):
    APPROVED = "approved"
    APPROVED_WITH_CONDITIONS = "approved_with_conditions"
    VETOED = "vetoed"


class ArtifactStatus(str, Enum):
    PENDING = "pending"
    CREATED = "created"
    DEPLOYED = "deployed"


# ─── Scout Models ─────────────────────────────────────────────────────────────

class MarketSignal(BaseModel):
    """Sinal de mercado coletado pelo Scout Agent."""
    id: str = Field(default_factory=lambda: str(uuid.uuid4())[:8])
    source: str  # "braindump", "supabase_ideias", "google_trends", "manual"
    topic: str
    signal_type: str  # "pain_point", "trend", "opportunity", "competitor", "validation"
    strength: float = Field(ge=0.0, le=1.0)
    evidence: str
    tags: list[str] = []
    captured_at: datetime = Field(default_factory=datetime.utcnow)

    class Config:
        json_encoders = {datetime: lambda v: v.isoformat()}


class ScoutReport(BaseModel):
    """Relatório completo do Scout Agent."""
    session_id: str
    signals: list[MarketSignal]
    top_opportunities: list[str]
    top_pain_points: list[str]
    market_context: str
    recommended_niches: list[str]
    data_sources_used: list[str]
    generated_at: datetime = Field(default_factory=datetime.utcnow)


# ─── Strategist Models ────────────────────────────────────────────────────────

class CriteriaScores(BaseModel):
    """Scores por critério de decisão (escala 1-10)."""
    time_to_revenue: float = Field(ge=1.0, le=10.0)
    launch_cost: float = Field(ge=1.0, le=10.0)
    automation_potential: float = Field(ge=1.0, le=10.0)
    scalability: float = Field(ge=1.0, le=10.0)
    stack_alignment: float = Field(ge=1.0, le=10.0)


class BusinessModelScore(BaseModel):
    """Score calculado para um modelo de negócio."""
    model_id: str
    model_name: str
    scores: CriteriaScores
    weighted_score: float = Field(ge=0.0, le=10.0)
    launch_cost_brl: float
    days_to_first_revenue: int
    monthly_revenue_potential_day90_brl: float
    risk_level: str
    stack_fit: str
    rank: int = 0


class PhasePlan(BaseModel):
    """Plano de uma fase dos 90 dias."""
    phase_name: str
    duration: str
    goal: str
    actions: list[str]
    target_mrr_brl: float
    key_metrics: list[str]
    dependencies: list[str] = []


class StrategyReport(BaseModel):
    """Relatório estratégico completo do Strategist Agent."""
    session_id: str
    winner: BusinessModelScore
    all_scores: list[BusinessModelScore]
    market_signals: list[MarketSignal]
    project_name: str
    central_thesis: str
    value_proposition: str
    target_customer: str
    revenue_path_7_days: str
    plan_90_days: list[PhasePlan]
    redlines: list[str]
    pivot_triggers: list[str]
    estimated_launch_cost_brl: float
    client_target_count_90d: int
    ticket_medio_brl: float
    generated_at: datetime = Field(default_factory=datetime.utcnow)


# ─── Builder Models ───────────────────────────────────────────────────────────

class BuildArtifact(BaseModel):
    """Artefato gerado pelo Builder Agent."""
    artifact_type: str  # "sql_schema", "landing_page", "email_template", "outreach_whatsapp", "n8n_workflow_spec", "checklist"
    name: str
    description: str
    content: str
    file_path: Optional[str] = None
    status: ArtifactStatus = ArtifactStatus.CREATED


class InfraChecklistItem(BaseModel):
    """Item de checklist de infraestrutura."""
    step: int
    action: str
    tool: str
    estimated_cost_brl: float = 0.0
    is_automated: bool
    status: str = "pending"
    notes: str = ""


class BuildReport(BaseModel):
    """Relatório completo do Builder Agent."""
    session_id: str
    strategy: StrategyReport
    artifacts: list[BuildArtifact]
    infra_checklist: list[InfraChecklistItem]
    deployment_guide: str
    pivot_protocol: str
    total_estimated_cost_brl: float
    automated_steps_pct: float
    generated_at: datetime = Field(default_factory=datetime.utcnow)


# ─── Auditor Models ───────────────────────────────────────────────────────────

class LGPDCheck(BaseModel):
    """Resultado da verificação LGPD."""
    compliant: bool
    data_types_detected: list[str]
    consent_required: bool
    dpo_notification_required: bool
    notes: str


class FinancialRiskCheck(BaseModel):
    """Avaliação de risco financeiro."""
    risk_level: RiskLevel
    capital_at_risk_brl: float
    capital_remaining_after_brl: float
    runway_days: int
    notes: str


class EthicsCheck(BaseModel):
    """Verificação ética."""
    status: str  # "clean", "caution", "blocked"
    conar_compliant: bool
    misleading_claims: list[str]
    blocked_patterns: list[str]
    notes: str


class AuditResult(BaseModel):
    """Resultado completo de auditoria pelo Auditor Agent."""
    audit_id: str = Field(default_factory=lambda: str(uuid.uuid4())[:8])
    action_type: str
    verdict: AuditVerdict
    risk_score: float = Field(ge=0.0, le=10.0)
    lgpd_check: LGPDCheck
    financial_check: FinancialRiskCheck
    ethics_check: EthicsCheck
    conditions: list[str] = []
    reasoning: str
    auditor_notes: str
    audited_at: datetime = Field(default_factory=datetime.utcnow)


# ─── Hydra State ──────────────────────────────────────────────────────────────

class TractionSignal(BaseModel):
    """Sinal de tração (validação de mercado)."""
    signal_type: str  # "click", "lead", "demo_request", "sale", "referral"
    count: int
    source: str
    captured_at: datetime = Field(default_factory=datetime.utcnow)


class HydraState(BaseModel):
    """Estado global do sistema HYDRA em uma execução."""
    session_id: str = Field(default_factory=lambda: f"hydra_{str(uuid.uuid4())[:8]}")
    phase: HydraPhase = HydraPhase.INIT
    scout_report: Optional[ScoutReport] = None
    strategy_report: Optional[StrategyReport] = None
    build_report: Optional[BuildReport] = None
    audit_results: list[AuditResult] = []
    capital_budget_brl: float = 200.0
    capital_spent_brl: float = 0.0
    traction_signals: list[TractionSignal] = []
    pivot_count: int = 0
    errors: list[str] = []
    started_at: datetime = Field(default_factory=datetime.utcnow)
    completed_at: Optional[datetime] = None

    @property
    def capital_remaining_brl(self) -> float:
        return self.capital_budget_brl - self.capital_spent_brl

    @property
    def is_over_budget(self) -> bool:
        return self.capital_spent_brl > self.capital_budget_brl

    @property
    def traction_count(self) -> int:
        return sum(s.count for s in self.traction_signals)

    @property
    def needs_pivot(self) -> bool:
        # Definido em: sem nenhum sinal de tração nas primeiras 48h
        if not self.traction_signals:
            return False
        return self.traction_count == 0

    def log_spend(self, amount_brl: float, description: str) -> None:
        self.capital_spent_brl += amount_brl

    class Config:
        json_encoders = {datetime: lambda v: v.isoformat()}


# ─── Notification Models ──────────────────────────────────────────────────────

class TelegramNotification(BaseModel):
    """Notificação Telegram para o Founder."""
    chat_id: str
    message: str
    parse_mode: str = "HTML"
    urgency: str = "normal"  # "normal", "alert", "critical"
