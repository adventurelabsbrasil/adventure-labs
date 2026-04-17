-- Fix: 'create or function' → 'create or replace function'
-- Ref: Issue #37
-- A migration original (20260401011258_init_knowledge_pgvector.sql) tinha bug de sintaxe
-- que impedia a criação da função match_knowledge no Supabase.

create or replace function match_knowledge (
  query_embedding vector(1536),
  match_threshold float,
  match_count int
)
returns table (
  id uuid,
  path text,
  title text,
  content text,
  metadata jsonb,
  similarity float
)
language sql stable
as $$
  select
    adventure_knowledge.id,
    adventure_knowledge.path,
    adventure_knowledge.title,
    adventure_knowledge.content,
    adventure_knowledge.metadata,
    1 - (adventure_knowledge.embedding <=> query_embedding) as similarity
  from adventure_knowledge
  where 1 - (adventure_knowledge.embedding <=> query_embedding) > match_threshold
  order by adventure_knowledge.embedding <=> query_embedding
  limit match_count;
$$;
