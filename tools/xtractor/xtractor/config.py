"""Configuration management for Xtractor."""

from pathlib import Path
from typing import Optional

from pydantic import Field
from pydantic_settings import BaseSettings, SettingsConfigDict


class Config(BaseSettings):
    """Xtractor configuration loaded from environment variables."""

    model_config = SettingsConfigDict(
        env_file=".env",
        env_file_encoding="utf-8",
        case_sensitive=False,
        extra="ignore",
    )

    # Gmail
    gmail_credentials_path: str = Field(default="credentials.json", description="Path to OAuth2 credentials")
    gmail_token_path: str = Field(default="token.json", description="Path to OAuth2 token")

    # Google Drive
    google_drive_folder_id: str = Field(..., description="Base folder ID for storing attachments")

    # Google Sheets
    google_sheets_id: str = Field(..., description="Spreadsheet ID")

    # Gemini
    gemini_api_key: str = Field(..., description="Gemini API key")
    gemini_model: str = Field(default="gemini-1.5-flash", description="Gemini model name")

    # Google Chat
    google_chat_webhook_url: Optional[str] = Field(default=None, description="Webhook URL for Google Chat notifications")

    # Scheduler
    poll_interval_minutes: int = Field(default=5, ge=1, le=60, description="Minutes between Gmail polls")
    weekly_report_day: int = Field(default=6, ge=0, le=6, description="0=Sunday, 6=Saturday")
    weekly_report_hour: int = Field(default=9, ge=0, le=23, description="Hour to run weekly report (0-23)")

    # Categories for Sheets dropdown
    sheet_categories: list[str] = Field(
        default=["Fatura", "Contrato", "Relatório", "Proposta", "Outros"],
        description="Categories for the Sheets dropdown",
    )

    @property
    def credentials_path(self) -> Path:
        return Path(self.gmail_credentials_path)

    @property
    def token_path(self) -> Path:
        return Path(self.gmail_token_path)


def load_config(project_root: Optional[Path] = None) -> Config:
    """Load configuration from environment. Looks for .env in project root."""
    root = project_root or Path(__file__).resolve().parent.parent
    env_file = root / ".env"
    if not env_file.exists():
        env_file = root / ".env.example"
    return Config(_env_file=env_file)
