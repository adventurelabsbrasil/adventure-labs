"""
HYDRA Config — Carrega .env.hydra de forma isolada.
Nunca lê o .env principal da stack Adventure Labs.
"""

from __future__ import annotations

import os
from pathlib import Path
from dotenv import load_dotenv


# Carrega exclusivamente o .env.hydra (isolado da stack principal)
_HYDRA_ROOT = Path(__file__).parent.parent
_ENV_FILE = _HYDRA_ROOT / ".env.hydra"

if _ENV_FILE.exists():
    load_dotenv(_ENV_FILE, override=False)
else:
    print(f"[HYDRA] AVISO: {_ENV_FILE} não encontrado. Usando variáveis de ambiente do sistema.")
    print(f"[HYDRA] Copie .env.hydra.example para .env.hydra e preencha os valores.")


# ─── LLM ──────────────────────────────────────────────────────────────────────

ANTHROPIC_API_KEY: str = os.environ.get("HYDRA_ANTHROPIC_API_KEY", "")
PRIMARY_MODEL: str = os.environ.get("HYDRA_PRIMARY_MODEL", "claude-sonnet-4-6")
FALLBACK_MODEL: str = os.environ.get("HYDRA_FALLBACK_MODEL", "claude-haiku-4-5-20251001")
MAX_TOKENS: int = int(os.environ.get("HYDRA_MAX_TOKENS", "4096"))

# ─── Supabase ─────────────────────────────────────────────────────────────────

SUPABASE_URL: str = os.environ.get("HYDRA_SUPABASE_URL", "")
SUPABASE_KEY: str = os.environ.get("HYDRA_SUPABASE_ANON_KEY", "")
SUPABASE_SERVICE_KEY: str = os.environ.get("HYDRA_SUPABASE_SERVICE_KEY", "")
HYDRA_DB_PREFIX: str = "hydra_"  # Prefixo de isolamento — NUNCA mudar

# ─── Telegram ─────────────────────────────────────────────────────────────────

TELEGRAM_BOT_TOKEN: str = os.environ.get("HYDRA_TELEGRAM_BOT_TOKEN", "")
TELEGRAM_CHAT_ID: str = os.environ.get("HYDRA_TELEGRAM_CHAT_ID", "1069502175")  # CEO Buzz Bot

# ─── Budget ───────────────────────────────────────────────────────────────────

SEED_CAPITAL_BRL: float = float(os.environ.get("HYDRA_SEED_CAPITAL_BRL", "1000"))
MVP_BUDGET_BRL: float = float(os.environ.get("HYDRA_MVP_BUDGET_BRL", "200"))
BUDGET_ALERT_PCT: float = float(os.environ.get("HYDRA_BUDGET_ALERT_PCT", "0.5"))

# ─── Paths ────────────────────────────────────────────────────────────────────

HYDRA_ROOT: Path = _HYDRA_ROOT
LOGS_DIR: Path = _HYDRA_ROOT / "logs"
OUTPUTS_DIR: Path = _HYDRA_ROOT / "outputs"
DATA_DIR: Path = _HYDRA_ROOT / "data"
PROMPTS_DIR: Path = _HYDRA_ROOT / "prompts"
SQL_DIR: Path = _HYDRA_ROOT / "sql"

# Paths da stack Adventure (read-only, nunca modificar)
ADVENTURE_ROOT: Path = _HYDRA_ROOT.parent
BRAINDUMP_FILE: Path = ADVENTURE_ROOT / "docs" / "braindump" / "Company Brain Dump .md"
ACORE_ROADMAP: Path = ADVENTURE_ROOT / "docs" / "ACORE_ROADMAP.md"
BACKLOG_FILE: Path = ADVENTURE_ROOT / "docs" / "BACKLOG.md"

# ─── Feature Flags ────────────────────────────────────────────────────────────

USE_SUPABASE: bool = bool(SUPABASE_URL and SUPABASE_KEY)
USE_TELEGRAM: bool = bool(TELEGRAM_BOT_TOKEN and TELEGRAM_CHAT_ID)
USE_LLM: bool = bool(ANTHROPIC_API_KEY)
DRY_RUN: bool = os.environ.get("HYDRA_DRY_RUN", "false").lower() == "true"

# ─── Auditor Redlines ─────────────────────────────────────────────────────────

MAX_SPEND_PER_CLIENT_BRL: float = 150.0
MIN_MARGIN_PER_CLIENT_BRL: float = 2000.0
PIVOT_WINDOW_HOURS: int = 48
MIN_TRACTION_SIGNALS_48H: int = 1


def validate_config() -> list[str]:
    """Valida as configurações obrigatórias. Retorna lista de erros."""
    errors = []
    if not ANTHROPIC_API_KEY:
        errors.append("HYDRA_ANTHROPIC_API_KEY não definida — LLM desativado (modo local).")
    if not SUPABASE_URL:
        errors.append("HYDRA_SUPABASE_URL não definida — Supabase desativado (modo local).")
    if not TELEGRAM_BOT_TOKEN:
        errors.append("HYDRA_TELEGRAM_BOT_TOKEN não definida — notificações Telegram desativadas.")
    return errors


def print_config_status() -> None:
    """Exibe status de configuração no terminal."""
    print("\n[HYDRA] Status de Configuração:")
    print(f"  LLM (Anthropic):  {'✓ OK' if USE_LLM else '✗ Desativado'}")
    print(f"  Supabase:         {'✓ OK' if USE_SUPABASE else '✗ Desativado'}")
    print(f"  Telegram:         {'✓ OK' if USE_TELEGRAM else '✗ Desativado'}")
    print(f"  Dry Run:          {'✓ Ativo' if DRY_RUN else '✗ Inativo'}")
    print(f"  Budget MVP:       R$ {MVP_BUDGET_BRL:.2f}")
    print(f"  Capital Semente:  R$ {SEED_CAPITAL_BRL:.2f}")
    print(f"  Modelo Primário:  {PRIMARY_MODEL}")
    print()
