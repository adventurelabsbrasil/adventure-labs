#!/usr/bin/env python3
"""
Benditta — Meta Ads Campaign Creator (Linha Essencial Fase 2, Abril 2026)

Cria campanha completa via Marketing API:
  - 1 campanha CBO (Lead Generation)
  - 2 ad sets (Arquitetos / Cliente Final)
  - 2 formulários nativos (MQL com filtro de orçamento)
  - 2 criativos com vídeo
  - 2 anúncios (PAUSED — ativar manualmente após revisão)

Requisitos (VPS):
  - python3 + pip3 install requests
  - rclone configurado com remote gdrive-adventure:
  - META_SYSTEM_USER_TOKEN exportado (ou via Infisical — ver abaixo)

Uso:
  # Pegar token do Infisical na VPS:
  export META_SYSTEM_USER_TOKEN=$(infisical secrets get META_SYSTEM_USER_TOKEN --plain)

  # Testar sem criar nada:
  python3 create_campaign_benditta_fase2.py --dry-run

  # Criar campanha:
  python3 create_campaign_benditta_fase2.py

  # Criar só formulários (para revisar antes de criar o resto):
  python3 create_campaign_benditta_fase2.py --only-forms

Conta: act=763660518134498 | Page: 968517269687411 | BM: 1159646178468576
"""

import argparse
import json
import os
import subprocess
import sys
import tempfile
from datetime import datetime
from pathlib import Path

try:
    import requests
except ImportError:
    print("[ERRO] requests não instalado. Execute: pip3 install requests")
    sys.exit(1)

# ─── CONFIGURAÇÃO ─────────────────────────────────────────────────────────────
CFG = {
    # Meta
    "access_token":     os.environ.get("META_SYSTEM_USER_TOKEN", ""),
    "ad_account_id":    "act_763660518134498",
    "page_id":          "968517269687411",
    "business_id":      "1159646178468576",
    "api_version":      "v20.0",

    # WhatsApp comercial (Laís Lima)
    "wa_comercial":     "5551998252983",

    # Drive (rclone)
    "drive_remote":     "gdrive-adventure:",
    "drive_folder_id":  "128YsEU3UrbBfM4v-7IMnlOD0_AI969BO",

    # Nomes dos vídeos na pasta Drive
    # Confirmado via rclone lsf em 15/04/2026
    "video3_contains":  "BEN_VD_03",    # → Arquitetos  ("Quando o projeto e bem pensando")
    "video4_contains":  "BEN_VD_04",    # → Cliente Final ("Quando voce comeca um projeto completo")

    # Budget
    "daily_budget_per_adset_brl": 25.0,   # R$25/dia por ad set = R$50/dia total

    # Datas
    "start_date": "2026-04-17",           # dia de início (mínimo: amanhã)
    "end_date":   "2026-04-30",

    # LPs (fallback / Google Ads — não usadas no Meta Lead Form)
    "lp_cliente":    "https://benditta-lp.vercel.app/essencial/cliente",
    "lp_arquiteto":  "https://benditta-lp.vercel.app/essencial/arquiteto",
    "privacy_url":   "https://bendittamarcenaria.com.br",
}

BASE_URL = f"https://graph.facebook.com/{CFG['api_version']}"


# ─── HTTP HELPER ──────────────────────────────────────────────────────────────
def api(method: str, path: str, **kwargs) -> dict:
    """HTTP wrapper com token automático. Aborta em erro."""
    url = f"{BASE_URL}/{path.lstrip('/')}"
    params = kwargs.pop("params", {})
    params["access_token"] = CFG["access_token"]
    r = getattr(requests, method)(url, params=params, timeout=60, **kwargs)
    data = r.json()
    if not r.ok or "error" in data:
        print(f"\n[ERRO API] {method.upper()} {url}")
        print(json.dumps(data, indent=2, ensure_ascii=False))
        sys.exit(1)
    return data


# ─── RCLONE ───────────────────────────────────────────────────────────────────
def find_video_in_drive(contains: str) -> str:
    """Lista arquivos no Drive e retorna o nome do que contém `contains`."""
    result = subprocess.run(
        [
            "rclone", "lsf",
            f"{CFG['drive_remote']}",
            "--drive-root-folder-id", CFG["drive_folder_id"],
        ],
        capture_output=True, text=True, check=True,
    )
    files = [f.strip() for f in result.stdout.splitlines() if contains in f]
    if not files:
        print(f"[ERRO] Nenhum arquivo com '{contains}' encontrado no Drive.")
        print(f"       Arquivos disponíveis:\n{result.stdout}")
        sys.exit(1)
    # Preferir versão com "AJUSTE COR" ou "AJUSTADO" (mais recente nas versões)
    for pref in ["AJUSTE COR", "AJUSTADO", "FINALIZADO"]:
        match = [f for f in files if pref in f.upper()]
        if match:
            return match[-1]
    return files[-1]


def download_video(filename: str, dest_dir: Path) -> Path:
    """Baixa arquivo do Drive para dest_dir via rclone."""
    dest = dest_dir / filename
    print(f"  ↓ {filename}")
    subprocess.run(
        [
            "rclone", "copy",
            f"{CFG['drive_remote']}{filename}",
            str(dest_dir),
            "--drive-root-folder-id", CFG["drive_folder_id"],
        ],
        check=True,
    )
    if not dest.exists():
        # rclone pode colocar só o nome base
        matches = list(dest_dir.glob(f"*{Path(filename).stem}*"))
        if matches:
            return matches[0]
        print(f"[ERRO] Arquivo não encontrado após download: {dest}")
        sys.exit(1)
    return dest


# ─── META API CALLS ───────────────────────────────────────────────────────────
def upload_video(video_path: Path, title: str) -> str:
    """Upload de vídeo para a conta de anúncios. Retorna video_id."""
    print(f"  ↑ Upload: {video_path.name} ({video_path.stat().st_size // 1024 // 1024}MB)")
    with open(video_path, "rb") as f:
        result = api(
            "post",
            f"{CFG['ad_account_id']}/advideos",
            files={"source": (video_path.name, f, "video/quicktime")},
            data={"title": title},
        )
    vid_id = result["id"]
    print(f"  ✓ video_id: {vid_id}")
    return vid_id


def create_form(name: str, form_type: str, wa_message: str) -> str:
    """
    Cria Lead Form nativo.
    form_type: 'cliente' | 'arquiteto'
    Retorna form_id.
    """
    print(f"  ⊕ Formulário: {name}")

    # Perguntas comuns (pre-fill do Meta)
    questions = [
        {"type": "FULL_NAME"},
        {"type": "EMAIL"},
        {"type": "PHONE"},
    ]

    if form_type == "cliente":
        questions += [
            {
                "type": "CUSTOM",
                "key": "tem_projeto",
                "label": "Você tem projeto?",
                "options": [
                    {"value": "Sim", "key": "sim"},
                    {"value": "Estou planejando", "key": "planejando"},
                    {"value": "Não", "key": "nao"},
                ],
            },
            {
                "type": "CUSTOM",
                "key": "ambientes",
                "label": "Em quantos ambientes?",
                "options": [
                    {"value": "1", "key": "1"},
                    {"value": "2", "key": "2"},
                    {"value": "3", "key": "3"},
                    {"value": "4", "key": "4"},
                    {"value": "5 ou mais", "key": "5_ou_mais"},
                ],
            },
            {
                "type": "CUSTOM",
                "key": "orcamento",
                "label": "Qual o orçamento estimado?",
                "options": [
                    {"value": "Abaixo de R$ 15.000",       "key": "abaixo_15k"},
                    {"value": "R$ 15.000 – R$ 30.000",     "key": "15k_30k"},
                    {"value": "R$ 30.000 – R$ 50.000",     "key": "30k_50k"},
                    {"value": "R$ 50.000 – R$ 100.000",    "key": "50k_100k"},
                    {"value": "R$ 100.000 – R$ 200.000",   "key": "100k_200k"},
                    {"value": "Acima de R$ 200.000",       "key": "acima_200k"},
                ],
            },
        ]
    else:  # arquiteto
        questions += [
            {
                "type": "CUSTOM",
                "key": "projetos_por_ano",
                "label": "Quantos projetos de marcenaria você executa por ano?",
                "options": [
                    {"value": "1 a 2",    "key": "1_2"},
                    {"value": "3 a 5",    "key": "3_5"},
                    {"value": "6 ou mais", "key": "6_mais"},
                ],
            },
            {
                "type": "CUSTOM",
                "key": "ticket_medio",
                "label": "Ticket médio dos seus projetos de marcenaria?",
                "options": [
                    {"value": "Abaixo de R$ 30.000",       "key": "abaixo_30k"},
                    {"value": "R$ 30.000 – R$ 80.000",     "key": "30k_80k"},
                    {"value": "R$ 80.000 – R$ 150.000",    "key": "80k_150k"},
                    {"value": "Acima de R$ 150.000",       "key": "acima_150k"},
                ],
            },
        ]

    wa_url = (
        f"https://wa.me/{CFG['wa_comercial']}"
        f"?text={requests.utils.quote(wa_message)}"
    )

    result = api(
        "post",
        f"{CFG['page_id']}/leadgen_forms",
        data={
            "name": name,
            "locale": "pt_BR",
            "questions": json.dumps(questions),
            "privacy_policy": json.dumps({"url": CFG["privacy_url"]}),
            "follow_up_action_url": wa_url,
            "thank_you_page": json.dumps({
                "title": "Obrigado!",
                "body": "Recebemos seu contato. Toque no botão abaixo para falar direto com a Benditta no WhatsApp.",
                "button_text": "Falar com a Benditta",
                "button_type": "VIEW_WEBSITE",
                "website_url": wa_url,
            }),
        },
    )
    form_id = result["id"]
    print(f"  ✓ form_id: {form_id}")
    return form_id


def create_campaign() -> str:
    """
    Campanha CBO Lead Generation.
    Budget total = 2 × R$25/dia = R$50/dia = 5000 centavos.
    """
    print("  ⊕ Campanha CBO")
    total_daily_cents = int(CFG["daily_budget_per_adset_brl"] * 2 * 100)

    start_ts = int(datetime.fromisoformat(f"{CFG['start_date']}T09:00:00").timestamp())
    end_ts   = int(datetime.fromisoformat(f"{CFG['end_date']}T23:59:59").timestamp())

    result = api("post", f"{CFG['ad_account_id']}/campaigns", data={
        "name":                  "Benditta | Linha Essencial | Fase 2 | Abr2026",
        "objective":             "OUTCOME_LEADS",
        "status":                "PAUSED",
        "special_ad_categories": "[]",
        "daily_budget":          total_daily_cents,
        "bid_strategy":          "LOWEST_COST_WITHOUT_CAP",
        "start_time":            start_ts,
        "stop_time":             end_ts,
    })
    cid = result["id"]
    print(f"  ✓ campaign_id: {cid}")
    return cid


def _targeting_base() -> dict:
    """
    Geo: RMPA (Porto Alegre + 40km) + Litoral RS (Torres + 50km).
    Idade: 30–45. Plataforma: Instagram.
    Nota: city keys verificados via Meta Targeting Search API.
    Se retornar erro de geo, rodar: python3 create_campaign_benditta_fase2.py --search-geo
    """
    return {
        "geo_locations": {
            "cities": [
                {"key": "2267086", "radius": 40, "distance_unit": "kilometer"},  # Porto Alegre
                {"key": "2270546", "radius": 50, "distance_unit": "kilometer"},  # Torres / Litoral Norte RS
            ],
            "location_types": ["home", "recent"],
        },
        "age_min": 30,
        "age_max": 45,
        "publisher_platforms": ["instagram"],
        "instagram_positions":  ["stream", "reels", "story"],
        "device_platforms":     ["mobile", "desktop"],
    }


def create_adset(
    campaign_id: str,
    name: str,
    form_id: str,
    interests: list,
) -> str:
    """Ad set dentro de campanha CBO. Budget herdado. Retorna adset_id."""
    print(f"  ⊕ Ad Set: {name}")
    targeting = _targeting_base()
    targeting["flexible_spec"] = [{"interests": interests}]

    result = api("post", f"{CFG['ad_account_id']}/adsets", data={
        "name":              name,
        "campaign_id":       campaign_id,
        "optimization_goal": "LEAD_GENERATION",
        "billing_event":     "IMPRESSIONS",
        "destination_type":  "ON_AD",
        "targeting":         json.dumps(targeting),
        "status":            "PAUSED",
        "promoted_object":   json.dumps({
            "page_id":         CFG["page_id"],
            "leadgen_form_id": form_id,
        }),
    })
    aid = result["id"]
    print(f"  ✓ adset_id: {aid}")
    return aid


def create_creative(
    name: str,
    video_id: str,
    headline: str,
    body: str,
    cta_type: str,
    form_id: str,
) -> str:
    """Creative com vídeo + formulário nativo. Retorna creative_id."""
    print(f"  ⊕ Creative: {name}")
    result = api("post", f"{CFG['ad_account_id']}/adcreatives", data={
        "name": name,
        "object_story_spec": json.dumps({
            "page_id": CFG["page_id"],
            "video_data": {
                "video_id": video_id,
                "title":    headline,
                "message":  body,
                "call_to_action": {
                    "type":  cta_type,
                    "value": {"lead_gen_form_id": form_id},
                },
            },
        }),
    })
    cid = result["id"]
    print(f"  ✓ creative_id: {cid}")
    return cid


def create_ad(adset_id: str, creative_id: str, name: str) -> str:
    """Anúncio final. Retorna ad_id."""
    print(f"  ⊕ Ad: {name}")
    result = api("post", f"{CFG['ad_account_id']}/ads", data={
        "name":      name,
        "adset_id":  adset_id,
        "creative":  json.dumps({"creative_id": creative_id}),
        "status":    "PAUSED",
    })
    ad_id = result["id"]
    print(f"  ✓ ad_id: {ad_id}")
    return ad_id


def search_geo(query: str) -> None:
    """Helper: busca city keys no Meta para debugging de geo targeting."""
    result = api("get", "search", params={
        "type": "adgeolocation",
        "q": query,
        "country_code": "BR",
        "location_types": "city",
    })
    print(json.dumps(result.get("data", []), indent=2, ensure_ascii=False))


# ─── MAIN ─────────────────────────────────────────────────────────────────────
def main():
    parser = argparse.ArgumentParser(description="Meta Ads Campaign Creator — Benditta Fase 2")
    parser.add_argument("--dry-run",    action="store_true", help="Mostra config, não chama API")
    parser.add_argument("--only-forms", action="store_true", help="Cria só os formulários")
    parser.add_argument("--search-geo", metavar="CITY",      help="Busca city key Meta. Ex: --search-geo 'Torres'")
    args = parser.parse_args()

    if not CFG["access_token"]:
        print("[ERRO] META_SYSTEM_USER_TOKEN não definido.")
        print("")
        print("  Na VPS, exporte o token do Infisical:")
        print("  export META_SYSTEM_USER_TOKEN=$(infisical secrets get META_SYSTEM_USER_TOKEN --plain)")
        sys.exit(1)

    # Helper de geo search
    if args.search_geo:
        print(f"Buscando '{args.search_geo}' no Meta...")
        search_geo(args.search_geo)
        return

    if args.dry_run:
        print("=== DRY RUN — nenhuma chamada à API ===")
        print(json.dumps({k: v for k, v in CFG.items() if k != "access_token"}, indent=2, ensure_ascii=False))
        return

    print("=" * 65)
    print("Benditta | Linha Essencial Fase 2 | Meta Ads Campaign Creator")
    print("=" * 65)

    summary: dict = {}

    # ── 1. VÍDEOS ────────────────────────────────────────────────────────────
    print("\n[1/6] Vídeos (Drive → Meta)")
    with tempfile.TemporaryDirectory(prefix="benditta_vids_") as tmpdir:
        tmp = Path(tmpdir)
        f3 = find_video_in_drive(CFG["video3_contains"])
        f4 = find_video_in_drive(CFG["video4_contains"])
        v3_path = download_video(f3, tmp)
        v4_path = download_video(f4, tmp)
        v3_id = upload_video(v3_path, "Benditta LE — Arquitetos")
        v4_id = upload_video(v4_path, "Benditta LE — Cliente Final")

    summary["videos"] = {"video3_arquitetos": v3_id, "video4_cliente": v4_id}

    if args.only_forms:
        print("\n[--only-forms] Pulando campanha. Criando apenas formulários.")

    # ── 2. LEAD FORMS ────────────────────────────────────────────────────────
    print("\n[2/6] Lead Forms")
    wa_cliente   = "Olá! Acabei de preencher o formulário da Linha Essencial e quero receber uma análise do meu ambiente."
    wa_arquiteto = "Olá! Sou arquiteto(a) e quero enviar meu projeto para análise técnica da Linha Essencial Benditta."

    form_cliente_id   = create_form("Benditta LE — Cliente Final — Abr2026",  "cliente",   wa_cliente)
    form_arquiteto_id = create_form("Benditta LE — Arquitetos — Abr2026",     "arquiteto", wa_arquiteto)

    summary["lead_forms"] = {
        "cliente_final": form_cliente_id,
        "arquitetos":    form_arquiteto_id,
    }

    if args.only_forms:
        _print_summary(summary)
        return

    # ── 3. CAMPANHA ──────────────────────────────────────────────────────────
    print("\n[3/6] Campanha CBO")
    campaign_id = create_campaign()
    summary["campaign_id"] = campaign_id

    # ── 4. AD SETS ───────────────────────────────────────────────────────────
    print("\n[4/6] Ad Sets")
    # Interest IDs verificados via Meta Targeting Search API
    # Para checar: python3 create_campaign_benditta_fase2.py --search-geo "Porto Alegre"
    interests_cliente = [
        {"id": "6003232518610", "name": "Interior design"},
        {"id": "6002910614826", "name": "Home renovation"},
        {"id": "6003161363878", "name": "Real estate"},
        {"id": "6003397425735", "name": "Architecture"},
    ]
    interests_arquiteto = [
        {"id": "6003397425735", "name": "Architecture"},
        {"id": "6003232518610", "name": "Interior design"},
        {"id": "6003048195573", "name": "AutoCAD"},
        {"id": "6004103714583", "name": "SketchUp"},
    ]

    adset_cliente_id   = create_adset(campaign_id, "Benditta LE | Cliente Final | RMPA+Litoral", form_cliente_id,   interests_cliente)
    adset_arquiteto_id = create_adset(campaign_id, "Benditta LE | Arquitetos | RMPA+Litoral",    form_arquiteto_id, interests_arquiteto)

    summary["adsets"] = {
        "cliente_final": adset_cliente_id,
        "arquitetos":    adset_arquiteto_id,
    }

    # ── 5. CRIATIVOS ─────────────────────────────────────────────────────────
    print("\n[5/6] Criativos")
    creative_cliente_id = create_creative(
        name="Creative | Vídeo 4 | Cliente Final",
        video_id=v4_id,
        headline="O essencial bem feito",
        body=(
            "Cansou de reforma que vira projeto sem fim?\n"
            "A Linha Essencial Benditta foi criada para quem quer qualidade, "
            "prazo previsível e investimento claro desde o início.\n"
            "Curadoria inteligente · escolhas técnicas validadas · sem retrabalho.\n"
            "📍 Região Metropolitana de Porto Alegre e Litoral RS"
        ),
        cta_type="SIGN_UP",
        form_id=form_cliente_id,
    )
    creative_arquiteto_id = create_creative(
        name="Creative | Vídeo 3 | Arquitetos",
        video_id=v3_id,
        headline="Execução que respeita o seu projeto",
        body=(
            "Fidelidade técnica. Entrega previsível. Parceria sem improviso.\n"
            "A Benditta executa exatamente o que foi projetado — sem alterar conceito, "
            "sem surpresa no prazo.\n"
            "Linha Essencial · exclusivo para arquitetos e designers.\n"
            "📍 Região Metropolitana de Porto Alegre e Litoral RS"
        ),
        cta_type="LEARN_MORE",
        form_id=form_arquiteto_id,
    )

    summary["creatives"] = {
        "cliente_final": creative_cliente_id,
        "arquitetos":    creative_arquiteto_id,
    }

    # ── 6. ANÚNCIOS ──────────────────────────────────────────────────────────
    print("\n[6/6] Anúncios")
    ad_cliente_id   = create_ad(adset_cliente_id,   creative_cliente_id,   "Ad | Vídeo 4 | Cliente Final")
    ad_arquiteto_id = create_ad(adset_arquiteto_id, creative_arquiteto_id, "Ad | Vídeo 3 | Arquitetos")

    summary["ads"] = {
        "cliente_final": ad_cliente_id,
        "arquitetos":    ad_arquiteto_id,
    }

    _print_summary(summary)


def _print_summary(summary: dict) -> None:
    ids_file = Path(__file__).parent / "benditta_campaign_ids.json"
    ids_file.write_text(json.dumps(summary, indent=2, ensure_ascii=False))

    print("\n" + "=" * 65)
    print("✓ CONCLUÍDO — todos os itens criados com status PAUSED")
    print("  Revisar no Gerenciador de Anúncios antes de ativar:")
    print("  https://adsmanager.facebook.com/adsmanager/manage/ads")
    print("  ?act=763660518134498")
    print("=" * 65)
    print(json.dumps(summary, indent=2, ensure_ascii=False))
    print(f"\nIDs salvos em: {ids_file}")


if __name__ == "__main__":
    main()
