-- Xpostr: pipeline autônomo Grove / Zazu / Ogilvy (@adventurelabsbr)
-- Aplicar no SQL Editor do Supabase do projeto Adventure (ou dedicado).

create table if not exists public.adv_xpostr_agents (
  id uuid primary key default gen_random_uuid(),
  name text not null unique,
  role text not null,
  level text not null check (level in ('strategic', 'tactical', 'operational')),
  status text not null default 'idle' check (status in ('idle', 'working', 'done', 'error')),
  current_task text,
  tools_active text[] default '{}',
  tasks_completed int default 0,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists public.adv_xpostr_tasks (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  kanban_column text not null default 'queue' check (kanban_column in ('queue', 'doing', 'published')),
  status text not null default 'queue' check (status in ('queue', 'executing', 'done', 'error')),
  agent_name text,
  cycle_number int not null default 1,
  progress int default 0 check (progress >= 0 and progress <= 100),
  result text,
  started_at timestamptz,
  completed_at timestamptz,
  created_at timestamptz default now()
);

create table if not exists public.adv_xpostr_agent_messages (
  id uuid primary key default gen_random_uuid(),
  from_agent text not null,
  to_agent text,
  message text not null,
  message_type text default 'chat' check (message_type in ('chat', 'briefing', 'report', 'directive', 'council')),
  cycle_number int default 1,
  created_at timestamptz default now()
);

create table if not exists public.adv_xpostr_posts (
  id uuid primary key default gen_random_uuid(),
  content text not null,
  topic text not null,
  cycle_number int not null,
  status text default 'ready' check (status in ('ready', 'published', 'error', 'dry_run')),
  x_tweet_id text,
  x_published_at timestamptz,
  scout_report text,
  word_count int,
  created_at timestamptz default now()
);

create table if not exists public.adv_xpostr_cycles (
  id uuid primary key default gen_random_uuid(),
  cycle_number int not null unique,
  topic text not null,
  status text default 'running' check (status in ('running', 'completed', 'error')),
  started_at timestamptz default now(),
  completed_at timestamptz,
  error_message text
);

create table if not exists public.adv_xpostr_feed_events (
  id uuid primary key default gen_random_uuid(),
  agent_name text not null,
  event_type text not null,
  message text not null,
  cycle_number int,
  created_at timestamptz default now()
);

create table if not exists public.adv_xpostr_run_state (
  id text primary key default 'default',
  paused boolean not null default true,
  extra_context text default '',
  last_published_at timestamptz,
  last_cycle_started_at timestamptz,
  cycle_in_progress boolean not null default false,
  updated_at timestamptz default now()
);

insert into public.adv_xpostr_run_state (id, paused) values ('default', true)
on conflict (id) do nothing;

insert into public.adv_xpostr_agents (name, role, level) values
  ('Grove', 'Orquestração — CEO Agent', 'strategic'),
  ('Zazu', 'Inteligência martech & tendências', 'operational'),
  ('Ogilvy', 'Copy & voz da marca', 'operational')
on conflict (name) do nothing;

create index if not exists adv_xpostr_tasks_cycle_idx on public.adv_xpostr_tasks(cycle_number);
create index if not exists adv_xpostr_tasks_column_idx on public.adv_xpostr_tasks(kanban_column);
create index if not exists adv_xpostr_feed_events_created_idx on public.adv_xpostr_feed_events(created_at desc);
create index if not exists adv_xpostr_posts_cycle_idx on public.adv_xpostr_posts(cycle_number);
create index if not exists adv_xpostr_messages_cycle_idx on public.adv_xpostr_agent_messages(cycle_number);

alter table public.adv_xpostr_agents enable row level security;
alter table public.adv_xpostr_tasks enable row level security;
alter table public.adv_xpostr_agent_messages enable row level security;
alter table public.adv_xpostr_posts enable row level security;
alter table public.adv_xpostr_cycles enable row level security;
alter table public.adv_xpostr_feed_events enable row level security;
alter table public.adv_xpostr_run_state enable row level security;

-- Apenas service_role (API Next.js); frontend não usa anon nestas tabelas.
create policy "adv_xpostr_service_role_agents" on public.adv_xpostr_agents
  for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');
create policy "adv_xpostr_service_role_tasks" on public.adv_xpostr_tasks
  for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');
create policy "adv_xpostr_service_role_messages" on public.adv_xpostr_agent_messages
  for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');
create policy "adv_xpostr_service_role_posts" on public.adv_xpostr_posts
  for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');
create policy "adv_xpostr_service_role_cycles" on public.adv_xpostr_cycles
  for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');
create policy "adv_xpostr_service_role_feed" on public.adv_xpostr_feed_events
  for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');
create policy "adv_xpostr_service_role_run_state" on public.adv_xpostr_run_state
  for all using (auth.role() = 'service_role') with check (auth.role() = 'service_role');

grant usage on schema public to service_role;
grant all on public.adv_xpostr_agents to service_role;
grant all on public.adv_xpostr_tasks to service_role;
grant all on public.adv_xpostr_agent_messages to service_role;
grant all on public.adv_xpostr_posts to service_role;
grant all on public.adv_xpostr_cycles to service_role;
grant all on public.adv_xpostr_feed_events to service_role;
grant all on public.adv_xpostr_run_state to service_role;
