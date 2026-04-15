#!/usr/bin/env python3
"""
Adventure Labs — Meta Ads Campaign Creator (multi-cliente)

Cria campanha completa via Marketing API para qualquer cliente configurado
em scripts/meta-ads/configs/{client}.yaml

Estrutura criada:
  - 1 campanha CBO (OUTCOME_LEADS)
  - N ad sets (um por audiência no YAML)
  - N formulários nativos MQL
  - N criativos com vídeo
  - N anúncios (PAUSED — ativar manualmente após revisão)

Requisitos (VPS):
  pip3 install requests pyyaml
  rclone configurado com remote gdrive-adventure:
  META_SYSTEM_USER_TOKEN no ambiente ou /opt/adventure-labs/.env

Uso:
  python3 create_campaign.py --client benditta --start 2026-05-01 --end 2026-05-31
  python3 create_campaign.py --client benditta --dry-run
  python3 create_campaign.py --client benditta --only-forms
  python3 create_campaign.py --client benditta --search-geo "Porto Alegre"
  python3 create_campaign.py --client young --dry-run

Clientes disponíveis: benditta | young | rose
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
    print("[ERRO] pip3 install requests")
    sys.exit(1)

try:
    import yaml
except ImportError:
    print("[ERRO] pip3 install pyyaml")
    sys.exit(1)

# ─── LOAD CONFIG ──────────────────────────────────────────────────────────────
CONFIGS_DIR = Path(__file__).parent / "configs"
API_VERSION = "v20.0"
BASE_URL = f"https://graph.facebook.com/{API_VERSION}"


def load_client_config(client: str) -> dict:
    config_path = CONFIGS_DIR / f"{client}.yaml"
    if not config_path.exists():
        available = [f.stem for f in CONFIGS_DIR.glob("*.yaml")]
        print(f"[ERRO] Config não encontrada: {config_path}")
        print(f"       Clientes disponíveis: {', '.join(available)}")
        sys.exit(1)
    with open(config_path) as f:
        cfg = yaml.safe_load(f)

    # Injetar token do ambiente
    cfg["access_token"] = os.environ.get("META_SYSTEM_USER_TOKEN", "")
    if not cfg["access_token"]:
        # Tentar ler do .env
        env_file = Path("/opt/adventure-labs/.env")
        if env_file.exists():
            for line in env_file.read_text().splitlines():
                if line.startswith("META_SYSTEM_USER_TOKEN="):
                    cfg["access_token"] = line.split("=", 1)[1].strip()
                    break
    return cfg


# ─── HTTP HELPER ──────────────────────────────────────────────────────────────
def api(cfg: dict, method: str, path: str, **kwargs) -> dict:
    url = f"{BASE_URL}/{path.lstrip('/')}"
    params = kwargs.pop("params", {})
    params["access_token"] = cfg["access_token"]
    r = getattr(requests, method)(url, params=params, timeout=60, **kwargs)
    data = r.json()
    if not r.ok or "error" in data:
        print(f"\n[ERRO API] {method.upper()} {url}")
        print(json.dumps(data, indent=2, ensure_ascii=False))
        sys.exit(1)
    return data


# ─── RCLONE / DRIVE ───────────────────────────────────────────────────────────
def find_video_in_drive(cfg: dict, contains: str) -> str:
    result = subprocess.run(
        ["rclone", "lsf", cfg["drive_remote"],
         "--drive-root-folder-id", cfg["drive_folder_id"]],
        capture_output=True, text=True, check=True,
    )
    files = [f.strip() for f in result.stdout.splitlines() if contains in f]
    if not files:
        print(f"[ERRO] Nenhum arquivo com '{contains}' encontrado no Drive.")
        print(f"       Arquivos disponíveis:\n{result.stdout}")
        sys.exit(1)
    for pref in ["AJUSTE COR", "AJUSTADO", "FINALIZADO"]:
        match = [f for f in files if pref in f.upper()]
        if match:
            return match[-1]
    return files[-1]


def download_video(cfg: dict, filename: str, dest_dir: Path) -> Path:
    dest = dest_dir / filename
    print(f"  ↓ {filename}")
    subprocess.run(
        ["rclone", "copy",
         f"{cfg['drive_remote']}{filename}",
         str(dest_dir),
         "--drive-root-folder-id", cfg["drive_folder_id"],
         "--progress"],
        check=True,
    )
    if not dest.exists():
        print(f"[ERRO] Arquivo não encontrado após download: {dest}")
        sys.exit(1)
    return dest


def upload_video(cfg: dict, video_path: Path, title: str) -> str:
    print(f"  ↑ Upload: {video_path.name} ({video_path.stat().st_size // 1024 // 1024}MB)")
    with open(video_path, "rb") as f:
        result = api(cfg, "post", f"{cfg['ad_account_id']}/advideos",
                     files={"source": (video_path.name, f, "video/quicktime")},
                     data={"title": title})
    vid_id = result["id"]
    print(f"  ✓ video_id: {vid_id}")
    return vid_id


def get_video_thumbnail(cfg: dict, video_id: str) -> str:
    result = api(cfg, "get", video_id, params={"fields": "picture"})
    return result.get("picture", "")


# ─── LEAD FORM ────────────────────────────────────────────────────────────────
def build_questions(cfg: dict, form_type: str) -> list:
    questions = [
        {"type": "FULL_NAME"},
        {"type": "EMAIL"},
        {"type": "PHONE"},
    ]
    form_q = cfg.get("form_questions", {}).get(form_type, [])
    for q in form_q:
        questions.append({
            "type": "CUSTOM",
            "key": q["key"],
            "label": q["label"],
            "options": [{"value": o["value"], "key": o["key"]} for o in q.get("options", [])],
        })
    return questions


def create_form(cfg: dict, name: str, audience: dict, wa_message: str) -> str:
    print(f"  ⊕ Formulário: {name}")
    form_type = audience["form_type"]
    questions = build_questions(cfg, form_type)

    wa_number = cfg.get("wa_comercial", "")
    wa_url = f"https://wa.me/{wa_number}?text={requests.utils.quote(wa_message)}"

    result = api(cfg, "post", f"{cfg['page_id']}/leadgen_forms", data={
        "name": name,
        "locale": "pt_BR",
        "questions": json.dumps(questions),
        "privacy_policy": json.dumps({"url": cfg["privacy_url"]}),
        "follow_up_action_url": wa_url,
        "thank_you_page": json.dumps({
            "title": "Obrigado!",
            "body": "Recebemos seu contato. Toque no botão abaixo para falar direto com a equipe.",
            "button_text": f"Falar com a {cfg['label'].split()[0]}",
            "button_type": "VIEW_WEBSITE",
            "website_url": wa_url,
        }),
    })
    form_id = result["id"]
    print(f"  ✓ form_id: {form_id}")
    return form_id


# ─── CAMPANHA ─────────────────────────────────────────────────────────────────
def create_campaign(cfg: dict, run_tag: str, start_date: str, end_date: str) -> str:
    print("  ⊕ Campanha CBO")
    n_audiences = len(cfg.get("audiences", []))
    total_cents = int(cfg["daily_budget_per_adset_brl"] * max(n_audiences, 1) * 100)

    start_ts = int(datetime.fromisoformat(f"{start_date}T09:00:00").timestamp())
    end_ts   = int(datetime.fromisoformat(f"{end_date}T23:59:59").timestamp())

    suffix = f" — {run_tag}" if run_tag else ""
    result = api(cfg, "post", f"{cfg['ad_account_id']}/campaigns", data={
        "name":                  f"{cfg['label']} | Linha Essencial | {suffix}",
        "objective":             "OUTCOME_LEADS",
        "status":                "PAUSED",
        "special_ad_categories": "[]",
        "daily_budget":          total_cents,
        "bid_strategy":          "LOWEST_COST_WITHOUT_CAP",
        "start_time":            start_ts,
        "stop_time":             end_ts,
    })
    cid = result["id"]
    print(f"  ✓ campaign_id: {cid}")
    return cid


def create_adset(cfg: dict, campaign_id: str, name: str) -> str:
    print(f"  ⊕ Ad Set: {name}")
    targeting = {
        "geo_locations": {
            "cities": [
                {"key": g["key"], "radius": g["radius"], "distance_unit": g["distance_unit"]}
                for g in cfg.get("geo", [])
            ],
            "location_types": ["home", "recent"],
        },
        "age_min": cfg.get("age_min", 25),
        "age_max": cfg.get("age_max", 55),
        "publisher_platforms": cfg.get("publisher_platforms", ["instagram"]),
        "instagram_positions":  cfg.get("instagram_positions", ["stream", "reels", "story"]),
        "device_platforms":     cfg.get("device_platforms", ["mobile", "desktop"]),
        "targeting_automation": {"advantage_audience": 0},
    }
    result = api(cfg, "post", f"{cfg['ad_account_id']}/adsets", data={
        "name":              name,
        "campaign_id":       campaign_id,
        "optimization_goal": "LEAD_GENERATION",
        "billing_event":     "IMPRESSIONS",
        "destination_type":  "ON_AD",
        "targeting":         json.dumps(targeting),
        "status":            "PAUSED",
        "promoted_object":   json.dumps({"page_id": cfg["page_id"]}),
    })
    aid = result["id"]
    print(f"  ✓ adset_id: {aid}")
    return aid


def create_creative(cfg: dict, name: str, video_id: str, audience: dict, form_id: str) -> str:
    print(f"  ⊕ Creative: {name}")
    thumbnail_url = get_video_thumbnail(cfg, video_id)
    video_data = {
        "video_id":  video_id,
        "title":     audience["headline"],
        "message":   audience.get("body", ""),
        "call_to_action": {
            "type":  audience.get("cta", "LEARN_MORE"),
            "value": {"lead_gen_form_id": form_id},
        },
    }
    if thumbnail_url:
        video_data["image_url"] = thumbnail_url

    result = api(cfg, "post", f"{cfg['ad_account_id']}/adcreatives", data={
        "name": name,
        "object_story_spec": json.dumps({
            "page_id":    cfg["page_id"],
            "video_data": video_data,
        }),
    })
    cid = result["id"]
    print(f"  ✓ creative_id: {cid}")
    return cid


def create_ad(cfg: dict, adset_id: str, creative_id: str, name: str) -> str:
    print(f"  ⊕ Ad: {name}")
    result = api(cfg, "post", f"{cfg['ad_account_id']}/ads", data={
        "name":     name,
        "adset_id": adset_id,
        "creative": json.dumps({"creative_id": creative_id}),
        "status":   "PAUSED",
    })
    aid = result["id"]
    print(f"  ✓ ad_id: {aid}")
    return aid


# ─── GEO SEARCH ───────────────────────────────────────────────────────────────
def search_geo(cfg: dict, query: str) -> None:
    print(f"Buscando '{query}' no Meta...")
    result = api(cfg, "get", "search", params={
        "type": "adgeolocation",
        "q": query,
        "location_types": '["city","region"]',
        "limit": 10,
    })
    print(json.dumps(result.get("data", []), indent=2, ensure_ascii=False))


# ─── VIDEO CACHE ──────────────────────────────────────────────────────────────
def get_ids_file(client: str) -> Path:
    return Path(__file__).parent / f"{client}_campaign_ids.json"


def load_video_cache(client: str) -> dict:
    ids_file = get_ids_file(client)
    if ids_file.exists():
        return json.loads(ids_file.read_text()).get("videos", {})
    return {}


def save_summary(client: str, summary: dict) -> None:
    ids_file = get_ids_file(client)
    existing = json.loads(ids_file.read_text()) if ids_file.exists() else {}
    existing.update(summary)
    ids_file.write_text(json.dumps(existing, indent=2, ensure_ascii=False))

    print("\n" + "=" * 65)
    print(f"✓ CONCLUÍDO — {client} — todos os itens criados como PAUSED")
    print(f"  Revisar no Gerenciador de Anúncios antes de ativar.")
    print("=" * 65)
    print(json.dumps(existing, indent=2, ensure_ascii=False))
    print(f"\nIDs salvos em: {ids_file}")


# ─── MAIN ─────────────────────────────────────────────────────────────────────
def main():
    parser = argparse.ArgumentParser(description="Adventure Labs — Meta Ads Campaign Creator")
    parser.add_argument("--client", required=True, help="Cliente: benditta | young | rose")
    parser.add_argument("--start",  default=None,   help="Data início YYYY-MM-DD (padrão: amanhã)")
    parser.add_argument("--end",    default=None,   help="Data fim YYYY-MM-DD")
    parser.add_argument("--dry-run",    action="store_true", help="Mostra config sem chamar API")
    parser.add_argument("--only-forms", action="store_true", help="Cria só formulários")
    parser.add_argument("--search-geo", metavar="CITY", help="Busca city key no Meta")
    args = parser.parse_args()

    cfg = load_client_config(args.client)

    if args.search_geo:
        search_geo(cfg, args.search_geo)
        return

    if args.dry_run:
        print("=== DRY RUN ===")
        safe = {k: v for k, v in cfg.items() if k != "access_token"}
        print(json.dumps(safe, indent=2, ensure_ascii=False))
        return

    if not cfg["access_token"]:
        print("[ERRO] META_SYSTEM_USER_TOKEN não definido")
        sys.exit(1)

    audiences = cfg.get("audiences", [])
    if not audiences:
        print("[ERRO] Nenhuma audiência definida no YAML")
        sys.exit(1)

    from_ = args.start or (datetime.now().strftime("%Y-%m-%d"))
    to_   = args.end   or cfg.get("end_date", "")
    if not to_:
        print("[ERRO] --end obrigatório ou definir end_date no YAML")
        sys.exit(1)

    run_tag = datetime.now().strftime("%m%d%H%M%S")
    summary: dict = {}

    print("=" * 65)
    print(f"{cfg['label']} | Meta Ads Campaign Creator")
    print("=" * 65)

    # ── 1. VÍDEOS ────────────────────────────────────────────────────────────
    print(f"\n[1/{4 + len(audiences)*2}] Vídeos (Drive → Meta)")
    video_cache = load_video_cache(args.client)
    video_ids: dict = {}  # key: audience.key → video_id

    if all(aud["video_contains"] in str(video_cache) for aud in audiences):
        print("  ↩ Usando vídeos cacheados (sem re-upload)")
        for aud in audiences:
            vid_key = f"video_{aud['key']}"
            video_ids[aud["key"]] = video_cache.get(vid_key, "")
            print(f"  ✓ {aud['key']}: {video_ids[aud['key']]}")
    else:
        with tempfile.TemporaryDirectory(prefix=f"{args.client}_vids_") as tmpdir:
            tmp = Path(tmpdir)
            for aud in audiences:
                fname = find_video_in_drive(cfg, aud["video_contains"])
                vpath = download_video(cfg, fname, tmp)
                video_ids[aud["key"]] = upload_video(cfg, vpath, f"{cfg['label']} — {aud['label']}")

    summary["videos"] = {f"video_{k}": v for k, v in video_ids.items()}
    save_summary(args.client, {"videos": summary["videos"]})

    if args.only_forms:
        print("\n[--only-forms] Pulando campanha.")

    # ── 2. LEAD FORMS ────────────────────────────────────────────────────────
    step = 2
    print(f"\n[{step}/{4 + len(audiences)*2}] Lead Forms")
    form_ids: dict = {}
    for aud in audiences:
        wa_msg = f"Olá! Acabei de preencher o formulário {aud['label']} — {cfg['label']}."
        form_ids[aud["key"]] = create_form(
            cfg,
            f"{cfg['label']} — {aud['label']} — {from_[:7]} — {run_tag}",
            aud,
            wa_msg,
        )
    summary["lead_forms"] = form_ids

    if args.only_forms:
        save_summary(args.client, summary)
        return

    # ── 3. CAMPANHA ──────────────────────────────────────────────────────────
    step = 3
    print(f"\n[{step}/{4 + len(audiences)*2}] Campanha CBO")
    campaign_id = create_campaign(cfg, run_tag, from_, to_)
    summary["campaign_id"] = campaign_id

    # ── 4. AD SETS ───────────────────────────────────────────────────────────
    step = 4
    print(f"\n[{step}/{4 + len(audiences)*2}] Ad Sets")
    adset_ids: dict = {}
    for aud in audiences:
        adset_ids[aud["key"]] = create_adset(
            cfg, campaign_id,
            f"{cfg['label']} | {aud['label']} | {run_tag}"
        )
    summary["adsets"] = adset_ids

    # ── 5. CRIATIVOS ─────────────────────────────────────────────────────────
    step = 5
    print(f"\n[{step}/{4 + len(audiences)*2}] Criativos")
    creative_ids: dict = {}
    for aud in audiences:
        creative_ids[aud["key"]] = create_creative(
            cfg,
            f"Creative | {aud['label']} | {run_tag}",
            video_ids[aud["key"]],
            aud,
            form_ids[aud["key"]],
        )
    summary["creatives"] = creative_ids

    # ── 6. ANÚNCIOS ──────────────────────────────────────────────────────────
    step = 6
    print(f"\n[{step}/{4 + len(audiences)*2}] Anúncios")
    ad_ids: dict = {}
    for aud in audiences:
        ad_ids[aud["key"]] = create_ad(
            cfg,
            adset_ids[aud["key"]],
            creative_ids[aud["key"]],
            f"Ad | {aud['label']} | {run_tag}",
        )
    summary["ads"] = ad_ids

    save_summary(args.client, summary)


if __name__ == "__main__":
    main()
