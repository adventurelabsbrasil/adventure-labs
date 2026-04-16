"""
HYDRA LLM Client — Wrapper do Anthropic SDK com prompt caching e fallback.
Isola toda a lógica de chamada de LLM do HYDRA. Read-only da stack Adventure.
"""

from __future__ import annotations

import json
import time
from typing import Any, Optional

try:
    import anthropic
    HAS_ANTHROPIC = True
except ImportError:
    HAS_ANTHROPIC = False

from project_hydra.core import config
from project_hydra.core.logger import get_logger

logger = get_logger("llm_client")


# ─── Cost tracking (USD) ──────────────────────────────────────────────────────
# Claude Sonnet 4.6: $3/MTok input, $15/MTok output, cached $0.30/MTok
_COST_PER_MILLION = {
    "claude-sonnet-4-6": {"input": 3.0, "output": 15.0, "cache_read": 0.30},
    "claude-haiku-4-5-20251001": {"input": 0.25, "output": 1.25, "cache_read": 0.03},
}
_session_cost_usd: float = 0.0
_session_tokens: dict[str, int] = {"input": 0, "output": 0, "cache_read": 0}


def get_session_cost() -> dict[str, Any]:
    return {
        "cost_usd": round(_session_cost_usd, 4),
        "tokens": _session_tokens.copy(),
        "estimated_brl": round(_session_cost_usd * 5.0, 2),  # aprox. USD→BRL
    }


def _track_usage(model: str, usage: Any) -> None:
    global _session_cost_usd
    costs = _COST_PER_MILLION.get(model, _COST_PER_MILLION["claude-sonnet-4-6"])

    input_tokens = getattr(usage, "input_tokens", 0)
    output_tokens = getattr(usage, "output_tokens", 0)
    cache_read = getattr(usage, "cache_read_input_tokens", 0)
    cache_write = getattr(usage, "cache_creation_input_tokens", 0)

    _session_tokens["input"] += input_tokens
    _session_tokens["output"] += output_tokens
    _session_tokens["cache_read"] += cache_read

    cost = (
        (input_tokens / 1_000_000) * costs["input"]
        + (output_tokens / 1_000_000) * costs["output"]
        + (cache_read / 1_000_000) * costs["cache_read"]
    )
    _session_cost_usd += cost
    logger.debug(
        f"Tokens: in={input_tokens} out={output_tokens} "
        f"cache_read={cache_read} cache_write={cache_write} | "
        f"Custo: ${cost:.4f} (total: ${_session_cost_usd:.4f})"
    )


# ─── Core call function ───────────────────────────────────────────────────────

def call_llm(
    prompt: str,
    system_prompt: str,
    model: Optional[str] = None,
    max_tokens: int = 4096,
    cache_system: bool = True,
    response_format: str = "text",  # "text" | "json"
    temperature: float = 0.7,
    retries: int = 2,
) -> str:
    """
    Faz uma chamada ao LLM com prompt caching ativado por padrão.
    Retorna o texto da resposta ou string JSON.
    Em modo DRY_RUN ou sem API key, retorna mock.
    """
    if config.DRY_RUN or not config.USE_LLM:
        logger.info(f"[DRY_RUN/NO_KEY] Simulando chamada LLM — prompt: {prompt[:80]}...")
        return _mock_response(prompt, response_format)

    if not HAS_ANTHROPIC:
        raise ImportError("anthropic não instalado. Execute: pip install anthropic")

    target_model = model or config.PRIMARY_MODEL
    client = anthropic.Anthropic(api_key=config.ANTHROPIC_API_KEY)

    # Monta system com cache se solicitado
    system_block: list[dict] | str
    if cache_system:
        system_block = [
            {
                "type": "text",
                "text": system_prompt,
                "cache_control": {"type": "ephemeral"},
            }
        ]
    else:
        system_block = system_prompt

    for attempt in range(retries + 1):
        try:
            response = client.messages.create(
                model=target_model,
                max_tokens=max_tokens,
                system=system_block,
                messages=[{"role": "user", "content": prompt}],
            )
            _track_usage(target_model, response.usage)
            text = response.content[0].text

            if response_format == "json":
                # Extrai bloco JSON se vier em markdown
                text = _extract_json(text)

            return text

        except anthropic.RateLimitError:
            wait = 2 ** (attempt + 1)
            logger.warning(f"Rate limit atingido. Aguardando {wait}s (tentativa {attempt+1})...")
            time.sleep(wait)
        except anthropic.APIError as e:
            if attempt == retries:
                # Tenta fallback model
                if target_model != config.FALLBACK_MODEL:
                    logger.warning(f"Erro no modelo principal, tentando fallback: {config.FALLBACK_MODEL}")
                    return call_llm(
                        prompt=prompt,
                        system_prompt=system_prompt,
                        model=config.FALLBACK_MODEL,
                        max_tokens=max_tokens,
                        cache_system=cache_system,
                        response_format=response_format,
                        retries=0,
                    )
                raise RuntimeError(f"LLM falhou após {retries+1} tentativas: {e}") from e
            time.sleep(2 ** attempt)

    return ""


def call_llm_json(
    prompt: str,
    system_prompt: str,
    schema_hint: str = "",
    **kwargs: Any,
) -> dict:
    """Atalho para chamadas que esperam JSON estruturado."""
    if schema_hint:
        prompt = f"{prompt}\n\nResponda SOMENTE com JSON válido seguindo este schema:\n{schema_hint}"

    raw = call_llm(prompt, system_prompt, response_format="json", **kwargs)

    try:
        return json.loads(raw)
    except json.JSONDecodeError as e:
        logger.error(f"Resposta LLM não é JSON válido: {raw[:200]}...")
        raise ValueError(f"LLM retornou JSON inválido: {e}") from e


# ─── Helpers ──────────────────────────────────────────────────────────────────

def _extract_json(text: str) -> str:
    """Extrai bloco JSON de resposta com markdown code fences."""
    text = text.strip()
    if "```json" in text:
        start = text.index("```json") + 7
        end = text.rindex("```")
        return text[start:end].strip()
    if "```" in text:
        start = text.index("```") + 3
        end = text.rindex("```")
        return text[start:end].strip()
    # Tenta encontrar primeiro { ou [
    for i, c in enumerate(text):
        if c in "{[":
            return text[i:]
    return text


def _mock_response(prompt: str, response_format: str) -> str:
    """Resposta mock para DRY_RUN ou sem API key."""
    if response_format == "json":
        return json.dumps({
            "status": "mock",
            "message": "DRY_RUN ativo — resposta simulada pelo HYDRA",
            "prompt_preview": prompt[:100],
        })
    return (
        f"[HYDRA DRY_RUN] Resposta simulada para: {prompt[:100]}...\n"
        "Configure HYDRA_ANTHROPIC_API_KEY para respostas reais."
    )
