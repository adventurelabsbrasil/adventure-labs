"""
HYDRA Supabase Client — Wrapper com prefixo hydra_ obrigatório.
Nunca acessa tabelas sem o prefixo para garantir isolamento de estado.
"""

from __future__ import annotations

from typing import Any, Optional

try:
    from supabase import create_client, Client
    HAS_SUPABASE = True
except ImportError:
    HAS_SUPABASE = False

from project_hydra.core import config
from project_hydra.core.logger import get_logger

logger = get_logger("supabase")

_client: Optional[Any] = None


def get_client() -> Optional[Any]:
    """Retorna instância do cliente Supabase (singleton)."""
    global _client
    if not config.USE_SUPABASE:
        return None
    if not HAS_SUPABASE:
        logger.warning("supabase-py não instalado. Execute: pip install supabase")
        return None
    if _client is None:
        key = config.SUPABASE_SERVICE_KEY or config.SUPABASE_KEY
        _client = create_client(config.SUPABASE_URL, key)
        logger.info(f"Supabase conectado: {config.SUPABASE_URL}")
    return _client


def _enforce_prefix(table: str) -> str:
    """Garante que todas as tabelas HYDRA usam o prefixo hydra_."""
    if not table.startswith(config.HYDRA_DB_PREFIX):
        raise ValueError(
            f"[HYDRA] Violação de isolamento: tabela '{table}' deve começar com '{config.HYDRA_DB_PREFIX}'. "
            f"Use '{config.HYDRA_DB_PREFIX}{table}' em vez disso."
        )
    return table


def insert(table: str, data: dict | list[dict]) -> Optional[dict]:
    """Insere registro(s) em uma tabela HYDRA."""
    table = _enforce_prefix(table)
    client = get_client()
    if not client:
        logger.debug(f"[MOCK] INSERT {table}: {str(data)[:100]}")
        return None
    result = client.table(table).insert(data).execute()
    logger.debug(f"INSERT {table} → {len(result.data)} registro(s)")
    return result.data


def upsert(table: str, data: dict | list[dict], on_conflict: str = "id") -> Optional[dict]:
    """Upsert em tabela HYDRA."""
    table = _enforce_prefix(table)
    client = get_client()
    if not client:
        logger.debug(f"[MOCK] UPSERT {table}")
        return None
    result = client.table(table).upsert(data, on_conflict=on_conflict).execute()
    return result.data


def select(
    table: str,
    columns: str = "*",
    filters: Optional[dict] = None,
    limit: int = 100,
    order_by: Optional[str] = None,
) -> list[dict]:
    """Seleciona registros de uma tabela HYDRA."""
    table = _enforce_prefix(table)
    client = get_client()
    if not client:
        logger.debug(f"[MOCK] SELECT {table}")
        return []

    query = client.table(table).select(columns)
    if filters:
        for key, value in filters.items():
            query = query.eq(key, value)
    if order_by:
        query = query.order(order_by, desc=True)
    query = query.limit(limit)

    result = query.execute()
    return result.data or []


def select_adventure_read_only(
    table: str,
    columns: str = "*",
    filters: Optional[dict] = None,
    limit: int = 50,
) -> list[dict]:
    """
    Lê tabelas da stack Adventure Labs (adv_*) em modo READ-ONLY.
    Usado pelo Scout para coletar ideias do adv_ideias e adv_csuite_memory.
    NUNCA escreve nas tabelas adv_.
    """
    if table.startswith(config.HYDRA_DB_PREFIX):
        raise ValueError(f"Use select() para tabelas hydra_. Esta função é somente para adv_*.")

    client = get_client()
    if not client:
        logger.debug(f"[MOCK] READ-ONLY SELECT {table}")
        return []

    query = client.table(table).select(columns)
    if filters:
        for key, value in filters.items():
            query = query.eq(key, value)
    query = query.limit(limit)

    result = query.execute()
    logger.debug(f"[READ-ONLY] {table} → {len(result.data or [])} registros")
    return result.data or []


def save_session_state(session_id: str, phase: str, data: dict) -> None:
    """Persiste o estado da sessão HYDRA no Supabase."""
    upsert(
        "hydra_sessions",
        {
            "session_id": session_id,
            "phase": phase,
            "data": data,
            "updated_at": "now()",
        },
        on_conflict="session_id",
    )


def save_strategy_report(session_id: str, report_data: dict) -> None:
    """Persiste o relatório estratégico."""
    insert("hydra_strategy_reports", {"session_id": session_id, **report_data})


def save_audit_result(session_id: str, audit_data: dict) -> None:
    """Persiste resultado de auditoria."""
    insert("hydra_audit_log", {"session_id": session_id, **audit_data})


def save_traction_signal(session_id: str, signal_data: dict) -> None:
    """Persiste sinal de tração para monitoramento de pivô."""
    insert("hydra_traction", {"session_id": session_id, **signal_data})
