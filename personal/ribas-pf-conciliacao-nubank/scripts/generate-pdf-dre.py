#!/usr/bin/env python3
from pathlib import Path
import re

from reportlab.lib import colors
from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.lib.units import mm
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle


ROOT = Path(__file__).resolve().parents[1]
MD_PATH = ROOT / "relatorios" / "consolidacao-q1-2026-detalhada.md"
PDF_PATH = ROOT / "relatorios" / "consolidacao-q1-2026-dre-revisao-a4.pdf"


def extract_table(md_text: str, section_title: str):
    idx = md_text.find(section_title)
    if idx == -1:
        return []
    after = md_text[idx:].splitlines()
    rows = []
    in_table = False
    for line in after:
        if line.strip().startswith("|"):
            in_table = True
            rows.append(line.strip())
        elif in_table:
            break
    if len(rows) < 2:
        return []

    parsed = []
    for i, line in enumerate(rows):
        cells = [c.strip() for c in line.strip("|").split("|")]
        if i == 1 and all(re.match(r"^-+$", c.replace(":", "").strip()) for c in cells):
            continue
        parsed.append(cells)
    return parsed


def make_table(data, col_widths_mm):
    table = Table(data, colWidths=[w * mm for w in col_widths_mm], repeatRows=1)
    table.setStyle(
        TableStyle(
            [
                ("GRID", (0, 0), (-1, -1), 0.5, colors.HexColor("#9CA3AF")),
                ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#E5E7EB")),
                ("TEXTCOLOR", (0, 0), (-1, 0), colors.HexColor("#111827")),
                ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
                ("FONTNAME", (0, 1), (-1, -1), "Helvetica"),
                ("FONTSIZE", (0, 0), (-1, -1), 8),
                ("VALIGN", (0, 0), (-1, -1), "TOP"),
                ("LEFTPADDING", (0, 0), (-1, -1), 4),
                ("RIGHTPADDING", (0, 0), (-1, -1), 4),
                ("TOPPADDING", (0, 0), (-1, -1), 3),
                ("BOTTOMPADDING", (0, 0), (-1, -1), 3),
            ]
        )
    )
    return table


def main():
    if not MD_PATH.exists():
        raise SystemExit(f"Arquivo não encontrado: {MD_PATH}")

    md = MD_PATH.read_text(encoding="utf-8")
    dre_data = extract_table(md, "## 1) DRE consolidado por mês (visão gerencial)")
    pend_data = extract_table(md, "## 2) Pendências para você responder por ID")

    styles = getSampleStyleSheet()
    title_style = styles["Title"]
    heading = styles["Heading2"]
    normal = styles["Normal"]
    normal.fontName = "Helvetica"
    normal.fontSize = 9
    normal.leading = 12

    doc = SimpleDocTemplate(
        str(PDF_PATH),
        pagesize=A4,
        leftMargin=12 * mm,
        rightMargin=12 * mm,
        topMargin=12 * mm,
        bottomMargin=12 * mm,
        title="Consolidação Q1 2026 - DRE revisão",
    )

    story = []
    story.append(Paragraph("Consolidação Q1 2026 — PF Nubank", title_style))
    story.append(Paragraph("Formato de revisão (A4, fundo claro, tabelas estilo DRE).", normal))
    story.append(Spacer(1, 5 * mm))

    if dre_data:
        story.append(Paragraph("1) DRE consolidado por mês", heading))
        story.append(make_table(dre_data, [18, 28, 28, 33, 28, 28]))
        story.append(Spacer(1, 6 * mm))

    if pend_data:
        story.append(Paragraph("2) Pendências para classificação (responder por ID)", heading))
        # converte memo/categoria em parágrafos para quebrar linha
        header = pend_data[0]
        rows = [header]
        for row in pend_data[1:]:
            if len(row) < 7:
                continue
            rows.append(
                [
                    row[0],
                    row[1],
                    row[2],
                    row[3],
                    row[4],
                    Paragraph(row[5], normal),
                    Paragraph(row[6], normal),
                ]
            )
        story.append(make_table(rows, [13, 15, 16, 17, 18, 58, 40]))

    doc.build(story)
    print(f"Wrote {PDF_PATH}")


if __name__ == "__main__":
    main()
