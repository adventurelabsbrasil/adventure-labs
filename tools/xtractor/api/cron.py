"""
Vercel serverless endpoint to trigger email processing.
Configure in vercel.json with cron schedule (e.g. every 5 min on Pro plan).
Uses CRON_SECRET for authorization.
"""

import os
import sys
from pathlib import Path

# Add project root to path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from http.server import BaseHTTPRequestHandler


class handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self._handle_request()

    def do_POST(self):
        self._handle_request()

    def _handle_request(self):
        # Verify cron secret (Vercel adds this header when invoking cron)
        auth = self.headers.get("Authorization", "")
        expected = os.environ.get("CRON_SECRET", "")
        if expected and auth != f"Bearer {expected}":
            self.send_response(401)
            self.send_header("Content-type", "application/json")
            self.end_headers()
            self.wfile.write(b'{"error":"unauthorized"}')
            return

        try:
            from xtractor.main import process_emails
            process_emails()
            self.send_response(200)
            self.send_header("Content-type", "application/json")
            self.end_headers()
            self.wfile.write(b'{"status":"ok"}')
        except Exception as e:
            self.send_response(500)
            self.send_header("Content-type", "application/json")
            self.end_headers()
            self.wfile.write(f'{{"error":"{str(e)}"}}'.encode("utf-8"))
