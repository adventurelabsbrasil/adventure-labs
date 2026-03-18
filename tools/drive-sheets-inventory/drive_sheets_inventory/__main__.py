"""CLI: inventário de planilhas → Google Sheets."""

from __future__ import annotations

import argparse
import os
import sys
from pathlib import Path

from .auth import get_credentials, paths_from_env
from .drive_list import collect_spreadsheets
from .gemini_descriptions import DEFAULT_MODEL, enrich_items_with_gemini
from .sheets_export import export_to_spreadsheet, fetch_previous_descriptions_by_id


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Lista planilhas no Google Drive e grava planilha de controle."
    )
    parser.add_argument(
        "--phase",
        choices=("all", "owned", "shared"),
        default="all",
        help="all: suas + compartilhadas; owned: só suas; shared: só compartilhadas comigo",
    )
    parser.add_argument(
        "--credentials",
        type=Path,
        default=None,
        help="JSON OAuth Desktop (default: GOOGLE_CREDENTIALS_PATH ou ./credentials.json)",
    )
    parser.add_argument(
        "--token",
        type=Path,
        default=None,
        help="Arquivo de token (default: GOOGLE_TOKEN_PATH ou ./token.json)",
    )
    parser.add_argument(
        "--spreadsheet-id",
        default=os.environ.get("DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID"),
        help="ID da planilha existente para atualizar (senão cria nova)",
    )
    parser.add_argument(
        "--title",
        default=None,
        help="Título ao criar nova planilha (só sem --spreadsheet-id)",
    )
    parser.add_argument(
        "--include-shared-drives",
        action="store_true",
        help="Inclui itens de drives compartilhados (Team Drive) na listagem",
    )
    parser.add_argument(
        "--gemini-descriptions",
        action="store_true",
        help="Gera descrição com Gemini (lê amostra de cada planilha). Requer GEMINI_API_KEY.",
    )
    parser.add_argument(
        "--gemini-model",
        default=os.environ.get("GEMINI_MODEL", DEFAULT_MODEL),
        help=f"Modelo Gemini (default: {DEFAULT_MODEL})",
    )
    parser.add_argument(
        "--keep-descriptions",
        action="store_true",
        help="Ao atualizar planilha existente sem Gemini, reaproveita coluna Descrição por ID.",
    )
    args = parser.parse_args()

    cred_path, tok_path = paths_from_env()
    if args.credentials:
        cred_path = args.credentials
    if args.token:
        tok_path = args.token

    try:
        creds = get_credentials(cred_path, tok_path)
    except FileNotFoundError as e:
        print(e, file=sys.stderr)
        return 1

    print("Coletando metadados no Drive…")
    items = collect_spreadsheets(
        creds,
        args.phase,
        include_shared_drives=args.include_shared_drives,
    )
    print(f"Encontradas {len(items)} planilha(s).")

    if args.gemini_descriptions:
        api_key = os.environ.get("GEMINI_API_KEY", "").strip()
        if not api_key:
            print(
                "Defina GEMINI_API_KEY no ambiente para usar --gemini-descriptions.",
                file=sys.stderr,
            )
            return 1
        skip: set[str] = set()
        sid_arg = (args.spreadsheet_id or "").strip()
        if sid_arg:
            skip.add(sid_arg)
        print(
            f"Gerando descrições com Gemini ({args.gemini_model})… "
            "(uma chamada por planilha; pode levar alguns minutos)"
        )

        def _prog(cur: int, total: int, name: str) -> None:
            print(f"  [{cur}/{total}] {name[:60]}{'…' if len(name) > 60 else ''}")

        enrich_items_with_gemini(
            items,
            creds,
            api_key,
            args.gemini_model,
            skip_file_ids=skip,
            progress=_prog,
        )
    elif args.keep_descriptions and (args.spreadsheet_id or "").strip():
        sid0 = (args.spreadsheet_id or "").strip()
        prev = fetch_previous_descriptions_by_id(creds, sid0)
        if prev:
            n = 0
            for it in items:
                if not (it.description or "").strip() and it.file_id in prev:
                    it.description = prev[it.file_id]
                    n += 1
            print(f"Descrições reaproveitadas da planilha anterior: {n} linha(s).")

    sid = export_to_spreadsheet(
        creds,
        items,
        spreadsheet_id=args.spreadsheet_id or None,
        spreadsheet_title=args.title,
    )
    url = f"https://docs.google.com/spreadsheets/d/{sid}"
    print(f"Planilha de controle: {url}")
    if not args.spreadsheet_id:
        print(
            "\nPara próximas execuções só atualizar esta planilha, defina:\n"
            f"  export DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID={sid}\n"
            "ou use: --spreadsheet-id …"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
