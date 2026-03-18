"""Weekly report generation."""

import logging
from datetime import datetime, timedelta

from .config import load_config
from .drive_client import DriveClient
from .gmail_client import _get_credentials
from .sheets_client import SheetsClient

logger = logging.getLogger(__name__)


def run_weekly_report() -> None:
    """
    Generate weekly report: summary of summaries, dashboard, compiled Drive folder.
    Runs on configured day/hour (e.g. Saturday 9am).
    """
    config = load_config()

    try:
        sheets = SheetsClient(config)
        drive = DriveClient(config)
        service = sheets._get_service()
        spreadsheet_id = config.google_sheets_id

        # Get data from main sheet (columns A-G)
        result = service.spreadsheets().values().get(
            spreadsheetId=spreadsheet_id,
            range="Sheet1!A2:G",
        ).execute()
        rows = result.get("values", [])

        if not rows:
            logger.info("No data for weekly report")
            return

        # Filter rows from last 7 days (column A = timestamp)
        week_ago = datetime.utcnow() - timedelta(days=7)
        recent_rows = []
        for row in rows:
            if len(row) >= 7:
                try:
                    ts_str = row[0]
                    ts = datetime.strptime(ts_str[:16], "%Y-%m-%d %H:%M")
                    if ts.replace(tzinfo=None) >= week_ago.replace(tzinfo=None):
                        recent_rows.append(row)
                except (ValueError, IndexError):
                    pass

        if not recent_rows:
            logger.info("No data from last week for report")
            return

        # Create "Relatório Semanal" sheet
        week_label = datetime.utcnow().strftime("%Y-%m-%d")
        sheet_name = f"Semana_{week_label}"

        body = {
            "requests": [
                {
                    "addSheet": {
                        "properties": {"title": sheet_name},
                    }
                }
            ]
        }
        try:
            service.spreadsheets().batchUpdate(
                spreadsheetId=spreadsheet_id,
                body=body,
            ).execute()
        except Exception as e:
            if "already exists" not in str(e).lower():
                logger.warning("Could not create sheet: %s", e)
            return

        # Headers
        headers = [
            "Data", "Remetente", "Assunto", "Categoria", "Resumo", "Link Drive", "Conexões",
        ]
        service.spreadsheets().values().update(
            spreadsheetId=spreadsheet_id,
            range=f"'{sheet_name}'!A1:G1",
            valueInputOption="USER_ENTERED",
            body={"values": [headers]},
        ).execute()

        # Data
        if recent_rows:
            service.spreadsheets().values().update(
                spreadsheetId=spreadsheet_id,
                range=f"'{sheet_name}'!A2:G{len(recent_rows) + 1}",
                valueInputOption="USER_ENTERED",
                body={"values": recent_rows},
            ).execute()

        # Add summary section
        summary_row = len(recent_rows) + 3
        summary_text = f"Resumo da semana ({week_label}): {len(recent_rows)} emails com anexos processados."
        service.spreadsheets().values().update(
            spreadsheetId=spreadsheet_id,
            range=f"'{sheet_name}'!A{summary_row}",
            valueInputOption="USER_ENTERED",
            body={"values": [[summary_text]]},
        ).execute()

        logger.info("Weekly report created: sheet '%s'", sheet_name)

    except Exception as e:
        logger.exception("Weekly report failed: %s", e)
