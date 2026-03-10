import type { LancamentoWithRelations } from '../types';

export interface DRELinha {
  categoria_id: string;
  categoria_nome: string;
  tipo: 'entrada' | 'saida';
  subcategorias: { subcategoria_id: string; subcategoria_nome: string; total: number }[];
  total: number;
}

export function agregarDRE(lancamentos: LancamentoWithRelations[]): { entradas: DRELinha[]; saidas: DRELinha[]; totalEntradas: number; totalSaidas: number; resultado: number } {
  const entradasMap = new Map<string, { nome: string; subMap: Map<string, { nome: string; total: number }>; total: number }>();
  const saidasMap = new Map<string, { nome: string; subMap: Map<string, { nome: string; total: number }>; total: number }>();

  let totalEntradas = 0;
  let totalSaidas = 0;

  for (const l of lancamentos) {
    const cat = l.categoria as { id?: string; nome?: string } | null;
    const sub = l.subcategoria as { id?: string; nome?: string } | null;
    const catId = cat?.id ?? l.categoria_id;
    const catNome = cat?.nome ?? '—';
    const subId = sub?.id ?? l.subcategoria_id ?? '';
    const subNome = sub?.nome ?? '—';
    const valor = Number(l.valor);

    const map = l.tipo === 'entrada' ? entradasMap : saidasMap;
    if (l.tipo === 'entrada') totalEntradas += valor;
    else totalSaidas += valor;

    if (!map.has(catId)) {
      map.set(catId, { nome: catNome, subMap: new Map(), total: 0 });
    }
    const catEntry = map.get(catId)!;
    catEntry.total += valor;
    if (subId) {
      if (!catEntry.subMap.has(subId)) catEntry.subMap.set(subId, { nome: subNome, total: 0 });
      catEntry.subMap.get(subId)!.total += valor;
    }
  }

  const toLinhas = (m: Map<string, { nome: string; subMap: Map<string, { nome: string; total: number }>; total: number }>, tipo: 'entrada' | 'saida'): DRELinha[] =>
    Array.from(m.entries()).map(([categoria_id, v]) => ({
      categoria_id,
      categoria_nome: v.nome,
      tipo,
      subcategorias: Array.from(v.subMap.entries()).map(([subcategoria_id, s]) => ({
        subcategoria_id,
        subcategoria_nome: s.nome,
        total: s.total,
      })),
      total: v.total,
    }));

  return {
    entradas: toLinhas(entradasMap, 'entrada'),
    saidas: toLinhas(saidasMap, 'saida'),
    totalEntradas,
    totalSaidas,
    resultado: totalEntradas - totalSaidas,
  };
}
