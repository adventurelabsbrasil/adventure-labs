"""Gemini-powered document and email body analysis using google-genai SDK."""

import json
import logging
import re
from pathlib import Path

from google import genai
from google.genai import types

from .config import Config
from .models import AttachmentInfo, DocSummary, EmailConnections, EmailInfo

logger = logging.getLogger(__name__)

SUPPORTED_DOC_MIMES = {
    "application/pdf",
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    "text/plain",
    "text/csv",
    "application/json",
    "image/png",
    "image/jpeg",
    "image/webp",
    "image/gif",
}


def _is_supported_document(mime_type: str, filename: str) -> bool:
    if mime_type in SUPPORTED_DOC_MIMES:
        return True
    ext = Path(filename).suffix.lower()
    return ext in {".pdf", ".docx", ".txt", ".csv", ".json", ".png", ".jpg", ".jpeg", ".webp", ".gif"}


class GeminiAnalyzer:
    """Analyzes documents and email bodies using Gemini (google-genai)."""

    def __init__(self, config: Config):
        self.config = config
        self.client = genai.Client(api_key=config.gemini_api_key)

    def analyze_attachment(self, attachment: AttachmentInfo) -> DocSummary:
        """Analyze a single attachment and return summary, category, and billing flag."""
        if not _is_supported_document(attachment.mime_type, attachment.filename):
            return DocSummary(
                filename=attachment.filename,
                summary=f"[Arquivo não suportado para análise: {attachment.mime_type}]",
                category="Outros",
                contem_cobranca_financeira=False,
            )

        prompt = """Analise este documento e retorne APENAS um JSON válido no formato:
{
  "resumo": "breve resumo do conteúdo em português (1-3 frases)",
  "categoria": "uma de: Fatura, Contrato, Relatório, Proposta, Outros",
  "contem_cobranca_financeira": true ou false
}

contem_cobranca_financeira deve ser true SE o documento contiver informações de cobrança, fatura, boleto, pagamento devido, valores a pagar, ou similares."""

        try:
            part = types.Part.from_bytes(data=attachment.data, mime_type=attachment.mime_type)
            response = self.client.models.generate_content(
                model=self.config.gemini_model,
                contents=[part, prompt],
            )
            text = getattr(response, "text", None) or ""
            text = (text or "").strip()

            if not text:
                return DocSummary(
                    filename=attachment.filename,
                    summary="[Resposta vazia do Gemini]",
                    category="Outros",
                    contem_cobranca_financeira=False,
                )

            json_match = re.search(r"\{[\s\S]*?\}", text)
            if json_match:
                try:
                    data = json.loads(json_match.group())
                    return DocSummary(
                        filename=attachment.filename,
                        summary=str(data.get("resumo", text[:500])).strip() or text[:300],
                        category=str(data.get("categoria", "Outros")).strip() or "Outros",
                        contem_cobranca_financeira=bool(data.get("contem_cobranca_financeira", False)),
                    )
                except json.JSONDecodeError:
                    pass

            return DocSummary(
                filename=attachment.filename,
                summary=text[:500] if text else "[Análise indisponível]",
                category="Outros",
                contem_cobranca_financeira=False,
            )

        except Exception as e:
            err_msg = str(e)
            if "blocked" in err_msg.lower() or "safety" in err_msg.lower():
                summary_msg = "[Conteúdo bloqueado ou indisponível]"
            else:
                summary_msg = f"[Erro na análise: {err_msg[:200]}]"
            logger.warning("Gemini analysis failed for %s: %s", attachment.filename, e)
            return DocSummary(
                filename=attachment.filename,
                summary=summary_msg,
                category="Outros",
                contem_cobranca_financeira=False,
            )

    def analyze_email_body(self, email_info: EmailInfo) -> EmailConnections:
        """Analyze email body to identify connections with other emails."""
        body = email_info.body_text or ""
        subject = email_info.subject or ""
        sender = email_info.sender_name or email_info.sender_email or ""

        if not body.strip() and not subject:
            return EmailConnections(connections=[], context="")

        prompt = f"""Analise este email (assunto: {subject}, de: {sender}) e identifique possíveis conexões com outros emails ou conversas.

Corpo do email:
{body[:3000]}

Retorne APENAS um JSON válido:
{{
  "conexoes": ["lista de strings descrevendo conexões identificadas, ex: referência a email anterior, thread de discussão, etc."],
  "contexto": "breve descrição do contexto geral da conversa em português"
}}

Se não houver conexões claras, retorne conexoes vazia e contexto com resumo do assunto."""

        try:
            response = self.client.models.generate_content(
                model=self.config.gemini_model,
                contents=prompt,
            )
            text = getattr(response, "text", None) or ""
            text = text.strip()
            json_match = re.search(r"\{[\s\S]*\}", text)
            if json_match:
                data = json.loads(json_match.group())
                return EmailConnections(
                    connections=data.get("conexoes", []) or [],
                    context=data.get("contexto", "") or "",
                )
        except Exception as e:
            logger.debug("Email body analysis failed: %s", e)

        return EmailConnections(
            connections=[],
            context=(body[:300] if body else "") or "[Contexto indisponível]",
        )

    def analyze_email(self, email_info: EmailInfo) -> EmailInfo:
        """Full analysis: attachments + body, returns updated EmailInfo."""
        doc_summaries = []
        for att in email_info.attachments:
            summary = self.analyze_attachment(att)
            doc_summaries.append(summary)

        categories = [d.category for d in doc_summaries if d.category and d.category != "Outros"]
        category = categories[0] if categories else "Outros"

        email_info.doc_summaries = doc_summaries
        email_info.category = category
        email_info.connections = self.analyze_email_body(email_info)

        return email_info
