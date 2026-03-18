"""Google Sheets API client for inserting rows and dropdowns."""

from typing import Optional

from .config import Config
from .gmail_client import _get_credentials
from .models import EmailInfo

SCOPES = [
    "https://www.googleapis.com/auth/gmail.readonly",
    "https://www.googleapis.com/auth/drive.file",
    "https://www.googleapis.com/auth/spreadsheets",
]


class SheetsClient:
    """Client for Google Sheets API operations."""

    def __init__(self, config: Config):
        self.config = config
        self._service = None

    def _get_service(self):
        if self._service is None:
            creds = _get_credentials(self.config)
            from googleapiclient.discovery import build
            self._service = build("sheets", "v4", credentials=creds)
        return self._service

    def _get_first_sheet_name(self) -> str:
        """Get the name of the first sheet in the spreadsheet."""
        service = self._get_service()
        metadata = service.spreadsheets().get(
            spreadsheetId=self.config.google_sheets_id,
        ).execute()
        sheets = metadata.get("sheets", [])
        if sheets:
            return sheets[0]["properties"]["title"]
        return "Sheet1"

    def _range(self, sheet_name: str, range_spec: str) -> str:
        """Format range for Sheets API. Use quoted name for special chars (spaces, accents)."""
        safe_chars = set("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_")
        if any(c not in safe_chars for c in sheet_name):
            return f"'{sheet_name.replace(chr(39), chr(39) + chr(39))}'!{range_spec}"
        return f"{sheet_name}!{range_spec}"

    def ensure_header_and_dropdown(self, sheet_name: Optional[str] = None) -> None:
        """
        Ensure the spreadsheet has headers and category dropdown.
        Creates headers if sheet is empty.
        Uses range without sheet name (A1:G1) to avoid locale/encoding parse errors.
        """
        service = self._get_service()
        spreadsheet_id = self.config.google_sheets_id
        sheet_name = sheet_name or self._get_first_sheet_name()

        # Range without sheet name = first sheet (avoids "Unable to parse range" with PT-BR names)
        range_name = "A1:G1"
        result = service.spreadsheets().values().get(
            spreadsheetId=spreadsheet_id,
            range=range_name,
        ).execute()
        values = result.get("values", [])

        if not values:
            headers = [
                "Timestamp",
                "Remetente",
                "Título do Email",
                "Categoria",
                "Resumo dos Documentos",
                "Link Pasta Drive",
                "Conexões Identificadas",
            ]
            service.spreadsheets().values().update(
                spreadsheetId=spreadsheet_id,
                range=range_name,
                valueInputOption="USER_ENTERED",
                body={"values": [headers]},
            ).execute()

        self._setup_category_dropdown(sheet_name)

    def _setup_category_dropdown(self, sheet_name: str) -> None:
        """Setup data validation for category column (D)."""
        service = self._get_service()
        spreadsheet_id = self.config.google_sheets_id

        sheet_metadata = (
            service.spreadsheets()
            .get(spreadsheetId=spreadsheet_id)
            .execute()
        )
        sheet_id = None
        for sheet in sheet_metadata.get("sheets", []):
            if sheet["properties"]["title"] == sheet_name:
                sheet_id = sheet["properties"]["sheetId"]
                break

        if sheet_id is None:
            return

        categories = self.config.sheet_categories
        requests = [
            {
                "setDataValidation": {
                    "range": {
                        "sheetId": sheet_id,
                        "startRowIndex": 1,
                        "endRowIndex": 1000,
                        "startColumnIndex": 3,
                        "endColumnIndex": 4,
                    },
                    "rule": {
                        "condition": {
                            "type": "ONE_OF_LIST",
                            "values": [{"userEnteredValue": c} for c in categories],
                        },
                        "showCustomUi": True,
                        "strict": False,
                    },
                }
            }
        ]
        service.spreadsheets().batchUpdate(
            spreadsheetId=spreadsheet_id,
            body={"requests": requests},
        ).execute()

    def append_email_row(
        self,
        email_info: EmailInfo,
        sheet_name: Optional[str] = None,
    ) -> None:
        """
        Append a new row with email data.
        Columns: A=Timestamp, B=Remetente, C=Título, D=Categoria, E=Resumo, F=Link Drive, G=Conexões
        """
        service = self._get_service()
        spreadsheet_id = self.config.google_sheets_id

        summary_text = "\n".join(
            f"- {d.filename}: {d.summary}" for d in email_info.doc_summaries
        ) if email_info.doc_summaries else ""

        connections_text = ""
        if email_info.connections:
            connections_text = "; ".join(email_info.connections.connections)
            if email_info.connections.context:
                connections_text = f"{connections_text} | Contexto: {email_info.connections.context}"

        category = email_info.category or self.config.sheet_categories[-1]
        drive_link = email_info.drive_folder_link or ""

        row = [
            email_info.timestamp.strftime("%Y-%m-%d %H:%M"),
            email_info.sender_name or email_info.sender_email,
            email_info.subject,
            category,
            summary_text,
            drive_link,
            connections_text,
        ]

        sheet_name = sheet_name or self._get_first_sheet_name()
        # Range without sheet name = first sheet
        range_name = "A:G"
        service.spreadsheets().values().append(
            spreadsheetId=spreadsheet_id,
            range=range_name,
            valueInputOption="USER_ENTERED",
            insertDataOption="INSERT_ROWS",
            body={"values": [row]},
        ).execute()
