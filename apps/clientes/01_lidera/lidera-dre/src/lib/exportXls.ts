import * as XLSX from 'xlsx';
import type { LancamentoWithRelations } from '../types';
import type { DRELinha } from './dre';

function sheetFromLancamentos(lancamentos: LancamentoWithRelations[]): XLSX.WorkSheet {
  const rows = lancamentos.map((l) => {
    const cat = l.categoria as { nome?: string } | null;
    const sub = l.subcategoria as { nome?: string } | null;
    const valor = Number(l.valor);
    const valorExibir = l.tipo === 'saida' ? -valor : valor;
    return {
      Data: l.data_lancamento,
      Tipo: l.tipo,
      Categoria: cat?.nome ?? '—',
      Subcategoria: sub?.nome ?? '—',
      Descrição: l.descricao ?? '—',
      'Valor (R$)': valorExibir,
      Observações: l.observacoes ?? '—',
      Responsável: l.responsavel,
    };
  });
  return XLSX.utils.json_to_sheet(rows);
}

function sheetFromDRE(entradas: DRELinha[], saidas: DRELinha[], totalEntradas: number, totalSaidas: number, resultado: number): XLSX.WorkSheet {
  const rows: Record<string, string | number>[] = [];
  rows.push({ Descrição: 'Receitas', 'Valor (R$)': '' });
  for (const linha of entradas) {
    rows.push({ Descrição: linha.categoria_nome, 'Valor (R$)': linha.total });
    for (const s of linha.subcategorias) {
      rows.push({ Descrição: `  ${s.subcategoria_nome}`, 'Valor (R$)': s.total });
    }
  }
  rows.push({ Descrição: 'Total Receitas', 'Valor (R$)': totalEntradas });
  rows.push({ Descrição: '', 'Valor (R$)': '' });
  rows.push({ Descrição: 'Despesas', 'Valor (R$)': '' });
  for (const linha of saidas) {
    rows.push({ Descrição: linha.categoria_nome, 'Valor (R$)': linha.total });
    for (const s of linha.subcategorias) {
      rows.push({ Descrição: `  ${s.subcategoria_nome}`, 'Valor (R$)': s.total });
    }
  }
  rows.push({ Descrição: 'Total Despesas', 'Valor (R$)': totalSaidas });
  rows.push({ Descrição: '', 'Valor (R$)': '' });
  rows.push({ Descrição: 'Resultado', 'Valor (R$)': resultado });
  return XLSX.utils.json_to_sheet(rows);
}

export function exportLancamentosXls(lancamentos: LancamentoWithRelations[], filename: string): void {
  const wb = XLSX.utils.book_new();
  const ws = sheetFromLancamentos(lancamentos);
  XLSX.utils.book_append_sheet(wb, ws, 'Lançamentos');
  XLSX.writeFile(wb, filename);
}

export function exportDREXls(
  entradas: DRELinha[],
  saidas: DRELinha[],
  totalEntradas: number,
  totalSaidas: number,
  resultado: number,
  filename: string
): void {
  const wb = XLSX.utils.book_new();
  const ws = sheetFromDRE(entradas, saidas, totalEntradas, totalSaidas, resultado);
  XLSX.utils.book_append_sheet(wb, ws, 'DRE');
  XLSX.writeFile(wb, filename);
}
