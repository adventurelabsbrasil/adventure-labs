import { useState, useEffect, useCallback } from 'react';
import { supabase, hasSupabaseConfig } from '../lib/supabase';
import { useAuth } from '../contexts/AuthContext';
import type { DreOrganizacao } from '../types';

export function useOrganizacoes() {
  const { sessionVersion } = useAuth();
  const [organizacoes, setOrganizacoes] = useState<DreOrganizacao[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const fetchOrganizacoes = useCallback(async () => {
    if (!hasSupabaseConfig) {
      setOrganizacoes([]);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(null);
    const { data, error: e } = await supabase
      .from('dre_organizacoes')
      .select('*')
      .order('nome');
    if (e) {
      setError(e.message);
      setOrganizacoes([]);
    } else {
      setOrganizacoes((data ?? []) as DreOrganizacao[]);
    }
    setLoading(false);
  }, []);

  useEffect(() => {
    fetchOrganizacoes();
  }, [fetchOrganizacoes, sessionVersion]);

  const insertOrganizacao = useCallback(
    async (nome: string) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_organizacoes').insert({ nome });
      if (!e) await fetchOrganizacoes();
      return { error: e };
    },
    [fetchOrganizacoes]
  );

  const updateOrganizacao = useCallback(
    async (id: string, nome: string) => {
      if (!hasSupabaseConfig) return { error: new Error('Supabase não configurado') };
      const { error: e } = await supabase.from('dre_organizacoes').update({ nome }).eq('id', id);
      if (!e) await fetchOrganizacoes();
      return { error: e };
    },
    [fetchOrganizacoes]
  );

  return {
    organizacoes,
    loading,
    error,
    refetch: fetchOrganizacoes,
    insertOrganizacao,
    updateOrganizacao,
  };
}
