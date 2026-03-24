import type { LancamentoWithRelations } from '../types';
import type { DRELinha } from './dre';

function escapeCsv(s: string): string {
  if (/[",\n\r]/.test(s)) return `"${s.replace(/"/g, '""')}"`;
  return s;
}

export function exportLancamentosCsv(lancamentos: LancamentoWithRelations[]): string {
  const header = 'Data,Tipo,Categoria,Subcategoria,Descrição,Valor,Observações,Responsável';
  const rows = lancamentos.map((l) => {
    const cat = l.categoria as { nome?: string } | null;
    const sub = l.subcategoria as { nome?: string } | null;
    const valor = Number(l.valor);
    const valorExibir = l.tipo === 'saida' ? -valor : valor;
    return [
      l.data_lancamento,
      l.tipo,
      escapeCsv(cat?.nome ?? '—'),
      escapeCsv(sub?.nome ?? '—'),
      escapeCsv(l.descricao ?? '—'),
      valorExibir.toFixed(2).replace('.', ','),
      escapeCsv(l.observacoes ?? '—'),
      escapeCsv(l.responsavel),
    ].join(',');
  });
  return [header, ...rows].join('\r\n');
}

export function exportDRECsv(
  entradas: DRELinha[],
  saidas: DRELinha[],
  totalEntradas: number,
  totalSaidas: number,
  resultado: number
): string {
  const lines: string[] = ['Descrição,Valor (R$)'];
  lines.push('Receitas,');
  for (const linha of entradas) {
    lines.push(`${escapeCsv(linha.categoria_nome)},${linha.total.toFixed(2).replace('.', ',')}`);
    for (const s of linha.subcategorias) {
      lines.push(`${escapeCsv(s.subcategoria_nome)},${s.total.toFixed(2).replace('.', ',')}`);
    }
  }
  lines.push(`Total Receitas,${totalEntradas.toFixed(2).replace('.', ',')}`);
  lines.push(',');
  lines.push('Despesas,');
  for (const linha of saidas) {
    lines.push(`${escapeCsv(linha.categoria_nome)},${linha.total.toFixed(2).replace('.', ',')}`);
    for (const s of linha.subcategorias) {
      lines.push(`${escapeCsv(s.subcategoria_nome)},${s.total.toFixed(2).replace('.', ',')}`);
    }
  }
  lines.push(`Total Despesas,${totalSaidas.toFixed(2).replace('.', ',')}`);
  lines.push(',');
  lines.push(`Resultado,${resultado.toFixed(2).replace('.', ',')}`);
  return lines.join('\r\n');
}

export function downloadCsv(content: string, filename: string): void {
  const blob = new Blob(['\ufeff' + content], { type: 'text/csv;charset=utf-8' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = filename;
  a.click();
  URL.revokeObjectURL(url);
}
