"""
HYDRA Base Agent — Classe base para todos os agentes do sistema.
Define interface, logging, rastreamento de custo e persistência de estado.
"""

from __future__ import annotations

from abc import ABC, abstractmethod
from datetime import datetime
from typing import Any, Optional

from project_hydra.core import config, supabase_client
from project_hydra.core.budget_tracker import get_tracker
from project_hydra.core.logger import get_logger, log_phase_start, log_phase_end
from project_hydra.core.models import HydraState


class BaseAgent(ABC):
    """
    Classe base para todos os agentes HYDRA.
    Cada agente implementa run() com sua lógica específica.
    """

    agent_name: str = "base"
    agent_role: str = "Base"
    agent_emoji: str = "🤖"

    def __init__(self, state: HydraState):
        self.state = state
        self.session_id = state.session_id
        self.logger = get_logger(self.agent_name)
        self.tracker = get_tracker()
        self._started_at: Optional[datetime] = None

    def _start(self) -> None:
        self._started_at = datetime.utcnow()
        log_phase_start(self.agent_name, self.session_id)
        self.logger.info(
            f"{self.agent_emoji} {self.agent_role} iniciando | Session: {self.session_id}"
        )
        self._persist_phase(f"{self.agent_name}_started")

    def _end(self, success: bool = True) -> None:
        elapsed = (datetime.utcnow() - self._started_at).total_seconds() if self._started_at else 0
        log_phase_end(self.agent_name, self.session_id, success)
        status = "✓ concluído" if success else "✗ falhou"
        self.logger.info(
            f"{self.agent_emoji} {self.agent_role} {status} em {elapsed:.1f}s"
        )
        self._persist_phase(f"{self.agent_name}_{'complete' if success else 'failed'}")

    def _persist_phase(self, phase: str) -> None:
        """Salva o estado atual no Supabase (se disponível)."""
        if config.USE_SUPABASE:
            try:
                supabase_client.save_session_state(
                    self.session_id,
                    phase,
                    {"agent": self.agent_name, "timestamp": datetime.utcnow().isoformat()},
                )
            except Exception as e:
                self.logger.debug(f"Falha ao persistir fase (não crítico): {e}")

    def _estimate_and_check_budget(self, estimated_cost_brl: float, description: str) -> bool:
        """
        Verifica se há orçamento antes de executar ação custosa.
        Retorna False e loga warning se não houver.
        """
        if not self.tracker.can_spend(estimated_cost_brl):
            self.logger.warning(
                f"Orçamento insuficiente para {description}: "
                f"Necessário R$ {estimated_cost_brl:.2f}, "
                f"Disponível R$ {self.tracker.remaining_brl:.2f}"
            )
            return False
        return True

    def _record_spend(
        self,
        amount_brl: float,
        description: str,
        category: str = "api",
    ) -> None:
        self.tracker.record_spend(
            amount_brl=amount_brl,
            description=description,
            category=category,
            agent=self.agent_name,
        )

    @abstractmethod
    def run(self) -> Any:
        """Executa a lógica principal do agente. Implementado por cada subclasse."""
        ...

    def __repr__(self) -> str:
        return f"<{self.__class__.__name__} session={self.session_id}>"
