import { useState, useEffect, useCallback } from 'react';
import { supabase, hasSupabaseConfig } from '../lib/supabase';
import type { Lancamento, LancamentoInsert, LancamentoWithRelations } from '../types';

export function useLancamentos(filters?: { from?: string; to?: string; tipo?: 'entrada' | 'saida' }) {
  const [lancamentos, setLancamentos] = useState<LancamentoWithRelations[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const fetchLancamentos = useCallback(async () => {
    if (!hasSupabaseConfig) {
      setLancamentos([]);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(null);
    let q = supabase
      .from('dre_lancamentos')
      .select(`
        *,
        dre_categorias(id,nome,tipo),
        dre_subcategorias(id,nome)
      `)
      .order('data_lancamento', { ascending: false })
      .order('created_at', { ascending: false });

    if (filters?.from) q = q.gte('data_lancamento', filters.from);
    if (filters?.to) q = q.lte('data_lancamento', filters.to);
    if (filters?.tipo) q = q.eq('tipo', filters.tipo);

    const { data, error: e } = await q;
    if (e) {
      setError(e.message);
      setLancamentos([]);
    } else {
      const rows = (data ?? []).map((row: Record<string, unknown>) => ({
        ...row,
        categoria: row.dre_categorias ?? null,
        subcategoria: row.dre_subcategorias ?? null,
      })) as LancamentoWithRelations[];
      setLancamentos(rows);
    }
    setLoading(false);
  }, [filters?.from, filters?.to, filters?.tipo]);

  useEffect(() => {
    fetchLancamentos();
  }, [fetchLancamentos]);

  const insertLancamento = useCallback(
    async (payload: LancamentoInsert) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_lancamentos').insert(payload);
      if (!e) await fetchLancamentos();
      return { error: e };
    },
    [fetchLancamentos]
  );

  const updateLancamento = useCallback(
    async (id: string, payload: Partial<LancamentoInsert>) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_lancamentos').update(payload).eq('id', id);
      if (!e) await fetchLancamentos();
      return { error: e };
    },
    [fetchLancamentos]
  );

  const deleteLancamento = useCallback(
    async (id: string) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_lancamentos').delete().eq('id', id);
      if (!e) await fetchLancamentos();
      return { error: e };
    },
    [fetchLancamentos]
  );

  return {
    lancamentos,
    loading,
    error,
    refetch: fetchLancamentos,
    insertLancamento,
    updateLancamento,
    deleteLancamento,
  };
}

export function useLancamentosAggregate(from: string, to: string) {
  const [lancamentos, setLancamentos] = useState<Lancamento[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!hasSupabaseConfig || !from || !to) {
      setLancamentos([]);
      setLoading(false);
      return;
    }
    setLoading(true);
    supabase
      .from('dre_lancamentos')
      .select('*')
      .gte('data_lancamento', from)
      .lte('data_lancamento', to)
      .order('data_lancamento')
      .then(({ data, error }) => {
        if (!error) setLancamentos((data ?? []) as Lancamento[]);
        else setLancamentos([]);
        setLoading(false);
      });
  }, [from, to]);

  return { lancamentos, loading };
}
