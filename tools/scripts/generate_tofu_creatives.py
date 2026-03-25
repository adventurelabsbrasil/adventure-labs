from __future__ import annotations

import random
import urllib.request
from pathlib import Path

from PIL import Image, ImageDraw, ImageFilter, ImageFont

OUT_DIR = Path("docs/clientes/adventure/criativos_tofu_2026-03")
FONT_DIR = Path(__file__).resolve().parent / "fonts" / "adventure_tofu"
SPACE_GROTESK_VF_URL = (
    "https://raw.githubusercontent.com/google/fonts/main/ofl/spacegrotesk/"
    "SpaceGrotesk%5Bwght%5D.ttf"
)
SPACE_GROTESK_VF_NAME = "SpaceGrotesk-wght.ttf"

COLORS = {
    "bg_top": (3, 20, 69),
    "bg_bottom": (4, 10, 20),
    "accent_red": (218, 0, 40),
    "accent_blue": (21, 118, 210),
    "card_fill": (12, 20, 40),
    "card_border": (255, 255, 255),
    "white": (245, 247, 250),
    "muted": (176, 186, 202),
}

# Copy em pt-BR (acentuação correta). Alinhado à matriz em docs/TOFU_CRIATIVOS_ADVENTURE_MATRIZ_2026-03.md
CREATIVES: list[tuple[str, str, str, str, str]] = [
    (
        "tofu01",
        "martech",
        "Seu marketing cresce ou só gira?",
        "Identifique os gargalos que travam o funil e destrave receita com método.",
        "Quero meu diagnóstico",
    ),
    (
        "tofu02",
        "martech",
        "Chega de marketing no escuro",
        "Estruture dados, mídia e automação para crescer com previsibilidade.",
        "Ver plano de crescimento",
    ),
    (
        "tofu03",
        "martech",
        "Escalar sem rastrear é arriscar",
        "Conecte tracking, CRM e operação para investir com clareza de ROI.",
        "Falar com especialista",
    ),
    (
        "tofu04",
        "martech",
        "Sua operação deveria gerar lucro",
        "Troque retrabalho por processo martech com decisão baseada em dados.",
        "Quero destravar o crescimento",
    ),
    (
        "tofu05",
        "martech",
        "Para quem já faturou e quer escalar",
        "Se a empresa já validou mercado, o próximo nível é eficiência operacional.",
        "Agendar diagnóstico",
    ),
    (
        "tofu06",
        "instagram",
        "Não é sobre likes. É sobre sistema.",
        "Conteúdo, dados e distribuição para posicionar a marca e converter melhor.",
        "Seguir @adventurelabs",
    ),
    (
        "tofu07",
        "instagram",
        "Marca forte reduz custo de aquisição",
        "Posicionamento certo aumenta a taxa de conversão em todo o funil.",
        "Ver no Instagram",
    ),
    (
        "tofu08",
        "instagram",
        "Performance não é aposta",
        "Entenda os pilares de growth, dados e operação que sustentam escala real.",
        "Acompanhar conteúdos",
    ),
    (
        "tofu09",
        "instagram",
        "Estratégia sem execução vira slide",
        "Veja como integrar decisão de negócio com stack martech no dia a dia.",
        "Seguir e aprender",
    ),
    (
        "tofu10",
        "instagram",
        "Mais leads não resolvem funil quebrado",
        "Primeiro ajuste a conversão; depois escale investimento com segurança.",
        "Salvar este post",
    ),
]


def ensure_space_grotesk_vf() -> Path:
    FONT_DIR.mkdir(parents=True, exist_ok=True)
    dest = FONT_DIR / SPACE_GROTESK_VF_NAME
    if not dest.exists() or dest.stat().st_size < 10_000:
        urllib.request.urlretrieve(SPACE_GROTESK_VF_URL, dest)
    return dest


def load_sg(size: int, weight: int) -> ImageFont.FreeTypeFont:
    path = ensure_space_grotesk_vf()
    font = ImageFont.truetype(str(path), size)
    w = max(300, min(700, weight))
    if hasattr(font, "set_variation_by_axes"):
        try:
            font.set_variation_by_axes([w])
        except (OSError, ValueError, TypeError):
            pass
    return font


def draw_vertical_gradient(img: Image.Image) -> None:
    """Gradiente vertical rápido (O(altura)); blobs e grão adicionam profundidade."""
    w, h = img.size
    draw = ImageDraw.Draw(img)
    c0, c2 = COLORS["bg_top"], COLORS["bg_bottom"]
    for y in range(h):
        t = y / max(h - 1, 1)
        r = int(c0[0] * (1 - t) + c2[0] * t)
        g = int(c0[1] * (1 - t) + c2[1] * t)
        b = int(c0[2] * (1 - t) + c2[2] * t)
        draw.line([(0, y), (w, y)], fill=(r, g, b))


def paste_soft_blob(
    base: Image.Image,
    center: tuple[float, float],
    rgb: tuple[int, int, int],
    diameter: int,
    blur: int,
    alpha: int,
) -> None:
    layer = Image.new("RGBA", base.size, (0, 0, 0, 0))
    d = ImageDraw.Draw(layer)
    cx, cy = center
    x0 = int(cx - diameter / 2)
    y0 = int(cy - diameter / 2)
    d.ellipse((x0, y0, x0 + diameter, y0 + diameter), fill=(*rgb, alpha))
    layer = layer.filter(ImageFilter.GaussianBlur(blur))
    base_rgba = base.convert("RGBA")
    base.paste(Image.alpha_composite(base_rgba, layer).convert("RGB"))


def add_film_grain(img: Image.Image, strength: float = 0.045) -> None:
    w, h = img.size
    sw, sh = max(1, w // 6), max(1, h // 6)
    data = bytes(random.randint(0, 255) for _ in range(sw * sh * 3))
    noise = Image.frombytes("RGB", (sw, sh), data, "raw", "RGB")
    noise = noise.resize((w, h), Image.Resampling.BILINEAR)
    blended = Image.blend(img, noise, strength)
    img.paste(blended)


def wrap_text(
    draw: ImageDraw.ImageDraw,
    text: str,
    font: ImageFont.FreeTypeFont,
    max_width: int,
) -> list[str]:
    words = text.split()
    lines: list[str] = []
    current = ""
    for word in words:
        probe = f"{current} {word}".strip()
        if draw.textlength(probe, font=font) <= max_width:
            current = probe
        else:
            if current:
                lines.append(current)
            current = word
    if current:
        lines.append(current)
    return lines


def line_height(draw: ImageDraw.ImageDraw, line: str, font: ImageFont.FreeTypeFont) -> int:
    bbox = draw.textbbox((0, 0), line, font=font)
    return bbox[3] - bbox[1]


def fit_headline(
    draw: ImageDraw.ImageDraw,
    text: str,
    max_width: int,
    max_height: int,
    max_lines: int = 4,
) -> tuple[ImageFont.FreeTypeFont, list[str]]:
    for size in range(56, 28, -2):
        font = load_sg(size, 700)
        lines = wrap_text(draw, text, font, max_width)
        if len(lines) > max_lines:
            continue
        h = sum(line_height(draw, ln, font) + 6 for ln in lines)
        if h <= max_height:
            return font, lines
    font = load_sg(28, 700)
    return font, wrap_text(draw, text, font, max_width)


def draw_creative(size: tuple[int, int], slug: str, dest: str, headline: str, subheadline: str, cta: str) -> None:
    width, height = size
    img = Image.new("RGB", size, COLORS["bg_bottom"])
    draw_vertical_gradient(img)
    paste_soft_blob(img, (width * 0.82, height * 0.12), COLORS["accent_red"], int(min(width, height) * 0.95), 90, 55)
    paste_soft_blob(img, (width * 0.12, height * 0.88), COLORS["accent_blue"], int(min(width, height) * 0.85), 85, 45)
    add_film_grain(img, 0.038)

    draw = ImageDraw.Draw(img)
    square_size = min(width, height) - int(min(width, height) * 0.12)
    x0 = (width - square_size) // 2
    y0 = (height - square_size) // 2
    x1 = x0 + square_size
    y1 = y0 + square_size

    shadow_offset = 10
    shadow_layer = Image.new("RGBA", size, (0, 0, 0, 0))
    sd = ImageDraw.Draw(shadow_layer)
    sd.rounded_rectangle(
        (x0 + shadow_offset, y0 + shadow_offset, x1 + shadow_offset, y1 + shadow_offset),
        radius=36,
        fill=(0, 0, 0, 130),
    )
    shadow_layer = shadow_layer.filter(ImageFilter.GaussianBlur(16))
    img_rgba = img.convert("RGBA")
    img.paste(Image.alpha_composite(img_rgba, shadow_layer).convert("RGB"))

    draw = ImageDraw.Draw(img)
    draw.rounded_rectangle((x0, y0, x1, y1), radius=36, fill=COLORS["card_fill"], outline=COLORS["card_border"], width=1)
    draw.rounded_rectangle(
        (x0 + 10, y0 + 10, x1 - 10, y1 - 10),
        radius=28,
        outline=COLORS["accent_red"],
        width=1,
    )

    inner_pad = int(square_size * 0.08)
    text_left = x0 + inner_pad
    content_width = (x1 - inner_pad) - text_left

    headline_area_h = int(square_size * 0.42)
    headline_font, headline_lines = fit_headline(draw, headline, content_width, headline_area_h)

    y = y0 + int(square_size * 0.12)
    for line in headline_lines:
        draw.text((text_left, y), line, fill=COLORS["white"], font=headline_font)
        y += line_height(draw, line, headline_font) + 6

    y += 14
    sub_size = max(22, min(30, square_size // 32))
    sub_font = load_sg(sub_size, 500)
    for line in wrap_text(draw, subheadline, sub_font, content_width):
        draw.text((text_left, y), line, fill=COLORS["muted"], font=sub_font)
        y += line_height(draw, line, sub_font) + 5

    cta_font = load_sg(max(22, square_size // 28), 700)
    btn_w = int(square_size * 0.78)
    btn_h = int(square_size * 0.12)
    btn_x = x0 + (square_size - btn_w) // 2
    btn_y = y1 - int(square_size * 0.22)
    draw.rounded_rectangle((btn_x, btn_y, btn_x + btn_w, btn_y + btn_h), radius=18, fill=COLORS["accent_red"])
    tw = draw.textlength(cta, font=cta_font)
    cta_bbox = draw.textbbox((0, 0), cta, font=cta_font)
    ch = cta_bbox[3] - cta_bbox[1]
    draw.text((btn_x + (btn_w - tw) / 2, btn_y + (btn_h - ch) / 2 - 1), cta, fill=COLORS["white"], font=cta_font)

    small_font = load_sg(max(16, square_size // 38), 500)
    footer = f"Adventure Labs · {'/martech' if dest == 'martech' else 'Instagram'}"
    fw = draw.textlength(footer, font=small_font)
    draw.text((width - fw - 28, height - 36), footer, fill=COLORS["muted"], font=small_font)

    out_name = f"{slug}_{'feed' if size == (1080, 1035) else 'stories'}_{width}x{height}_{dest}.png"
    img.save(OUT_DIR / out_name, "PNG")


def main() -> None:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    for item in CREATIVES:
        slug, dest, headline, subheadline, cta = item
        draw_creative((1080, 1035), slug, dest, headline, subheadline, cta)
        draw_creative((1080, 1920), slug, dest, headline, subheadline, cta)
    print(f"Gerados {len(CREATIVES) * 2} arquivos em {OUT_DIR}")


if __name__ == "__main__":
    main()
