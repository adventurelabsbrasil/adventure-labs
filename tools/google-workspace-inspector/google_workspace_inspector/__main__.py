"""CLI: google_workspace_inspector inspect --file-id ..."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from .auth import get_credentials, paths_from_env
from .inspect_core import inspect_file


def main() -> int:
    p = argparse.ArgumentParser(description="Inspeciona arquivo no Google Drive.")
    sub = p.add_subparsers(dest="cmd", required=True)

    ins = sub.add_parser("inspect", help="Ler estrutura e sugestoes")
    ins.add_argument("--file-id", required=True, help="ID do arquivo no Drive")
    ins.add_argument("--max-rows", type=int, default=50)
    ins.add_argument("--max-sheets", type=int, default=10)
    ins.add_argument("--max-slides", type=int, default=40)
    ins.add_argument("--json", action="store_true", help="Saida JSON")
    ins.add_argument("--credentials", type=Path, default=None)
    ins.add_argument("--token", type=Path, default=None)

    args = p.parse_args()
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

    out = inspect_file(
        creds,
        args.file_id,
        max_rows=args.max_rows,
        max_sheets=args.max_sheets,
        max_slides=args.max_slides,
    )
    if args.json:
        print(json.dumps(out, ensure_ascii=False, indent=2))
    else:
        print(out["summary"])
        print()
        if out["qualityFlags"]:
            print("Alertas:")
            for f in out["qualityFlags"]:
                print(f"  - {f}")
            print()
        print("Sugestoes:")
        for s in out["suggestedImprovements"]:
            print(f"  - {s}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
