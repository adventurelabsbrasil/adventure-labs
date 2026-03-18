"""Main loop and orchestration."""

import logging
import sys
from pathlib import Path

from apscheduler.schedulers.blocking import BlockingScheduler

from .chat_notifier import ChatNotifier
from .config import load_config
from .drive_client import DriveClient
from .gemini_analyzer import GeminiAnalyzer
from .gmail_client import GmailClient
from .sheets_client import SheetsClient
from .weekly_report import run_weekly_report

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[logging.StreamHandler(sys.stdout)],
)
logger = logging.getLogger(__name__)


def process_emails() -> None:
    """Poll Gmail for new emails with attachments and process them."""
    config = load_config()
    gmail = GmailClient(config)
    drive = DriveClient(config)
    sheets = SheetsClient(config)
    analyzer = GeminiAnalyzer(config)
    notifier = ChatNotifier(config)

    try:
        messages = gmail.list_emails_with_attachments(max_results=20, query="is:unread")
    except Exception as e:
        logger.error("Failed to list emails: %s", e)
        return

    if not messages:
        logger.debug("No new emails with attachments")
        return

    sheets.ensure_header_and_dropdown()

    for msg in messages:
        msg_id = msg["id"]
        if gmail.is_processed(msg_id):
            continue

        try:
            email_info = gmail.get_email_info(msg_id)
            if not email_info:
                gmail.mark_as_processed(msg_id)
                continue

            logger.info("Processing email: %s from %s", email_info.subject, email_info.sender_email)

            # 1. Analyze with Gemini
            analyzer.analyze_email(email_info)

            # 2. Upload to Drive
            email_info.drive_folder_link = drive.upload_email_attachments(email_info)

            # 3. Notify Chat: billing (if detected) and/or every processed email
            if any(d.contem_cobranca_financeira for d in email_info.doc_summaries):
                notifier.notify_billing_detected(email_info)
            notifier.notify_email_processed(email_info)

            # 4. Append to Sheets
            sheets.append_email_row(email_info)

            gmail.mark_as_processed(msg_id)
            logger.info("Processed: %s", msg_id)

        except Exception as e:
            logger.exception("Error processing email %s: %s", msg_id, e)


def run() -> None:
    """Run the main scheduler loop."""
    config = load_config()

    # Ensure we're in project root for .env and credentials
    project_root = Path(__file__).resolve().parent.parent
    import os
    if str(project_root) != os.getcwd():
        os.chdir(project_root)

    scheduler = BlockingScheduler()

    scheduler.add_job(
        process_emails,
        "interval",
        minutes=config.poll_interval_minutes,
        id="poll_gmail",
    )

    scheduler.add_job(
        run_weekly_report,
        "cron",
        day_of_week=config.weekly_report_day,
        hour=config.weekly_report_hour,
        minute=0,
        id="weekly_report",
    )

    logger.info(
        "Xtractor started. Polling every %d min, weekly report on day %d at %02d:00",
        config.poll_interval_minutes,
        config.weekly_report_day,
        config.weekly_report_hour,
    )

    # Run first poll immediately
    process_emails()

    scheduler.start()


if __name__ == "__main__":
    run()
