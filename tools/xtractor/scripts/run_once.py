#!/usr/bin/env python3
"""Executa processamento de emails UMA vez (sem scheduler)."""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from xtractor.main import process_emails

if __name__ == "__main__":
    print("Executando processamento (uma rodada)...\n")
    process_emails()
    print("\nConcluído.")
