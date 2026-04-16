"""
HYDRA Logger — Todos os logs de execução vão para project_hydra/logs/.
Isolado dos logs da stack Adventure Labs principal.
"""

from __future__ import annotations

import logging
import sys
from datetime import datetime
from pathlib import Path
from logging.handlers import RotatingFileHandler


_LOGS_DIR = Path(__file__).parent.parent / "logs"
_LOGS_DIR.mkdir(parents=True, exist_ok=True)


def get_logger(name: str, level: int = logging.INFO) -> logging.Logger:
    """
    Retorna um logger configurado para o componente HYDRA especificado.
    Escreve em project_hydra/logs/hydra_<name>.log e no console.
    """
    logger = logging.getLogger(f"hydra.{name}")
    if logger.handlers:
        return logger

    logger.setLevel(level)

    formatter = logging.Formatter(
        fmt="%(asctime)s [%(name)s] %(levelname)s — %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S"
    )

    # Handler de arquivo (rotativo, 5MB, 3 backups)
    log_file = _LOGS_DIR / f"hydra_{name}.log"
    file_handler = RotatingFileHandler(
        log_file,
        maxBytes=5 * 1024 * 1024,
        backupCount=3,
        encoding="utf-8"
    )
    file_handler.setFormatter(formatter)
    file_handler.setLevel(level)

    # Handler de console
    console_handler = logging.StreamHandler(sys.stdout)
    console_handler.setFormatter(formatter)
    console_handler.setLevel(level)

    logger.addHandler(file_handler)
    logger.addHandler(console_handler)
    logger.propagate = False

    return logger


# Log de execução centralizado (hydra_session.log)
session_logger = get_logger("session")


def log_phase_start(phase: str, session_id: str) -> None:
    session_logger.info(f"=== PHASE START: {phase.upper()} | Session: {session_id} ===")


def log_phase_end(phase: str, session_id: str, success: bool = True) -> None:
    status = "SUCCESS" if success else "FAILED"
    session_logger.info(f"=== PHASE END: {phase.upper()} [{status}] | Session: {session_id} ===")


def log_capital_event(action: str, amount_brl: float, remaining_brl: float) -> None:
    session_logger.info(
        f"[CAPITAL] {action}: R$ {amount_brl:.2f} gasto | "
        f"Saldo restante: R$ {remaining_brl:.2f}"
    )


def log_audit_event(action: str, verdict: str, risk_score: float) -> None:
    level = logging.WARNING if verdict != "approved" else logging.INFO
    session_logger.log(
        level,
        f"[AUDIT] {action} → {verdict.upper()} (risco: {risk_score:.1f}/10)"
    )
