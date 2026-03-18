"""Google Chat webhook notifications."""

import logging

import requests

from .config import Config
from .models import EmailInfo

logger = logging.getLogger(__name__)


class ChatNotifier:
    """Sends notifications to Google Chat via webhook."""

    def __init__(self, config: Config):
        self.config = config
        self.webhook_url = config.google_chat_webhook_url

    def _send(self, text: str) -> bool:
        """Send message to webhook. Returns True on success."""
        if not self.webhook_url:
            logger.debug("No webhook URL configured, skipping Chat notification")
            return False
        try:
            resp = requests.post(
                self.webhook_url,
                json={"text": text},
                headers={"Content-Type": "application/json; charset=UTF-8"},
                timeout=10,
            )
            if resp.status_code != 200:
                logger.warning("Chat webhook returned %s: %s", resp.status_code, resp.text[:200])
                return False
            return True
        except Exception as e:
            logger.warning("Chat notification failed: %s", e)
            return False

    def notify_email_processed(self, email_info: EmailInfo) -> bool:
        """Send notification for every processed email."""
        summary_preview = ""
        if email_info.doc_summaries:
            first = email_info.doc_summaries[0]
            summary_preview = f"\nResumo: {first.summary[:150]}..." if len(first.summary) > 150 else f"\nResumo: {first.summary}"
        text = (
            "✅ *Email processado*\n"
            f"*De:* {email_info.sender_name or email_info.sender_email}\n"
            f"*Assunto:* {email_info.subject}\n"
            f"*Anexos:* {len(email_info.attachments)}{summary_preview}\n"
            f"*Drive:* {email_info.drive_folder_link or 'N/A'}"
        )
        return self._send(text)

    def notify_billing_detected(self, email_info: EmailInfo) -> bool:
        """
        Send notification when financial billing is detected in attachments.
        Returns True if notification was sent successfully.
        """
        if not self.webhook_url:
            return False

        billing_docs = [
            d for d in email_info.doc_summaries
            if d.contem_cobranca_financeira
        ]
        if not billing_docs:
            return False

        summary_lines = "\n".join(
            f"• {d.filename}: {d.summary[:200]}..." if len(d.summary) > 200 else f"• {d.filename}: {d.summary}"
            for d in billing_docs
        )

        text = (
            "⚠️ *Cobrança financeira detectada*\n\n"
            f"*Remetente:* {email_info.sender_name or email_info.sender_email}\n"
            f"*Assunto:* {email_info.subject}\n\n"
            f"*Resumo dos anexos:*\n{summary_lines}\n\n"
            f"*Pasta Drive:* {email_info.drive_folder_link or 'N/A'}"
        )
        return self._send(text)
