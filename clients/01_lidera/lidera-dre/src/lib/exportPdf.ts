import { jsPDF } from 'jspdf';
import autoTable from 'jspdf-autotable';
import type { DRELinha } from './dre';

interface DREParaPdf {
  titulo: string;
  periodo: string;
  entradas: DRELinha[];
  saidas: DRELinha[];
  totalEntradas: number;
  totalSaidas: number;
  resultado: number;
}

export function exportDREPdf(dre: DREParaPdf, filename: string): void {
  const doc = new jsPDF({ orientation: 'portrait', unit: 'mm', format: 'a4' });
  let y = 20;

  doc.setFontSize(18);
  doc.setTextColor(20, 20, 20);
  doc.text(dre.titulo, 14, y);
  y += 8;

  doc.setFontSize(11);
  doc.setTextColor(80, 80, 80);
  doc.text(dre.periodo, 14, y);
  y += 12;

  const head = [['Descrição', 'Valor (R$)']];
  const opts = {
    startY: y,
    head,
    theme: 'plain' as const,
    headStyles: { fillColor: [240, 240, 240] as [number, number, number], textColor: [30, 30, 30] as [number, number, number] },
    bodyStyles: { textColor: [40, 40, 40] as [number, number, number] },
    margin: { left: 14, right: 14 },
  };

  if (dre.entradas.length > 0) {
    doc.setFontSize(12);
    doc.setTextColor(0, 100, 0);
    doc.text('Receitas', 14, y);
    y += 6;
    const rowsEntradas: [string, string][] = dre.entradas.flatMap((linha) => {
      const r: [string, string][] = [[linha.categoria_nome, formatBr(linha.total)]];
      for (const s of linha.subcategorias) {
        r.push([`  ${s.subcategoria_nome}`, formatBr(s.total)]);
      }
      return r;
    });
    autoTable(doc, { ...opts, body: rowsEntradas, startY: y });
    y = ((doc as unknown as { lastAutoTable?: { finalY: number } }).lastAutoTable?.finalY ?? y) + 4;
    doc.setFontSize(10);
    doc.setTextColor(0, 80, 0);
    doc.text(`Total Receitas: R$ ${formatBr(dre.totalEntradas)}`, 14, y);
    y += 10;
  }

  if (dre.saidas.length > 0) {
    doc.setFontSize(12);
    doc.setTextColor(180, 0, 0);
    doc.text('Despesas', 14, y);
    y += 6;
    const rowsSaidas: [string, string][] = dre.saidas.flatMap((linha) => {
      const r: [string, string][] = [[linha.categoria_nome, formatBr(linha.total)]];
      for (const s of linha.subcategorias) {
        r.push([`  ${s.subcategoria_nome}`, formatBr(s.total)]);
      }
      return r;
    });
    autoTable(doc, { ...opts, body: rowsSaidas, startY: y });
    y = ((doc as unknown as { lastAutoTable?: { finalY: number } }).lastAutoTable?.finalY ?? y) + 4;
    doc.setFontSize(10);
    doc.setTextColor(150, 0, 0);
    doc.text(`Total Despesas: R$ ${formatBr(dre.totalSaidas)}`, 14, y);
    y += 10;
  }

  doc.setFontSize(12);
  doc.setTextColor(dre.resultado >= 0 ? 0 : 180, dre.resultado >= 0 ? 100 : 0, 0);
  doc.text(`Resultado: R$ ${formatBr(dre.resultado)}`, 14, y + 4);

  doc.save(filename);
}

function formatBr(n: number): string {
  return n.toLocaleString('pt-BR', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
}
