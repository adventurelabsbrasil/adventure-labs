import { useState, useEffect, useCallback } from 'react';
import { supabase, hasSupabaseConfig } from '../lib/supabase';
import type { Categoria, Subcategoria } from '../types';

export function useCategorias() {
  const [categorias, setCategorias] = useState<Categoria[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const fetchCategorias = useCallback(async () => {
    if (!hasSupabaseConfig) {
      setCategorias([]);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(null);
    const { data, error: e } = await supabase
      .from('dre_categorias')
      .select('*')
      .order('ordem', { nullsFirst: false })
      .order('nome');
    if (e) {
      setError(e.message);
      setCategorias([]);
    } else {
      setCategorias((data ?? []) as Categoria[]);
    }
    setLoading(false);
  }, []);

  useEffect(() => {
    fetchCategorias();
  }, [fetchCategorias]);

  const insertCategoria = useCallback(
    async (payload: { nome: string; tipo: 'entrada' | 'saida'; ordem?: number | null }) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_categorias').insert(payload);
      if (!e) await fetchCategorias();
      return { error: e };
    },
    [fetchCategorias]
  );

  const updateCategoria = useCallback(
    async (id: string, payload: Partial<Pick<Categoria, 'nome' | 'tipo' | 'ordem'>>) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_categorias').update(payload).eq('id', id);
      if (!e) await fetchCategorias();
      return { error: e };
    },
    [fetchCategorias]
  );

  const deleteCategoria = useCallback(
    async (id: string) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_categorias').delete().eq('id', id);
      if (!e) await fetchCategorias();
      return { error: e };
    },
    [fetchCategorias]
  );

  return {
    categorias,
    loading,
    error,
    refetch: fetchCategorias,
    insertCategoria,
    updateCategoria,
    deleteCategoria,
  };
}

export function useSubcategorias(categoriaId: string | null) {
  const [subcategorias, setSubcategorias] = useState<Subcategoria[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const fetchSubcategorias = useCallback(async () => {
    if (!categoriaId || !hasSupabaseConfig) {
      setSubcategorias([]);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(null);
    const { data, error: e } = await supabase
      .from('dre_subcategorias')
      .select('*')
      .eq('categoria_id', categoriaId)
      .order('ordem', { nullsFirst: false })
      .order('nome');
    if (e) {
      setError(e.message);
      setSubcategorias([]);
    } else {
      setSubcategorias((data ?? []) as Subcategoria[]);
    }
    setLoading(false);
  }, [categoriaId]);

  useEffect(() => {
    fetchSubcategorias();
  }, [fetchSubcategorias]);

  const insertSubcategoria = useCallback(
    async (payload: { categoria_id: string; nome: string; ordem?: number | null }) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_subcategorias').insert(payload);
      if (!e) await fetchSubcategorias();
      return { error: e };
    },
    [fetchSubcategorias]
  );

  const updateSubcategoria = useCallback(
    async (id: string, payload: Partial<Pick<Subcategoria, 'nome' | 'ordem'>>) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_subcategorias').update(payload).eq('id', id);
      if (!e) await fetchSubcategorias();
      return { error: e };
    },
    [fetchSubcategorias]
  );

  const deleteSubcategoria = useCallback(
    async (id: string) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_subcategorias').delete().eq('id', id);
      if (!e) await fetchSubcategorias();
      return { error: e };
    },
    [fetchSubcategorias]
  );

  return {
    subcategorias,
    loading,
    error,
    refetch: fetchSubcategorias,
    insertSubcategoria,
    updateSubcategoria,
    deleteSubcategoria,
  };
}
