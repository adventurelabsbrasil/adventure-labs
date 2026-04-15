#!/usr/bin/env python3
"""
Meta + Instagram Insights Monitor
Coleta métricas semanais e envia relatório ao AM via Telegram (Buzz).

Roda na VPS via cron — adicionar ao crontab junto com gerente-benditta:
  0 10 * * 1 /opt/adventure-labs/scripts/meta-ads/monitor_meta_insights.py benditta

Uso:
  python3 monitor_meta_insights.py [cliente]   # cliente: benditta | young | rose
  python3 monitor_meta_insights.py benditta --days 7

Variáveis de ambiente (Infisical):
  META_SYSTEM_USER_TOKEN
  TELEGRAM_BOT_TOKEN
  TELEGRAM_CHAT_ID   (chat do CEO/Buzz: 1069502175)

TODO (próximas iterações):
  [ ] Integrar com Supabase adv_* para persistência de snapshots
  [ ] Adicionar Instagram Graph API (profile insights, reach, engajamento)
  [ ] Expandir para Young e Rose com configs separadas
  [ ] Comparativo semana a semana
  [ ] Alerta automático se CPL > threshold ou leads zerados por 2 dias
"""

import argparse
import json
import os
import sys
from datetime import datetime, timedelta

try:
    import requests
except ImportError:
    print("[ERRO] pip3 install requests")
    sys.exit(1)

# ─── CONFIG POR CLIENTE ───────────────────────────────────────────────────────
CLIENTS = {
    "benditta": {
        "ad_account_id":    "act_763660518134498",
        "ig_user_id":       "",           # TODO: preencher com IG User ID da Benditta
        "telegram_chat_id": "1069502175", # ceo_buzz_Bot
        "label":            "Benditta Marcenaria",
        "mql_min_budget":   30000,        # R$30k — filtro MQL (orçamento declarado)
    },
    "young": {
        "ad_account_id":    "",           # TODO: preencher
        "ig_user_id":       "",           # TODO: preencher
        "telegram_chat_id": "1069502175",
        "label":            "Young Empreendimentos",
        "mql_min_budget":   None,
    },
    "rose": {
        "ad_account_id":    "",           # TODO: preencher
        "ig_user_id":       "",           # TODO: preencher
        "telegram_chat_id": "1069502175",
        "label":            "Rose Portal Advocacia",
        "mql_min_budget":   None,
    },
}

META_TOKEN    = os.environ.get("META_SYSTEM_USER_TOKEN", "")
TG_BOT_TOKEN  = os.environ.get("TELEGRAM_BOT_TOKEN", "")
API_VERSION   = "v20.0"
BASE_URL      = f"https://graph.facebook.com/{API_VERSION}"


# ─── HTTP HELPERS ─────────────────────────────────────────────────────────────
def meta_get(path: str, **params) -> dict:
    params["access_token"] = META_TOKEN
    r = requests.get(f"{BASE_URL}/{path.lstrip('/')}", params=params, timeout=30)
    if not r.ok:
        print(f"[WARN] Meta GET {path}: {r.text[:200]}")
        return {}
    return r.json()


def send_telegram(chat_id: str, text: str) -> None:
    if not TG_BOT_TOKEN:
        print("[WARN] TELEGRAM_BOT_TOKEN não definido — relatório apenas no stdout")
        print(text)
        return
    requests.post(
        f"https://api.telegram.org/bot{TG_BOT_TOKEN}/sendMessage",
        json={"chat_id": chat_id, "text": text, "parse_mode": "Markdown"},
        timeout=15,
    )


# ─── META INSIGHTS ────────────────────────────────────────────────────────────
def get_campaign_insights(ad_account_id: str, days: int = 7) -> list:
    """Retorna métricas de campanhas ativas no período."""
    since = (datetime.now() - timedelta(days=days)).strftime("%Y-%m-%d")
    until = datetime.now().strftime("%Y-%m-%d")

    result = meta_get(
        f"{ad_account_id}/insights",
        level="campaign",
        fields="campaign_name,impressions,reach,clicks,spend,actions",
        time_range=json.dumps({"since": since, "until": until}),
        filtering=json.dumps([{"field": "effective_status", "operator": "IN", "value": ["ACTIVE", "PAUSED"]}]),
    )
    return result.get("data", [])


def get_lead_count(ad_account_id: str, days: int = 7) -> dict:
    """Conta leads por campanha no período."""
    since = (datetime.now() - timedelta(days=days)).strftime("%Y-%m-%d")
    until = datetime.now().strftime("%Y-%m-%d")

    result = meta_get(
        f"{ad_account_id}/insights",
        level="ad",
        fields="ad_name,adset_name,actions,spend",
        time_range=json.dumps({"since": since, "until": until}),
        action_breakdowns="action_type",
    )
    leads_by_adset: dict = {}
    for row in result.get("data", []):
        actions = row.get("actions", [])
        for act in actions:
            if act.get("action_type") == "leadgen_grouped":
                adset = row.get("adset_name", "")
                leads_by_adset[adset] = leads_by_adset.get(adset, 0) + int(act.get("value", 0))
    return leads_by_adset


# ─── RELATÓRIO ────────────────────────────────────────────────────────────────
def build_report(client_key: str, days: int = 7) -> str:
    cfg = CLIENTS[client_key]
    ad_account_id = cfg["ad_account_id"]

    if not ad_account_id:
        return f"[{cfg['label']}] ad_account_id não configurado ainda."

    insights   = get_campaign_insights(ad_account_id, days)
    leads_data = get_lead_count(ad_account_id, days)

    total_spend    = sum(float(r.get("spend", 0)) for r in insights)
    total_leads    = sum(leads_data.values())
    cpl            = (total_spend / total_leads) if total_leads > 0 else 0
    total_reach    = sum(int(r.get("reach", 0)) for r in insights)
    total_clicks   = sum(int(r.get("clicks", 0)) for r in insights)

    lines = [
        f"📊 *{cfg['label']} — Insights {days}d*",
        f"_{datetime.now().strftime('%d/%m/%Y %H:%M')}_",
        "",
        f"💰 Investido: R$ {total_spend:.2f}",
        f"📬 Leads: {total_leads}",
        f"💵 CPL: R$ {cpl:.2f}" if total_leads > 0 else "💵 CPL: — (sem leads)",
        f"👀 Alcance: {total_reach:,}",
        f"🖱 Cliques: {total_clicks}",
        "",
    ]

    if leads_data:
        lines.append("*Por público:*")
        for adset, count in leads_data.items():
            lines.append(f"  • {adset}: {count} leads")
        lines.append("")

    # Alertas automáticos
    alerts = []
    if total_leads == 0 and total_spend > 0:
        alerts.append("⚠️ Nenhum lead em {days}d com saldo rodando")
    if cpl > 150:
        alerts.append(f"⚠️ CPL alto: R$ {cpl:.2f} (meta < R$ 75)")
    if total_spend == 0:
        alerts.append("⚠️ Sem investimento no período (campanha pausada?)")

    if alerts:
        lines += alerts + [""]

    lines.append("_Fonte: Meta Marketing API via Adventure Labs_")

    return "\n".join(lines)


# ─── MAIN ─────────────────────────────────────────────────────────────────────
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("client", choices=list(CLIENTS.keys()), help="Cliente a monitorar")
    parser.add_argument("--days", type=int, default=7, help="Janela em dias (padrão: 7)")
    parser.add_argument("--no-telegram", action="store_true", help="Só imprime, não envia Telegram")
    args = parser.parse_args()

    if not META_TOKEN:
        print("[ERRO] META_SYSTEM_USER_TOKEN não definido")
        sys.exit(1)

    report = build_report(args.client, args.days)
    cfg    = CLIENTS[args.client]

    if args.no_telegram:
        print(report)
    else:
        send_telegram(cfg["telegram_chat_id"], report)
        print(f"✓ Relatório enviado ao Telegram (chat {cfg['telegram_chat_id']})")


if __name__ == "__main__":
    main()
