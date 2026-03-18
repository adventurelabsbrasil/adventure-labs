"""Google Drive API client for uploading attachments."""

import re
from pathlib import Path

from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.http import MediaIoBaseUpload

from .config import Config
from .gmail_client import _get_credentials
from .models import AttachmentInfo, EmailInfo

SCOPES = [
    "https://www.googleapis.com/auth/gmail.readonly",
    "https://www.googleapis.com/auth/drive.file",
    "https://www.googleapis.com/auth/spreadsheets",
]


def _sanitize_filename(name: str, max_length: int = 100) -> str:
    """Sanitize string for use in folder/file names."""
    sanitized = re.sub(r'[<>:"/\\|?*]', "_", name)
    sanitized = re.sub(r"\s+", " ", sanitized).strip()
    return sanitized[:max_length] if len(sanitized) > max_length else sanitized


class DriveClient:
    """Client for Google Drive API operations."""

    def __init__(self, config: Config):
        self.config = config
        self._service = None

    def _get_service(self):
        if self._service is None:
            creds = _get_credentials(self.config)
            self._service = build("drive", "v3", credentials=creds)
        return self._service

    def create_folder_for_email(self, email_info: EmailInfo) -> str:
        """
        Create a folder for the email's attachments and return the folder ID.
        Folder name: {timestamp}_{remetente}_{assunto_truncado}
        """
        service = self._get_service()
        timestamp_str = email_info.timestamp.strftime("%Y-%m-%d_%H%M")
        sender = _sanitize_filename(email_info.sender_name or email_info.sender_email, 30)
        subject = _sanitize_filename(email_info.subject, 50)
        folder_name = f"{timestamp_str}_{sender}_{subject}"

        metadata = {
            "name": folder_name,
            "mimeType": "application/vnd.google-apps.folder",
            "parents": [self.config.google_drive_folder_id],
        }

        folder = service.files().create(body=metadata, fields="id").execute()
        return folder["id"]

    def upload_attachment(self, folder_id: str, attachment: AttachmentInfo) -> str:
        """Upload a single attachment to a folder. Returns the file ID."""
        service = self._get_service()

        import io
        file_metadata = {
            "name": attachment.filename,
            "parents": [folder_id],
        }

        media = MediaIoBaseUpload(
            io.BytesIO(attachment.data),
            mimetype=attachment.mime_type,
            resumable=True,
        )

        file = (
            service.files()
            .create(body=file_metadata, media_body=media, fields="id")
            .execute()
        )
        return file["id"]

    def get_folder_link(self, folder_id: str) -> str:
        """Get shareable link for a folder."""
        return f"https://drive.google.com/drive/folders/{folder_id}"

    def upload_email_attachments(self, email_info: EmailInfo) -> str:
        """
        Create folder for email, upload all attachments, return folder link.
        """
        folder_id = self.create_folder_for_email(email_info)

        for attachment in email_info.attachments:
            self.upload_attachment(folder_id, attachment)

        return self.get_folder_link(folder_id)
