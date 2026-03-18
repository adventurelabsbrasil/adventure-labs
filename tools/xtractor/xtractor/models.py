"""Data models for Xtractor."""

from dataclasses import dataclass, field
from datetime import datetime
from typing import Optional


@dataclass
class AttachmentInfo:
    """Information about an email attachment."""

    filename: str
    mime_type: str
    size: int
    data: bytes
    attachment_id: str


@dataclass
class DocSummary:
    """Summary of an analyzed document."""

    filename: str
    summary: str
    category: str
    contem_cobranca_financeira: bool


@dataclass
class EmailConnections:
    """Identified connections from email body analysis."""

    connections: list[str]
    context: str


@dataclass
class EmailInfo:
    """Full information about a processed email."""

    message_id: str
    thread_id: str
    sender_name: str
    sender_email: str
    subject: str
    timestamp: datetime
    body_text: str
    attachments: list[AttachmentInfo] = field(default_factory=list)
    doc_summaries: list[DocSummary] = field(default_factory=list)
    connections: Optional[EmailConnections] = None
    drive_folder_link: Optional[str] = None
    category: Optional[str] = None
