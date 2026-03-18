"""Gmail API client for reading emails with attachments."""

import base64
import re
from datetime import datetime
from email.utils import parsedate_to_datetime
from pathlib import Path
from typing import Optional

from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError

from .config import Config
from .models import AttachmentInfo, EmailInfo

SCOPES = [
    "https://www.googleapis.com/auth/gmail.readonly",
    "https://www.googleapis.com/auth/drive.file",
    "https://www.googleapis.com/auth/spreadsheets",
]


def _get_credentials(config: Config) -> Credentials:
    """Obtain and refresh OAuth2 credentials."""
    creds = None
    token_path = config.token_path
    credentials_path = config.credentials_path

    if token_path.exists():
        creds = Credentials.from_authorized_user_file(str(token_path), SCOPES)

    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            if not credentials_path.exists():
                raise FileNotFoundError(
                    f"Credentials file not found: {credentials_path}. "
                    "Download OAuth2 credentials from Google Cloud Console and save as credentials.json"
                )
            flow = InstalledAppFlow.from_client_secrets_file(str(credentials_path), SCOPES)
            creds = flow.run_local_server(port=0)

        token_path.parent.mkdir(parents=True, exist_ok=True)
        with open(token_path, "w") as token:
            token.write(creds.to_json())

    return creds


def _decode_header_value(header: str) -> str:
    """Decode MIME encoded header value."""
    if not header:
        return ""
    decoded_parts = []
    for part in header.split():
        if part.startswith("=?") and part.endswith("?="):
            try:
                decoded_parts.append(part)
            except Exception:
                decoded_parts.append(part)
        else:
            decoded_parts.append(part)
    return " ".join(decoded_parts)


def _get_header(headers: list[dict], name: str) -> str:
    """Get header value by name (case-insensitive)."""
    name_lower = name.lower()
    for h in headers:
        if h.get("name", "").lower() == name_lower:
            return h.get("value", "")
    return ""


def _parse_email_address(header_value: str) -> tuple[str, str]:
    """Extract display name and email from From header."""
    if not header_value:
        return ("", "")
    match = re.match(r"^(?:(.+?)\s*<([^>]+)>|([^@\s]+@[^\s]+))$", header_value.strip())
    if match:
        if match.group(1):
            return (match.group(1).strip().strip('"'), match.group(2).strip())
        return ("", match.group(3).strip())
    return ("", header_value.strip())


def _decode_body(payload: dict) -> str:
    """Extract plain text body from email payload."""
    if "body" in payload and payload["body"].get("data"):
        return base64.urlsafe_b64decode(payload["body"]["data"]).decode("utf-8", errors="replace")
    if "parts" in payload:
        for part in payload["parts"]:
            if part.get("mimeType") == "text/plain" and part.get("body", {}).get("data"):
                return base64.urlsafe_b64decode(part["body"]["data"]).decode("utf-8", errors="replace")
        for part in payload["parts"]:
            if part.get("mimeType") == "text/html" and part.get("body", {}).get("data"):
                html = base64.urlsafe_b64decode(part["body"]["data"]).decode("utf-8", errors="replace")
                import re
                text = re.sub(r"<[^>]+>", " ", html)
                text = re.sub(r"\s+", " ", text).strip()
                return text
    return ""


def _get_attachments_from_payload(
    service,
    user_id: str,
    msg_id: str,
    payload: dict,
) -> list[AttachmentInfo]:
    """Extract attachments from email payload."""
    attachments = []
    parts = payload.get("parts", [])
    if not parts and payload.get("filename") and payload.get("body", {}).get("attachmentId"):
        parts = [payload]

    for part in parts:
        filename = part.get("filename")
        if not filename or not part.get("body", {}).get("attachmentId"):
            continue

        attachment_id = part["body"]["attachmentId"]
        mime_type = part.get("mimeType", "application/octet-stream")

        try:
            att = (
                service.users()
                .messages()
                .attachments()
                .get(userId=user_id, messageId=msg_id, id=attachment_id)
                .execute()
            )
            data = base64.urlsafe_b64decode(att["data"])
            attachments.append(
                AttachmentInfo(
                    filename=filename,
                    mime_type=mime_type,
                    size=len(data),
                    data=data,
                    attachment_id=attachment_id,
                )
            )
        except HttpError as e:
            # Skip attachments we can't fetch (e.g. inline images)
            pass

    return attachments


def _parse_timestamp(date_header: str) -> datetime:
    """Parse email date header to datetime."""
    if not date_header:
        return datetime.utcnow()
    try:
        return parsedate_to_datetime(date_header)
    except Exception:
        return datetime.utcnow()


class GmailClient:
    """Client for Gmail API operations."""

    def __init__(self, config: Config):
        self.config = config
        self._service = None
        self._processed_ids: set[str] = set()

    def _get_service(self):
        if self._service is None:
            creds = _get_credentials(self.config)
            self._service = build("gmail", "v1", credentials=creds)
        return self._service

    def list_emails_with_attachments(
        self,
        max_results: int = 50,
        query: Optional[str] = None,
        label_ids: Optional[list[str]] = None,
    ) -> list[dict]:
        """
        List email message IDs that have attachments.
        Returns list of message dicts with id and threadId.
        """
        service = self._get_service()
        q = "has:attachment"
        if query:
            q = f"{q} {query}"

        try:
            result = (
                service.users()
                .messages()
                .list(
                    userId="me",
                    q=q,
                    maxResults=max_results,
                    labelIds=label_ids or [],
                )
                .execute()
            )
            messages = result.get("messages", [])
            return messages
        except HttpError as e:
            raise RuntimeError(f"Gmail API error: {e}") from e

    def get_email_info(self, message_id: str) -> Optional[EmailInfo]:
        """
        Fetch full email including body and attachments.
        Returns None if email has no attachments (e.g. inline images only).
        """
        service = self._get_service()

        try:
            msg = (
                service.users()
                .messages()
                .get(userId="me", id=message_id, format="full")
                .execute()
            )
        except HttpError as e:
            raise RuntimeError(f"Gmail API error: {e}") from e

        payload = msg.get("payload", {})
        headers = payload.get("headers", [])

        from_header = _get_header(headers, "From")
        sender_name, sender_email = _parse_email_address(from_header)
        subject = _get_header(headers, "Subject")
        date_header = _get_header(headers, "Date")
        timestamp = _parse_timestamp(date_header)

        attachments = _get_attachments_from_payload(service, "me", message_id, payload)
        if not attachments:
            return None

        body_text = _decode_body(payload)

        return EmailInfo(
            message_id=message_id,
            thread_id=msg.get("threadId", ""),
            sender_name=sender_name or sender_email,
            sender_email=sender_email,
            subject=subject,
            timestamp=timestamp,
            body_text=body_text,
            attachments=attachments,
        )

    def mark_as_processed(self, message_id: str) -> None:
        """Track processed message to avoid reprocessing."""
        self._processed_ids.add(message_id)

    def is_processed(self, message_id: str) -> bool:
        """Check if message was already processed in this session."""
        return message_id in self._processed_ids
