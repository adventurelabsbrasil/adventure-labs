#!/usr/bin/env python3
"""Quick test: list emails with/without attachments to verify Gmail connection."""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from xtractor.config import load_config
from xtractor.gmail_client import GmailClient


def main():
    config = load_config()
    gmail = GmailClient(config)

    print("=== Teste Gmail API ===\n")

    # Emails com anexo (não lidos)
    print("1. Emails NÃO LIDOS com anexo:")
    try:
        msgs = gmail.list_emails_with_attachments(max_results=5, query="is:unread")
        for m in msgs:
            info = gmail.get_email_info(m["id"])
            if info:
                print(f"   - [{info.sender_email}] {info.subject[:50]}... ({len(info.attachments)} anexo(s))")
            else:
                print(f"   - msg {m['id']} (sem anexos reais ou inline)")
        if not msgs:
            print("   (nenhum encontrado)")
    except Exception as e:
        print(f"   ERRO: {e}")

    # Emails com anexo (qualquer)
    print("\n2. Últimos 3 emails COM anexo (qualquer):")
    try:
        msgs = gmail.list_emails_with_attachments(max_results=3)
        for m in msgs:
            info = gmail.get_email_info(m["id"])
            if info:
                print(f"   - [{info.sender_email}] {info.subject[:50]}...")
        if not msgs:
            print("   (nenhum encontrado)")
    except Exception as e:
        print(f"   ERRO: {e}")

    print("\n=== Fim do teste ===")


if __name__ == "__main__":
    main()
