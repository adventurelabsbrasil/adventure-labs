-- Enable the pgvector extension to work with embedding vectors
create extension if not exists vector;

-- Create the knowledge base table
create table if not exists public.adventure_knowledge (
  id uuid primary key default gen_random_uuid(),
  path text not null,
  title text,
  content text not null,
  metadata jsonb,
  embedding vector(1536), -- 1536 works for OpenAI text-embedding-3-small/ada-002, 768 for Google Gecko/Claude equivalents, let's use 1536 as default OpenAI size and handle properly later if needed.
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  updated_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- Create an index to speed up vector searches
create index on public.adventure_knowledge using ivfflat (embedding vector_cosine_ops)
with (lists = 100);

-- Create a function to search for documents
create or function match_knowledge (
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
