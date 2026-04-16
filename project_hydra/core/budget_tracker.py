"""
HYDRA Budget Tracker — Monitora e protege o capital semente.
Dispara alertas e bloqueia ações quando limites são atingidos.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from datetime import datetime
from typing import Optional

from project_hydra.core import config
from project_hydra.core.logger import get_logger, log_capital_event

logger = get_logger("budget")


@dataclass
class SpendRecord:
    description: str
    amount_brl: float
    category: str  # "api", "infra", "ads", "tools", "other"
    timestamp: datetime = field(default_factory=datetime.utcnow)
    agent: str = "unknown"


class BudgetTracker:
    """
    Rastreia gastos do HYDRA contra o orçamento do MVP (R$ 200).
    Thread-safe para uso em múltiplos agentes.
    """

    def __init__(
        self,
        budget_brl: float = config.MVP_BUDGET_BRL,
        alert_threshold_pct: float = config.BUDGET_ALERT_PCT,
    ):
        self.budget_brl = budget_brl
        self.alert_threshold_pct = alert_threshold_pct
        self._spent: float = 0.0
        self._records: list[SpendRecord] = []
        self._alerts_sent: set[str] = set()

    @property
    def spent_brl(self) -> float:
        return self._spent

    @property
    def remaining_brl(self) -> float:
        return max(0.0, self.budget_brl - self._spent)

    @property
    def spent_pct(self) -> float:
        return (self._spent / self.budget_brl) * 100 if self.budget_brl > 0 else 0.0

    @property
    def is_over_budget(self) -> bool:
        return self._spent >= self.budget_brl

    @property
    def is_alert_threshold(self) -> bool:
        return self.spent_pct >= (self.alert_threshold_pct * 100)

    def record_spend(
        self,
        amount_brl: float,
        description: str,
        category: str = "other",
        agent: str = "unknown",
    ) -> None:
        """Registra um gasto e dispara alertas se necessário."""
        if amount_brl <= 0:
            return

        record = SpendRecord(
            description=description,
            amount_brl=amount_brl,
            category=category,
            agent=agent,
        )
        self._records.append(record)
        self._spent += amount_brl

        log_capital_event(description, amount_brl, self.remaining_brl)
        self._check_alerts()

    def _check_alerts(self) -> None:
        """Dispara alertas Telegram se necessário (sem re-disparar o mesmo alerta)."""
        from project_hydra.core import telegram

        if self.is_over_budget and "over_budget" not in self._alerts_sent:
            self._alerts_sent.add("over_budget")
            logger.error(
                f"CAPITAL ESGOTADO! Gasto: R$ {self._spent:.2f} / Orçamento: R$ {self.budget_brl:.2f}"
            )
            telegram.notify_capital_alert(self._spent, self.budget_brl)

        elif self.is_alert_threshold and "threshold" not in self._alerts_sent:
            self._alerts_sent.add("threshold")
            logger.warning(
                f"Alerta de capital: {self.spent_pct:.0f}% do orçamento gasto "
                f"(R$ {self._spent:.2f} / R$ {self.budget_brl:.2f})"
            )
            telegram.notify_capital_alert(self._spent, self.budget_brl)

    def can_spend(self, amount_brl: float) -> bool:
        """Retorna True se há orçamento para este gasto."""
        return (self._spent + amount_brl) <= self.budget_brl

    def get_summary(self) -> dict:
        """Retorna resumo dos gastos por categoria."""
        by_category: dict[str, float] = {}
        for record in self._records:
            by_category[record.category] = by_category.get(record.category, 0) + record.amount_brl

        return {
            "budget_brl": self.budget_brl,
            "spent_brl": round(self._spent, 2),
            "remaining_brl": round(self.remaining_brl, 2),
            "spent_pct": round(self.spent_pct, 1),
            "is_over_budget": self.is_over_budget,
            "by_category": {k: round(v, 2) for k, v in by_category.items()},
            "records_count": len(self._records),
        }

    def estimate_api_cost(self, tokens: int, model: str = "claude-sonnet-4-6") -> float:
        """Estima custo de uma chamada LLM em BRL (aprox. USD × 5)."""
        usd_per_million = {
            "claude-sonnet-4-6": 3.0,
            "claude-haiku-4-5-20251001": 0.25,
        }.get(model, 3.0)
        usd = (tokens / 1_000_000) * usd_per_million
        return round(usd * 5.0, 4)  # conversão aproximada USD→BRL

    def get_runway_days(self, daily_burn_brl: float) -> int:
        """Calcula quantos dias de capital restante com taxa de queima dada."""
        if daily_burn_brl <= 0:
            return 999
        return int(self.remaining_brl / daily_burn_brl)


# Singleton global do tracker
_global_tracker: Optional[BudgetTracker] = None


def get_tracker() -> BudgetTracker:
    global _global_tracker
    if _global_tracker is None:
        _global_tracker = BudgetTracker()
    return _global_tracker
