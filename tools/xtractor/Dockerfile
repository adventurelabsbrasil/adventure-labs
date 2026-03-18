FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY xtractor/ ./xtractor/
COPY .env.example .env.example

# Default: run Xtractor (override with docker run for one-off process_emails)
CMD ["python", "-m", "xtractor", "run"]
