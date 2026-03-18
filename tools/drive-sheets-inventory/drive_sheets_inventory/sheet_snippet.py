"""Lê amostra de uma planilha (abas + primeiras células) para contexto ao Gemini."""

from __future__ import annotations

import re
from typing import Any

from google.oauth2.credentials import Credentials
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError


def _range_for_sheet(sheet_name: str, cell_range: str) -> str:
    if re.search(r"[^A-Za-z0-9_]", sheet_name) or not sheet_name:
        safe = sheet_name.replace("'", "''")
        return f"'{safe}'!{cell_range}"
    return f"{sheet_name}!{cell_range}"


def fetch_sheet_preview(
    creds: Credentials,
    spreadsheet_id: str,
    *,
    max_tabs_list: int = 15,
    sample_rows: int = 25,
) -> tuple[list[str], list[list[Any]], int]:
    """
    Retorna (nomes das primeiras abas para exibir, valores A1:H25 da 1ª aba, total de abas).
    Em erro, retorna ([], [], 0).
    """
    service = build("sheets", "v4", credentials=creds, cache_discovery=False)
    try:
        meta = (
            service.spreadsheets()
            .get(spreadsheetId=spreadsheet_id, fields="sheets.properties.title")
            .execute()
        )
    except HttpError:
        return [], [], 0

    sheets = [s["properties"]["title"] for s in meta.get("sheets", [])]
    total = len(sheets)
    if not sheets:
        return [], [], 0

    first = sheets[0]
    rng = _range_for_sheet(first, f"A1:H{sample_rows}")
    try:
        res = (
            service.spreadsheets()
            .values()
            .get(spreadsheetId=spreadsheet_id, range=rng)
            .execute()
        )
        values = res.get("values", [])
    except HttpError:
        values = []

    return sheets[:max_tabs_list], values, total


def build_context_text(
    file_name: str,
    tab_names: list[str],
    total_tabs: int,
    cells: list[list[Any]],
) -> str:
    parts = [
        f"Nome do arquivo: {file_name}",
        f"Total de abas na planilha: {total_tabs}",
        f"Nomes das abas (amostra): {', '.join(tab_names) if tab_names else '(nenhuma)'}",
        "Amostra da primeira aba (células):",
    ]
    # Limitar tamanho para token/custo
    raw = repr(cells) if cells else "(vazio ou sem permissão de leitura)"
    if len(raw) > 4000:
        raw = raw[:3997] + "..."
    parts.append(raw)
    return "\n".join(parts)
