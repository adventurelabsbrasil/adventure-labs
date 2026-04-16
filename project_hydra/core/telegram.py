"""
HYDRA Telegram Notifier — Envia alertas e relatórios para o Founder.
Usa o mesmo chat do CEO Buzz Bot (chat_id 1069502175) com prefixo [HYDRA].
"""

from __future__ import annotations

import json
import time
from typing import Optional

try:
    import httpx
    HAS_HTTPX = True
except ImportError:
    HAS_HTTPX = False

from project_hydra.core import config
from project_hydra.core.logger import get_logger

logger = get_logger("telegram")

_TELEGRAM_API = "https://api.telegram.org/bot{token}/sendMessage"


def send(
    message: str,
    urgency: str = "normal",
    parse_mode: str = "HTML",
    retries: int = 3,
) -> bool:
    """
    Envia mensagem Telegram para o Founder.
    urgency: "normal" | "alert" | "critical"
    Retorna True se enviado com sucesso.
    """
    if not config.USE_TELEGRAM:
        logger.info(f"[TELEGRAM MOCK] {message[:120]}...")
        return True

    if not HAS_HTTPX:
        logger.warning("httpx não instalado. Execute: pip install httpx")
        return False

    prefix = {
        "normal": "⚡ <b>[HYDRA]</b>",
        "alert": "⚠️ <b>[HYDRA ALERT]</b>",
        "critical": "🚨 <b>[HYDRA CRITICAL]</b>",
    }.get(urgency, "⚡ <b>[HYDRA]</b>")

    full_message = f"{prefix}\n\n{message}"

    url = _TELEGRAM_API.format(token=config.TELEGRAM_BOT_TOKEN)
    payload = {
        "chat_id": config.TELEGRAM_CHAT_ID,
        "text": full_message,
        "parse_mode": parse_mode,
        "disable_web_page_preview": True,
    }

    for attempt in range(retries):
        try:
            with httpx.Client(timeout=10.0) as client:
                resp = client.post(url, json=payload)
                resp.raise_for_status()
                logger.info(f"Telegram enviado (urgency={urgency})")
                return True
        except Exception as e:
            wait = 2 ** attempt
            logger.warning(f"Telegram falhou (tentativa {attempt+1}): {e}. Aguardando {wait}s...")
            time.sleep(wait)

    logger.error("Telegram: falha após todas as tentativas")
    return False


def notify_phase_start(phase: str, session_id: str) -> None:
    send(
        f"🔄 <b>Fase iniciada:</b> <code>{phase.upper()}</code>\n"
        f"Session: <code>{session_id}</code>",
        urgency="normal",
    )


def notify_strategy_winner(model_name: str, score: float, estimated_mrr: float) -> None:
    send(
        f"🏆 <b>Modelo vencedor selecionado!</b>\n\n"
        f"<b>Modelo:</b> {model_name}\n"
        f"<b>Score MCDA:</b> {score:.1f}/10\n"
        f"<b>MRR projetado (90d):</b> R$ {estimated_mrr:,.0f}\n\n"
        f"O HYDRA iniciará a construção da infraestrutura.",
        urgency="normal",
    )


def notify_build_complete(artifacts_count: int, launch_cost: float) -> None:
    send(
        f"🏗️ <b>Infraestrutura HYDRA pronta!</b>\n\n"
        f"<b>Artefatos gerados:</b> {artifacts_count}\n"
        f"<b>Custo estimado de lançamento:</b> R$ {launch_cost:.2f}\n\n"
        f"Próximo passo: revisão do Auditor e lançamento.",
        urgency="normal",
    )


def notify_audit_result(action: str, verdict: str, risk_score: float) -> None:
    emoji = "✅" if verdict == "approved" else ("⚠️" if "conditions" in verdict else "🚫")
    urgency = "normal" if verdict == "approved" else ("alert" if "conditions" in verdict else "critical")
    send(
        f"{emoji} <b>Auditoria HYDRA:</b> {action}\n\n"
        f"<b>Veredicto:</b> {verdict.upper()}\n"
        f"<b>Risco:</b> {risk_score:.1f}/10",
        urgency=urgency,
    )


def notify_traction_alert(hours_elapsed: float, traction_count: int, pivot_suggested: bool) -> None:
    if pivot_suggested:
        send(
            f"⚠️ <b>ALERTA DE PIVÔ HYDRA</b>\n\n"
            f"<b>{hours_elapsed:.0f}h após lançamento:</b> {traction_count} sinal(is) de tração\n\n"
            f"O sistema sugere <b>auto-regeneração da oferta</b>.\n"
            f"Aguardando aprovação do Founder para pivô.",
            urgency="alert",
        )
    else:
        send(
            f"📊 <b>Tração HYDRA:</b> {traction_count} sinal(is) em {hours_elapsed:.0f}h",
            urgency="normal",
        )


def notify_capital_alert(spent: float, budget: float) -> None:
    pct = (spent / budget) * 100
    urgency = "critical" if pct >= 90 else "alert"
    send(
        f"💸 <b>Alerta de Capital HYDRA</b>\n\n"
        f"<b>Gasto:</b> R$ {spent:.2f} / R$ {budget:.2f} ({pct:.0f}%)\n"
        f"<b>Saldo restante:</b> R$ {budget - spent:.2f}\n\n"
        f"{'⛔ CAPITAL CRÍTICO — Ações automáticas pausadas.' if pct >= 90 else '⚠️ Monitore o gasto.'}",
        urgency=urgency,
    )
