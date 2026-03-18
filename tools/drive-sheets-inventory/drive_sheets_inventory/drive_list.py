"""Lista planilhas no Drive (próprias e compartilhadas)."""

from __future__ import annotations

from dataclasses import dataclass
from typing import Any, Literal

from google.oauth2.credentials import Credentials
from googleapiclient.discovery import build

MIME_SHEET = "application/vnd.google-apps.spreadsheet"
FIELDS = "nextPageToken, files(id, name, description, createdTime, modifiedTime, owners(emailAddress), webViewLink)"


@dataclass
class SheetFile:
    file_id: str
    name: str
    description: str
    created_time: str
    modified_time: str
    owner_emails: str
    web_view_link: str
    origin: Literal["Próprio", "Compartilhado comigo"]


def _list_query(
    drive: Any,
    q: str,
    *,
    include_shared_drives: bool,
) -> list[dict[str, Any]]:
    out: list[dict[str, Any]] = []
    page_token: str | None = None
    kwargs: dict[str, Any] = {
        "q": q,
        "spaces": "drive",
        "fields": FIELDS,
        "pageSize": 1000,
        "supportsAllDrives": include_shared_drives,
        "includeItemsFromAllDrives": include_shared_drives,
    }
    while True:
        if page_token:
            kwargs["pageToken"] = page_token
        resp = drive.files().list(**kwargs).execute()
        out.extend(resp.get("files", []))
        page_token = resp.get("nextPageToken")
        if not page_token:
            break
    return out


def collect_spreadsheets(
    creds: Credentials,
    phase: Literal["all", "owned", "shared"],
    *,
    include_shared_drives: bool = False,
) -> list[SheetFile]:
    drive = build("drive", "v3", credentials=creds, cache_discovery=False)

    owned_raw: list[dict[str, Any]] = []
    shared_raw: list[dict[str, Any]] = []

    if phase in ("all", "owned"):
        owned_raw = _list_query(
            drive,
            f"mimeType='{MIME_SHEET}' and 'me' in owners and trashed=false",
            include_shared_drives=include_shared_drives,
        )
    if phase in ("all", "shared"):
        shared_raw = _list_query(
            drive,
            f"mimeType='{MIME_SHEET}' and sharedWithMe=true and trashed=false",
            include_shared_drives=include_shared_drives,
        )

    by_id: dict[str, dict[str, Any]] = {}
    origin_by_id: dict[str, Literal["Próprio", "Compartilhado comigo"]] = {}

    for f in owned_raw:
        fid = f["id"]
        by_id[fid] = f
        origin_by_id[fid] = "Próprio"

    for f in shared_raw:
        fid = f["id"]
        if fid in by_id:
            continue
        by_id[fid] = f
        origin_by_id[fid] = "Compartilhado comigo"

    result: list[SheetFile] = []
    for fid, f in by_id.items():
        owners = f.get("owners") or []
        emails = ", ".join(o.get("emailAddress", "") for o in owners if o)
        result.append(
            SheetFile(
                file_id=fid,
                name=f.get("name") or "(sem nome)",
                description=(f.get("description") or "").strip(),
                created_time=f.get("createdTime") or "",
                modified_time=f.get("modifiedTime") or "",
                owner_emails=emails,
                web_view_link=f.get("webViewLink") or "",
                origin=origin_by_id[fid],
            )
        )

    result.sort(key=lambda x: x.modified_time or "", reverse=True)
    return result
