"""Cria ou atualiza a planilha de inventário."""

from __future__ import annotations

from datetime import datetime
from zoneinfo import ZoneInfo

from google.oauth2.credentials import Credentials
from googleapiclient.discovery import build

from .drive_list import SheetFile

SHEET_TITLE = "Índice"
HEADERS = [
    "Título",
    "Descrição",
    "Criado em",
    "Modificado em",
    "Origem",
    "ID",
    "Proprietário(s)",
    "Sincronizado em",
]


def _format_dt_rfc3339(iso: str) -> str:
    if not iso:
        return ""
    try:
        dt = datetime.fromisoformat(iso.replace("Z", "+00:00"))
        return dt.astimezone(ZoneInfo("America/Sao_Paulo")).strftime("%Y-%m-%d %H:%M")
    except (ValueError, TypeError):
        return iso[:16].replace("T", " ") if len(iso) >= 16 else iso


def _formula_sep(locale: str) -> str:
    loc = (locale or "en_US").lower()
    return ";" if loc.startswith("pt") else ","


def _hyperlink_formula(file_id: str, title: str, locale: str) -> str:
    url = f"https://docs.google.com/spreadsheets/d/{file_id}"
    label = f"📊 {title}".replace("\n", " ").strip()
    if len(label) > 500:
        label = label[:497] + "..."
    safe = label.replace("\\", "\\\\").replace('"', '""')
    sep = _formula_sep(locale)
    return f'=HYPERLINK("{url}"{sep}"{safe}")'


def _range_quote(sheet_name: str, cell: str) -> str:
    if any(c in sheet_name for c in ("'", " ")):
        return f"'{sheet_name.replace(chr(39), chr(39) + chr(39))}'!{cell}"
    return f"{sheet_name}!{cell}"


def resolve_inventory_tab(creds, spreadsheet_id: str) -> str:
    """Nome da aba Índice ou primeira aba."""
    sheets = build("sheets", "v4", credentials=creds, cache_discovery=False)
    meta = (
        sheets.spreadsheets()
        .get(spreadsheetId=spreadsheet_id, fields="sheets.properties.title")
        .execute()
    )
    names = [s["properties"]["title"] for s in meta.get("sheets", [])]
    if SHEET_TITLE in names:
        return SHEET_TITLE
    return names[0] if names else "Sheet1"


def fetch_previous_descriptions_by_id(
    creds,
    spreadsheet_id: str,
) -> dict[str, str]:
    """
    Mapeia ID da planilha -> texto da coluna Descrição (B) da última exportação.
    Colunas: A=Título, B=Descrição, … F=ID.
    """
    tab = resolve_inventory_tab(creds, spreadsheet_id)
    rng = _range_quote(tab, "A2:H5000")
    sheets = build("sheets", "v4", credentials=creds, cache_discovery=False)
    try:
        res = (
            sheets.spreadsheets()
            .values()
            .get(spreadsheetId=spreadsheet_id, range=rng)
            .execute()
        )
    except Exception:
        return {}
    out: dict[str, str] = {}
    for row in res.get("values", []):
        if len(row) < 6:
            continue
        desc = (row[1] or "").strip()
        fid = (row[5] or "").strip()
        if fid and desc:
            out[fid] = desc
    return out


def export_to_spreadsheet(
    creds: Credentials,
    items: list[SheetFile],
    *,
    spreadsheet_id: str | None,
    spreadsheet_title: str | None = None,
) -> str:
    """
    Escreve o inventário. Se spreadsheet_id for None, cria nova planilha.
    Retorna o spreadsheetId.
    """
    sheets = build("sheets", "v4", credentials=creds, cache_discovery=False)
    service = sheets.spreadsheets()

    now_br = datetime.now(ZoneInfo("America/Sao_Paulo")).strftime("%Y-%m-%d %H:%M")

    if not spreadsheet_id:
        title = spreadsheet_title or (
            f"Inventário Planilhas Drive — {datetime.now().strftime('%Y-%m-%d')}"
        )
        created = (
            service.create(
                body={"properties": {"title": title}},
                fields="spreadsheetId,sheets.properties",
            ).execute()
        )
        spreadsheet_id = created["spreadsheetId"]
        sid0 = created["sheets"][0]["properties"]["sheetId"]
        service.batchUpdate(
            spreadsheetId=spreadsheet_id,
            body={
                "requests": [
                    {
                        "updateSheetProperties": {
                            "properties": {"sheetId": sid0, "title": SHEET_TITLE},
                            "fields": "title",
                        }
                    }
                ]
            },
        ).execute()

    meta = service.get(
        spreadsheetId=spreadsheet_id,
        fields="properties.locale,sheets.properties",
    ).execute()
    locale = (meta.get("properties") or {}).get("locale", "en_US")
    sheets_props = meta.get("sheets", [])
    sheet_names = [s["properties"]["title"] for s in sheets_props]
    if SHEET_TITLE in sheet_names:
        tab = SHEET_TITLE
    elif spreadsheet_id and sheets_props:
        # Planilha já existia: criar aba dedicada para não apagar dados em Sheet1
        service.batchUpdate(
            spreadsheetId=spreadsheet_id,
            body={"requests": [{"addSheet": {"properties": {"title": SHEET_TITLE}}}]},
        ).execute()
        tab = SHEET_TITLE
    else:
        tab = sheet_names[0] if sheet_names else "Sheet1"

    rows: list[list[str]] = [HEADERS]
    for it in items:
        rows.append(
            [
                _hyperlink_formula(it.file_id, it.name, locale),
                it.description,
                _format_dt_rfc3339(it.created_time),
                _format_dt_rfc3339(it.modified_time),
                it.origin,
                it.file_id,
                it.owner_emails,
                now_br,
            ]
        )

    clear_range = _range_quote(tab, "A1:Z50000")
    service.values().clear(spreadsheetId=spreadsheet_id, range=clear_range).execute()

    rng = _range_quote(tab, f"A1:H{max(1, len(rows))}")
    service.values().update(
        spreadsheetId=spreadsheet_id,
        range=rng,
        valueInputOption="USER_ENTERED",
        body={"values": rows},
    ).execute()

    return spreadsheet_id
