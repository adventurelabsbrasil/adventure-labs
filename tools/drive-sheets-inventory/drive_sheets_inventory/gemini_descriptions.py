"""Resumo curto de planilhas via Gemini API (REST, sem dependência extra)."""

from __future__ import annotations

import json
import re
import time
import urllib.error
import urllib.parse
import urllib.request
from typing import Callable

from google.oauth2.credentials import Credentials

from .drive_list import SheetFile
from .sheet_snippet import build_context_text, fetch_sheet_preview

DEFAULT_MODEL = "gemini-2.0-flash"


def _call_gemini(api_key: str, model: str, user_text: str) -> str:
    q = urllib.parse.urlencode({"key": api_key})
    url = (
        f"https://generativelanguage.googleapis.com/v1beta/models/"
        f"{model}:generateContent?{q}"
    )
    prompt = (
        "Você cataloga planilhas Google Sheets. Com base no nome do arquivo e na amostra de "
        "dados abaixo, responda com UMA frase curta em português (máximo 200 caracteres) "
        "dizendo claramente para que serve a planilha (ex.: fluxo de caixa, lista de leads, "
        "cronograma de projeto). Se a amostra estiver vazia, infira só pelo nome das abas e "
        "do arquivo. Sem aspas, sem emojis, sem markdown.\n\n"
        f"{user_text}"
    )
    body = {
        "contents": [{"role": "user", "parts": [{"text": prompt}]}],
        "generationConfig": {
            "maxOutputTokens": 256,
            "temperature": 0.25,
        },
    }
    req = urllib.request.Request(
        url,
        data=json.dumps(body).encode("utf-8"),
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    for attempt in range(4):
        try:
            with urllib.request.urlopen(req, timeout=90) as resp:
                data = json.loads(resp.read().decode())
            break
        except urllib.error.HTTPError as e:
            if e.code == 429 and attempt < 3:
                time.sleep(2 ** attempt)
                continue
            raise

    candidates = data.get("candidates") or []
    if not candidates:
        return "[Gemini não retornou texto]"
    parts = (candidates[0].get("content") or {}).get("parts") or []
    texts = [p.get("text", "") for p in parts if isinstance(p, dict)]
    out = " ".join(t for t in texts if t).strip()
    out = re.sub(r"\s+", " ", out)
    return out[:500] if out else "[Resumo vazio]"


def enrich_items_with_gemini(
    items: list[SheetFile],
    creds: Credentials,
    api_key: str,
    model: str,
    *,
    skip_file_ids: set[str],
    sleep_s: float = 0.4,
    progress: Callable[[int, int, str], None] | None = None,
) -> None:
    """Preenche `description` de cada item com resumo da IA (lê amostra via Sheets API)."""
    n = len(items)
    for i, it in enumerate(items):
        if it.file_id in skip_file_ids:
            it.description = it.description or "Planilha de inventário (gerada pelo script)."
            if progress:
                progress(i + 1, n, it.name)
            continue
        tabs, cells, total_tabs = fetch_sheet_preview(creds, it.file_id)
        ctx = build_context_text(it.name, tabs, total_tabs, cells)
        try:
            summary = _call_gemini(api_key, model, ctx)
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError, OSError) as e:
            reason = ""
            if isinstance(e, urllib.error.HTTPError):
                try:
                    reason = e.read().decode()[:200]
                except Exception:
                    reason = str(e.code)
            summary = f"[Erro Gemini: {type(e).__name__} {reason}]"
        except (json.JSONDecodeError, KeyError) as e:
            summary = f"[Erro ao interpretar resposta: {type(e).__name__}]"

        drive_note = (it.description or "").strip()
        if drive_note:
            it.description = f"{summary} | Drive: {drive_note[:180]}"
        else:
            it.description = summary
        if progress:
            progress(i + 1, n, it.name)
        if i < n - 1:
            time.sleep(sleep_s)
