-- =============================================================================
-- Lidera DRE: remove lançamentos de exemplo (mocks) da organização padrão
-- Rodar no Supabase SQL Editor quando quiser limpar os dados de teste.
-- Não remove categorias, subcategorias nem a organização.
-- =============================================================================

DELETE FROM public.dre_lancamentos
WHERE organizacao_id = '00000000-0000-4000-8000-000000000001';

-- Opcional: remover também outras organizações de teste (descomente se precisar)
-- DELETE FROM public.dre_lancamentos;
-- DELETE FROM public.dre_organizacoes WHERE nome ILIKE '%padrão%' OR nome ILIKE '%teste%';
