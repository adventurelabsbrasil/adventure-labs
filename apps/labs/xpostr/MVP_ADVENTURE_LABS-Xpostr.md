# BLUEPRINT: Adventure Labs — AI Org MVP
## Prompt de Implementação para CursorAI / OpenClaw

> Cole este arquivo inteiro no CursorAI (Composer) ou no OpenClaw e diga:
> **"Leia este blueprint e implemente tudo, arquivo por arquivo, sem pular etapas."**

---

## CONTEXTO DO PROJETO

Você vai construir o MVP de uma célula autônoma de agentes de IA para a Adventure Labs — uma empresa de martech autônoma. O sistema tem 3 agentes (ARIA, SCOUT, QUILL) que trabalham em ciclos automáticos a cada 10 minutos, pesquisam tendências de martech, se comunicam entre si, e geram posts para o X (Twitter). Tudo é visível em tempo real num dashboard com Kanban dinâmico.

**Stack obrigatória:**
- Frontend: Next.js 14 (App Router) + Tailwind CSS + shadcn/ui
- Backend: Next.js API Routes (sem servidor separado)
- Banco de dados: Supabase (PostgreSQL + Realtime + pgvector)
- Autenticação: Clerk
- Agendamento: Vercel Cron Jobs
- IA: Anthropic Claude API (claude-sonnet-4-20250514)
- Publicação social: X (Twitter) API v2
- Deploy: Vercel

---

## FASE 1 — SETUP INICIAL

### 1.1 Criar projeto Next.js

```bash
npx create-next-app@latest adventure-labs-ai-org --typescript --tailwind --eslint --app --src-dir --import-alias "@/*"
cd adventure-labs-ai-org
```

### 1.2 Instalar dependências

```bash
npm install @anthropic-ai/sdk @supabase/supabase-js @supabase/ssr @clerk/nextjs twitter-api-v2 date-fns lucide-react
npx shadcn@latest init
npx shadcn@latest add card badge button scroll-area separator progress
```

### 1.3 Variáveis de ambiente

Crie `.env.local` com exatamente estas variáveis:

```env
# Supabase
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
SUPABASE_SERVICE_ROLE_KEY=

# Clerk
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=
CLERK_SECRET_KEY=
NEXT_PUBLIC_CLERK_SIGN_IN_URL=/sign-in
NEXT_PUBLIC_CLERK_SIGN_UP_URL=/sign-up
NEXT_PUBLIC_CLERK_AFTER_SIGN_IN_URL=/dashboard
NEXT_PUBLIC_CLERK_AFTER_SIGN_UP_URL=/dashboard

# Anthropic
ANTHROPIC_API_KEY=

# X (Twitter) API v2
X_API_KEY=
X_API_SECRET=
X_ACCESS_TOKEN=
X_ACCESS_SECRET=
X_BEARER_TOKEN=

# Cron secret (gere um UUID aleatório)
CRON_SECRET=
```

---

## FASE 2 — BANCO DE DADOS (SUPABASE)

### 2.1 Executar no SQL Editor do Supabase

```sql
-- Habilitar extensão vetorial
create extension if not exists vector;

-- Tabela de agentes
create table agents (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  role text not null,
  level text not null check (level in ('strategic', 'tactical', 'operational')),
  status text not null default 'idle' check (status in ('idle', 'working', 'done', 'error')),
  current_task text,
  tools_active text[] default '{}',
  tasks_completed int default 0,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Tabela de tarefas (kanban)
create table tasks (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  status text not null default 'queue' check (status in ('queue', 'executing', 'done', 'error')),
  agent_id uuid references agents(id),
  agent_name text,
  cycle_number int not null default 1,
  progress int default 0 check (progress >= 0 and progress <= 100),
  result text,
  started_at timestamptz,
  completed_at timestamptz,
  created_at timestamptz default now()
);

-- Tabela de mensagens inter-agente
create table agent_messages (
  id uuid primary key default gen_random_uuid(),
  from_agent text not null,
  to_agent text,
  message text not null,
  message_type text default 'chat' check (message_type in ('chat', 'briefing', 'report', 'directive', 'council')),
  cycle_number int default 1,
  created_at timestamptz default now()
);

-- Tabela de posts gerados (X/Twitter)
create table posts (
  id uuid primary key default gen_random_uuid(),
  content text not null,
  topic text not null,
  cycle_number int not null,
  status text default 'ready' check (status in ('ready', 'published', 'error')),
  x_tweet_id text,
  x_published_at timestamptz,
  scout_report text,
  word_count int,
  created_at timestamptz default now()
);

-- Tabela de ciclos
create table cycles (
  id uuid primary key default gen_random_uuid(),
  cycle_number int not null unique,
  topic text not null,
  status text default 'running' check (status in ('running', 'completed', 'error')),
  started_at timestamptz default now(),
  completed_at timestamptz,
  scout_task_id uuid references tasks(id),
  quill_task_id uuid references tasks(id),
  post_id uuid references posts(id)
);

-- Tabela de feed de eventos
create table feed_events (
  id uuid primary key default gen_random_uuid(),
  agent_name text not null,
  event_type text not null,
  message text not null,
  cycle_number int,
  created_at timestamptz default now()
);

-- Índices para performance
create index tasks_status_idx on tasks(status);
create index tasks_cycle_idx on tasks(cycle_number);
create index messages_cycle_idx on agent_messages(cycle_number);
create index feed_events_created_idx on feed_events(created_at desc);
create index posts_cycle_idx on posts(cycle_number);

-- Enable Realtime para todas as tabelas
alter publication supabase_realtime add table tasks;
alter publication supabase_realtime add table agent_messages;
alter publication supabase_realtime add table feed_events;
alter publication supabase_realtime add table agents;
alter publication supabase_realtime add table posts;

-- RLS (Row Level Security) - habilitar mas com policy aberta para o service role
alter table agents enable row level security;
alter table tasks enable row level security;
alter table agent_messages enable row level security;
alter table posts enable row level security;
alter table cycles enable row level security;
alter table feed_events enable row level security;

-- Policy: service role tem acesso total
create policy "Service role full access" on agents for all using (auth.role() = 'service_role');
create policy "Service role full access" on tasks for all using (auth.role() = 'service_role');
create policy "Service role full access" on agent_messages for all using (auth.role() = 'service_role');
create policy "Service role full access" on posts for all using (auth.role() = 'service_role');
create policy "Service role full access" on cycles for all using (auth.role() = 'service_role');
create policy "Service role full access" on feed_events for all using (auth.role() = 'service_role');

-- Policy: leitura anônima para o dashboard (frontend com anon key)
create policy "Anon read" on agents for select using (true);
create policy "Anon read" on tasks for select using (true);
create policy "Anon read" on agent_messages for select using (true);
create policy "Anon read" on posts for select using (true);
create policy "Anon read" on cycles for select using (true);
create policy "Anon read" on feed_events for select using (true);

-- Seed: inserir os 3 agentes iniciais
insert into agents (name, role, level) values
  ('ARIA', 'Orquestradora Estratégica', 'strategic'),
  ('SCOUT', 'Pesquisa & Inteligência', 'operational'),
  ('QUILL', 'Conteúdo & Copy', 'operational');
```

---

## FASE 3 — ESTRUTURA DE ARQUIVOS

Crie exatamente esta estrutura dentro de `src/`:

```
src/
├── app/
│   ├── layout.tsx                  # Root layout com ClerkProvider
│   ├── page.tsx                    # Redirect para /dashboard
│   ├── sign-in/[[...sign-in]]/
│   │   └── page.tsx
│   ├── sign-up/[[...sign-up]]/
│   │   └── page.tsx
│   └── dashboard/
│       ├── layout.tsx              # Dashboard layout com sidebar
│       └── page.tsx                # Página principal do dashboard
├── api/
│   ├── cycle/
│   │   └── route.ts                # POST /api/cycle — dispara um ciclo manualmente
│   ├── cron/
│   │   └── route.ts                # GET /api/cron — endpoint chamado pelo Vercel Cron
│   └── agents/
│       └── status/
│           └── route.ts            # GET /api/agents/status
├── components/
│   ├── dashboard/
│   │   ├── AgentPanel.tsx          # Cards dos 3 agentes com status live
│   │   ├── KanbanBoard.tsx         # Kanban com 3 colunas e cards dinâmicos
│   │   ├── ChatFeed.tsx            # Chat inter-agente em tempo real
│   │   ├── LiveFeed.tsx            # Stream de eventos com timestamps
│   │   ├── PostCard.tsx            # Último post gerado para X
│   │   ├── StatsBar.tsx            # Estatísticas: ciclos, posts, uptime
│   │   └── CycleCountdown.tsx      # Countdown para o próximo ciclo
│   └── ui/                         # shadcn components (gerados automaticamente)
├── lib/
│   ├── supabase/
│   │   ├── client.ts               # Supabase browser client
│   │   └── server.ts               # Supabase server client (service role)
│   ├── agents/
│   │   ├── aria.ts                 # Lógica do agente ARIA
│   │   ├── scout.ts                # Lógica do agente SCOUT
│   │   └── quill.ts                # Lógica do agente QUILL
│   ├── orchestrator.ts             # Orquestra um ciclo completo
│   ├── twitter.ts                  # Publicação no X via twitter-api-v2
│   └── topics.ts                   # Lista de tópicos rotativos
├── hooks/
│   └── useRealtimeDashboard.ts     # Hook para Supabase Realtime
└── types/
    └── index.ts                    # TypeScript types compartilhados
```

---

## FASE 4 — IMPLEMENTAÇÃO ARQUIVO POR ARQUIVO

### 4.1 `src/types/index.ts`

```typescript
export type AgentStatus = 'idle' | 'working' | 'done' | 'error'
export type TaskStatus = 'queue' | 'executing' | 'done' | 'error'
export type PostStatus = 'ready' | 'published' | 'error'

export interface Agent {
  id: string
  name: string
  role: string
  level: string
  status: AgentStatus
  current_task: string | null
  tools_active: string[]
  tasks_completed: number
  updated_at: string
}

export interface Task {
  id: string
  title: string
  description: string | null
  status: TaskStatus
  agent_id: string | null
  agent_name: string | null
  cycle_number: number
  progress: number
  result: string | null
  started_at: string | null
  completed_at: string | null
  created_at: string
}

export interface AgentMessage {
  id: string
  from_agent: string
  to_agent: string | null
  message: string
  message_type: string
  cycle_number: number
  created_at: string
}

export interface Post {
  id: string
  content: string
  topic: string
  cycle_number: number
  status: PostStatus
  x_tweet_id: string | null
  x_published_at: string | null
  scout_report: string | null
  word_count: number | null
  created_at: string
}

export interface FeedEvent {
  id: string
  agent_name: string
  event_type: string
  message: string
  cycle_number: number | null
  created_at: string
}

export interface Cycle {
  id: string
  cycle_number: number
  topic: string
  status: string
  started_at: string
  completed_at: string | null
}
```

### 4.2 `src/lib/supabase/server.ts`

```typescript
import { createClient } from '@supabase/supabase-js'

// Server-side client com service role (bypass RLS)
// NUNCA expor para o frontend
export function createServerSupabase() {
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    {
      auth: {
        autoRefreshToken: false,
        persistSession: false
      }
    }
  )
}
```

### 4.3 `src/lib/supabase/client.ts`

```typescript
import { createClient } from '@supabase/supabase-js'

// Browser client com anon key (respeita RLS)
export const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
)
```

### 4.4 `src/lib/topics.ts`

```typescript
export const MARTECH_TOPICS = [
  "automação de marketing para empresas de serviço B2B brasileiras em 2026",
  "como IA está transformando atendimento ao cliente em empresas de serviço",
  "estratégias de conteúdo orgânico para empresas com faturamento acima de 100k/mês",
  "CRM com inteligência artificial para equipes comerciais enxutas",
  "métricas que realmente importam para empresas de serviço em escala",
  "como construir autoridade digital com consistência em vez de viralização",
  "WhatsApp Business API em estratégias de martech brasileiras",
  "automação de SDR: o que funciona de verdade para prospecção B2B",
  "o futuro das agências de marketing com agentes autônomos de IA",
  "como empresas de serviço estão usando IA para multiplicar capacidade sem contratar",
]

export function getTopicForCycle(cycleNumber: number): string {
  return MARTECH_TOPICS[(cycleNumber - 1) % MARTECH_TOPICS.length]
}
```

### 4.5 `src/lib/agents/aria.ts`

```typescript
import { createServerSupabase } from '@/lib/supabase/server'

const db = () => createServerSupabase()

export async function ariaOpenCycle(cycleNumber: number, topic: string) {
  const supabase = db()

  // Atualizar status de ARIA
  await supabase
    .from('agents')
    .update({
      status: 'working',
      current_task: `Coordenando ciclo ${cycleNumber}: delegando tarefas`,
      updated_at: new Date().toISOString()
    })
    .eq('name', 'ARIA')

  // Registrar evento no feed
  await supabase.from('feed_events').insert({
    agent_name: 'ARIA',
    event_type: 'cycle_start',
    message: `Ciclo ${cycleNumber} iniciado. Tópico: "${topic.slice(0, 60)}..."`,
    cycle_number: cycleNumber
  })

  // Mensagem de abertura no chat
  await supabase.from('agent_messages').insert({
    from_agent: 'ARIA',
    to_agent: 'SCOUT',
    message: `Ciclo ${cycleNumber} iniciado. SCOUT, pesquise tendências sobre: "${topic}". Foco em insights acionáveis para posts no X. Prazo: 90 segundos.`,
    message_type: 'directive',
    cycle_number: cycleNumber
  })
}

export async function ariaCloseCycle(cycleNumber: number, success: boolean) {
  const supabase = db()

  const statusMsg = success
    ? `Ciclo ${cycleNumber} concluído. SLA: ✓ | SCOUT: ✓ | QUILL: ✓ | Post aprovado para publicação no X.`
    : `Ciclo ${cycleNumber} encerrado com erros. Registrando para análise.`

  await supabase.from('agent_messages').insert({
    from_agent: 'ARIA',
    to_agent: null,
    message: statusMsg,
    message_type: 'directive',
    cycle_number: cycleNumber
  })

  await supabase
    .from('agents')
    .update({
      status: 'idle',
      current_task: `Último ciclo: ${cycleNumber} ${success ? '✓' : '⚠'}`,
      updated_at: new Date().toISOString()
    })
    .eq('name', 'ARIA')

  await supabase.from('feed_events').insert({
    agent_name: 'ARIA',
    event_type: success ? 'cycle_complete' : 'cycle_error',
    message: `Ciclo ${cycleNumber} ${success ? 'concluído com sucesso' : 'encerrado com erros'}`,
    cycle_number: cycleNumber
  })
}
```

### 4.6 `src/lib/agents/scout.ts`

```typescript
import Anthropic from '@anthropic-ai/sdk'
import { createServerSupabase } from '@/lib/supabase/server'

const anthropic = new Anthropic({ apiKey: process.env.ANTHROPIC_API_KEY })
const db = () => createServerSupabase()

const SCOUT_SYSTEM = `Você é SCOUT, agente de pesquisa e inteligência da Adventure Labs.
A Adventure Labs é uma empresa de martech autônoma com IA, especializada em ajudar empresas de serviço brasileiras com faturamento acima de R$100k/mês a escalar usando automação e inteligência artificial.

Você pesquisa tendências de mercado e extrai insights acionáveis.
Responda SEMPRE em português brasileiro. Seja direto, preciso e analítico.

FORMATO OBRIGATÓRIO: retorne exatamente 1 parágrafo de 4-5 frases.
- Inicie com o dado ou tendência mais impactante
- Inclua 2-3 dados numéricos concretos ou percentuais
- Finalize com a implicação prática para empresas de serviço
- Sem headers, sem listas, sem markdown — apenas o parágrafo corrido`

export async function scoutResearch(
  topic: string,
  cycleNumber: number,
  taskId: string
): Promise<string> {
  const supabase = db()

  // SCOUT começa a trabalhar
  await supabase.from('agents').update({
    status: 'working',
    current_task: `Pesquisando: "${topic.slice(0, 50)}..."`,
    tools_active: ['web_knowledge', 'trend_analysis', 'supabase_rag'],
    updated_at: new Date().toISOString()
  }).eq('name', 'SCOUT')

  await supabase.from('tasks').update({
    status: 'executing',
    progress: 10,
    started_at: new Date().toISOString()
  }).eq('id', taskId)

  await supabase.from('feed_events').insert({
    agent_name: 'SCOUT',
    event_type: 'research_start',
    message: `Iniciou pesquisa sobre "${topic.slice(0, 50)}..."`,
    cycle_number: cycleNumber
  })

  // Atualizar progresso
  await supabase.from('tasks').update({ progress: 35 }).eq('id', taskId)

  // Chamar Claude
  const response = await anthropic.messages.create({
    model: 'claude-sonnet-4-20250514',
    max_tokens: 600,
    system: SCOUT_SYSTEM,
    messages: [{
      role: 'user',
      content: `Pesquise e analise as principais tendências e insights sobre: "${topic}".
Foco em dados práticos para empresas brasileiras de serviço B2B em 2026.`
    }]
  })

  const report = response.content[0].type === 'text' ? response.content[0].text : ''

  // Atualizar progresso e resultado
  await supabase.from('tasks').update({
    status: 'done',
    progress: 100,
    result: report,
    completed_at: new Date().toISOString()
  }).eq('id', taskId)

  await supabase.from('agents').update({
    status: 'done',
    current_task: `✓ Relatório entregue — ciclo ${cycleNumber}`,
    tools_active: [],
    tasks_completed: supabase.rpc('increment', { table: 'agents', field: 'tasks_completed', where_name: 'SCOUT' }) as any,
    updated_at: new Date().toISOString()
  }).eq('name', 'SCOUT')

  // Incrementar tasks_completed manualmente
  const { data: scoutData } = await supabase.from('agents').select('tasks_completed').eq('name', 'SCOUT').single()
  if (scoutData) {
    await supabase.from('agents').update({
      tasks_completed: (scoutData.tasks_completed || 0) + 1,
      updated_at: new Date().toISOString()
    }).eq('name', 'SCOUT')
  }

  // Mensagem para QUILL
  await supabase.from('agent_messages').insert({
    from_agent: 'SCOUT',
    to_agent: 'QUILL',
    message: `Relatório pronto. Insights sobre "${topic.slice(0, 50)}...": ${report.slice(0, 200)}... Passando briefing completo para você criar o post para o X.`,
    message_type: 'briefing',
    cycle_number: cycleNumber
  })

  await supabase.from('feed_events').insert({
    agent_name: 'SCOUT',
    event_type: 'research_complete',
    message: `Relatório de inteligência entregue — ${report.split(' ').length} palavras analisadas`,
    cycle_number: cycleNumber
  })

  return report
}
```

### 4.7 `src/lib/agents/quill.ts`

```typescript
import Anthropic from '@anthropic-ai/sdk'
import { createServerSupabase } from '@/lib/supabase/server'

const anthropic = new Anthropic({ apiKey: process.env.ANTHROPIC_API_KEY })
const db = () => createServerSupabase()

const QUILL_SYSTEM = `Você é QUILL, agente de conteúdo e copy da Adventure Labs.
A Adventure Labs é uma empresa de martech autônoma com IA — uma das primeiras "AI Orgs" do Brasil, onde agentes de IA trabalham 24/7 para ajudar empresas de serviço a crescer.

Você escreve posts para o X (Twitter) de alta performance.
SEMPRE em português brasileiro.

REGRAS ABSOLUTAS PARA POSTS NO X:
1. Máximo 260 caracteres (respeite rigorosamente o limite do X)
2. Primeira linha é o hook — sem "Eu" e sem clichês motivacionais
3. Tom: direto, confiante, inteligente — como um founder que sabe o que faz
4. Máximo 2 hashtags relevantes no final
5. Sem emojis genéricos — no máximo 1 emoji se agregar significado
6. O post deve gerar curiosidade ou trazer um dado surpreendente

RETORNE APENAS O TEXTO DO POST. Nada mais. Sem aspas, sem explicação.`

export async function quillCreatePost(
  topic: string,
  scoutReport: string,
  cycleNumber: number,
  taskId: string
): Promise<string> {
  const supabase = db()

  // QUILL começa a trabalhar
  await supabase.from('agents').update({
    status: 'working',
    current_task: `Criando post para o X sobre "${topic.slice(0, 40)}..."`,
    tools_active: ['claude_api', 'brand_voice_db', 'x_formatter'],
    updated_at: new Date().toISOString()
  }).eq('name', 'QUILL')

  await supabase.from('tasks').update({
    status: 'executing',
    progress: 15,
    started_at: new Date().toISOString()
  }).eq('id', taskId)

  await supabase.from('feed_events').insert({
    agent_name: 'QUILL',
    event_type: 'writing_start',
    message: `Recebeu briefing do SCOUT e iniciou redação para o X`,
    cycle_number: cycleNumber
  })

  // Atualizar progresso
  await supabase.from('tasks').update({ progress: 40 }).eq('id', taskId)

  // Chamar Claude
  const response = await anthropic.messages.create({
    model: 'claude-sonnet-4-20250514',
    max_tokens: 300,
    system: QUILL_SYSTEM,
    messages: [{
      role: 'user',
      content: `Baseado neste relatório de inteligência do SCOUT:

"${scoutReport}"

Crie um post para o X sobre: "${topic}"
Este post é da Adventure Labs — empresa de IA autônoma para martech.
Máximo 260 caracteres. Apenas o texto do post.`
    }]
  })

  let post = response.content[0].type === 'text' ? response.content[0].text.trim() : ''

  // Garantir limite de 280 chars (X)
  if (post.length > 280) {
    post = post.slice(0, 277) + '...'
  }

  // Salvar post no banco
  const wordCount = post.split(' ').length
  const { data: postData } = await supabase.from('posts').insert({
    content: post,
    topic,
    cycle_number: cycleNumber,
    status: 'ready',
    scout_report: scoutReport,
    word_count: wordCount
  }).select().single()

  // Finalizar task
  await supabase.from('tasks').update({
    status: 'done',
    progress: 100,
    result: post,
    completed_at: new Date().toISOString()
  }).eq('id', taskId)

  // Atualizar agente
  await supabase.from('agents').update({
    status: 'done',
    current_task: `✓ Post entregue — ciclo ${cycleNumber}`,
    tools_active: [],
    updated_at: new Date().toISOString()
  }).eq('name', 'QUILL')

  const { data: quillData } = await supabase.from('agents').select('tasks_completed').eq('name', 'QUILL').single()
  if (quillData) {
    await supabase.from('agents').update({
      tasks_completed: (quillData.tasks_completed || 0) + 1,
      updated_at: new Date().toISOString()
    }).eq('name', 'QUILL')
  }

  // Mensagem final de QUILL
  await supabase.from('agent_messages').insert({
    from_agent: 'QUILL',
    to_agent: 'ARIA',
    message: `Post para o X entregue ✓ — ${post.length} caracteres, calibrado para engajamento máximo. Pronto para agendamento via FLUX.`,
    message_type: 'report',
    cycle_number: cycleNumber
  })

  await supabase.from('feed_events').insert({
    agent_name: 'QUILL',
    event_type: 'post_ready',
    message: `Post para o X criado — ${post.length} chars | "${post.slice(0, 50)}..."`,
    cycle_number: cycleNumber
  })

  return post
}
```

### 4.8 `src/lib/twitter.ts`

```typescript
import { TwitterApi } from 'twitter-api-v2'
import { createServerSupabase } from '@/lib/supabase/server'

export async function publishToX(postId: string, content: string): Promise<boolean> {
  const supabase = createServerSupabase()

  try {
    const client = new TwitterApi({
      appKey: process.env.X_API_KEY!,
      appSecret: process.env.X_API_SECRET!,
      accessToken: process.env.X_ACCESS_TOKEN!,
      accessSecret: process.env.X_ACCESS_SECRET!,
    })

    const tweet = await client.v2.tweet(content)

    await supabase.from('posts').update({
      status: 'published',
      x_tweet_id: tweet.data.id,
      x_published_at: new Date().toISOString()
    }).eq('id', postId)

    await supabase.from('feed_events').insert({
      agent_name: 'FLUX',
      event_type: 'post_published',
      message: `Post publicado no X com sucesso — ID: ${tweet.data.id}`
    })

    return true
  } catch (error) {
    console.error('X publish error:', error)

    await supabase.from('posts').update({
      status: 'error'
    }).eq('id', postId)

    return false
  }
}
```

### 4.9 `src/lib/orchestrator.ts`

```typescript
import { createServerSupabase } from '@/lib/supabase/server'
import { ariaOpenCycle, ariaCloseCycle } from '@/lib/agents/aria'
import { scoutResearch } from '@/lib/agents/scout'
import { quillCreatePost } from '@/lib/agents/quill'
import { getTopicForCycle } from '@/lib/topics'

export async function runCycle(cycleNumber: number): Promise<void> {
  const supabase = createServerSupabase()
  const topic = getTopicForCycle(cycleNumber)

  // Criar registro do ciclo
  await supabase.from('cycles').insert({
    cycle_number: cycleNumber,
    topic,
    status: 'running'
  })

  let success = false

  try {
    // ARIA abre o ciclo
    await ariaOpenCycle(cycleNumber, topic)
    await delay(1000)

    // Criar task do SCOUT no kanban
    const { data: scoutTask } = await supabase.from('tasks').insert({
      title: `Pesquisa: ${topic.slice(0, 50)}...`,
      description: `SCOUT analisa tendências sobre: "${topic}"`,
      status: 'queue',
      agent_name: 'SCOUT',
      cycle_number: cycleNumber,
      progress: 0
    }).select().single()

    if (!scoutTask) throw new Error('Failed to create SCOUT task')

    // Mover para executando
    await delay(800)
    await supabase.from('tasks').update({ status: 'executing' }).eq('id', scoutTask.id)

    // SCOUT pesquisa
    const scoutReport = await scoutResearch(topic, cycleNumber, scoutTask.id)
    await delay(1200)

    // Criar task do QUILL
    const { data: quillTask } = await supabase.from('tasks').insert({
      title: `Post X: ${topic.slice(0, 40)}...`,
      description: `QUILL cria post para o X baseado no relatório do SCOUT`,
      status: 'queue',
      agent_name: 'QUILL',
      cycle_number: cycleNumber,
      progress: 0
    }).select().single()

    if (!quillTask) throw new Error('Failed to create QUILL task')

    await delay(600)
    await supabase.from('tasks').update({ status: 'executing' }).eq('id', quillTask.id)

    // QUILL cria o post
    const post = await quillCreatePost(topic, scoutReport, cycleNumber, quillTask.id)
    await delay(800)

    // Atualizar ciclo como completo
    await supabase.from('cycles').update({
      status: 'completed',
      completed_at: new Date().toISOString()
    }).eq('cycle_number', cycleNumber)

    success = true

    // NOTA: publicação automática no X
    // Para ativar, descomente o bloco abaixo e configure as credenciais X
    //
    // const { data: postRecord } = await supabase
    //   .from('posts')
    //   .select('id')
    //   .eq('cycle_number', cycleNumber)
    //   .single()
    //
    // if (postRecord) {
    //   await publishToX(postRecord.id, post)
    // }

  } catch (error) {
    console.error(`Cycle ${cycleNumber} error:`, error)

    await supabase.from('cycles').update({
      status: 'error',
      completed_at: new Date().toISOString()
    }).eq('cycle_number', cycleNumber)

    await supabase.from('feed_events').insert({
      agent_name: 'ARIA',
      event_type: 'cycle_error',
      message: `Erro no ciclo ${cycleNumber}: ${(error as Error).message}`,
      cycle_number: cycleNumber
    })
  }

  // ARIA fecha o ciclo
  await ariaCloseCycle(cycleNumber, success)
}

function delay(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms))
}
```

### 4.10 `src/app/api/cycle/route.ts`

```typescript
import { NextRequest, NextResponse } from 'next/server'
import { auth } from '@clerk/nextjs/server'
import { createServerSupabase } from '@/lib/supabase/server'
import { runCycle } from '@/lib/orchestrator'

export async function POST(req: NextRequest) {
  const { userId } = await auth()
  if (!userId) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }

  const supabase = createServerSupabase()

  // Descobrir o número do próximo ciclo
  const { data: lastCycle } = await supabase
    .from('cycles')
    .select('cycle_number')
    .order('cycle_number', { ascending: false })
    .limit(1)
    .single()

  const nextCycleNumber = (lastCycle?.cycle_number || 0) + 1

  // Rodar ciclo em background (não aguardar)
  runCycle(nextCycleNumber).catch(console.error)

  return NextResponse.json({
    success: true,
    cycle_number: nextCycleNumber,
    message: `Ciclo ${nextCycleNumber} iniciado`
  })
}
```

### 4.11 `src/app/api/cron/route.ts`

```typescript
import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabase } from '@/lib/supabase/server'
import { runCycle } from '@/lib/orchestrator'

// Este endpoint é chamado pelo Vercel Cron a cada 10 minutos
export async function GET(req: NextRequest) {
  const authHeader = req.headers.get('authorization')
  if (authHeader !== `Bearer ${process.env.CRON_SECRET}`) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }

  const supabase = createServerSupabase()

  const { data: lastCycle } = await supabase
    .from('cycles')
    .select('cycle_number, status')
    .order('cycle_number', { ascending: false })
    .limit(1)
    .single()

  // Não iniciar novo ciclo se um ainda está rodando
  if (lastCycle?.status === 'running') {
    return NextResponse.json({ message: 'Ciclo em andamento, pulando' })
  }

  const nextCycleNumber = (lastCycle?.cycle_number || 0) + 1

  runCycle(nextCycleNumber).catch(console.error)

  return NextResponse.json({
    success: true,
    cycle_number: nextCycleNumber
  })
}
```

### 4.12 `vercel.json` (na raiz do projeto)

```json
{
  "crons": [
    {
      "path": "/api/cron",
      "schedule": "*/10 * * * *"
    }
  ]
}
```

### 4.13 `src/hooks/useRealtimeDashboard.ts`

```typescript
'use client'

import { useEffect, useState, useCallback } from 'react'
import { supabase } from '@/lib/supabase/client'
import type { Agent, Task, AgentMessage, Post, FeedEvent } from '@/types'

export function useRealtimeDashboard() {
  const [agents, setAgents] = useState<Agent[]>([])
  const [tasks, setTasks] = useState<Task[]>([])
  const [messages, setMessages] = useState<AgentMessage[]>([])
  const [posts, setPosts] = useState<Post[]>([])
  const [feedEvents, setFeedEvents] = useState<FeedEvent[]>([])
  const [cycleCount, setCycleCount] = useState(0)
  const [loading, setLoading] = useState(true)

  const fetchInitialData = useCallback(async () => {
    const [agentsRes, tasksRes, messagesRes, postsRes, feedRes, cyclesRes] = await Promise.all([
      supabase.from('agents').select('*').order('level'),
      supabase.from('tasks').select('*').order('created_at', { ascending: false }).limit(50),
      supabase.from('agent_messages').select('*').order('created_at', { ascending: false }).limit(30),
      supabase.from('posts').select('*').order('created_at', { ascending: false }).limit(10),
      supabase.from('feed_events').select('*').order('created_at', { ascending: false }).limit(30),
      supabase.from('cycles').select('cycle_number').order('cycle_number', { ascending: false }).limit(1).single()
    ])

    if (agentsRes.data) setAgents(agentsRes.data)
    if (tasksRes.data) setTasks(tasksRes.data)
    if (messagesRes.data) setMessages(messagesRes.data)
    if (postsRes.data) setPosts(postsRes.data)
    if (feedRes.data) setFeedEvents(feedRes.data)
    if (cyclesRes.data) setCycleCount(cyclesRes.data.cycle_number || 0)

    setLoading(false)
  }, [])

  useEffect(() => {
    fetchInitialData()

    // Subscrever em tempo real
    const agentsChannel = supabase
      .channel('agents-changes')
      .on('postgres_changes', { event: '*', schema: 'public', table: 'agents' }, (payload) => {
        if (payload.eventType === 'UPDATE') {
          setAgents(prev => prev.map(a => a.id === (payload.new as Agent).id ? payload.new as Agent : a))
        }
      })
      .subscribe()

    const tasksChannel = supabase
      .channel('tasks-changes')
      .on('postgres_changes', { event: '*', schema: 'public', table: 'tasks' }, (payload) => {
        if (payload.eventType === 'INSERT') {
          setTasks(prev => [payload.new as Task, ...prev].slice(0, 50))
        } else if (payload.eventType === 'UPDATE') {
          setTasks(prev => prev.map(t => t.id === (payload.new as Task).id ? payload.new as Task : t))
        }
      })
      .subscribe()

    const messagesChannel = supabase
      .channel('messages-changes')
      .on('postgres_changes', { event: 'INSERT', schema: 'public', table: 'agent_messages' }, (payload) => {
        setMessages(prev => [payload.new as AgentMessage, ...prev].slice(0, 30))
      })
      .subscribe()

    const postsChannel = supabase
      .channel('posts-changes')
      .on('postgres_changes', { event: '*', schema: 'public', table: 'posts' }, (payload) => {
        if (payload.eventType === 'INSERT') {
          setPosts(prev => [payload.new as Post, ...prev].slice(0, 10))
        } else if (payload.eventType === 'UPDATE') {
          setPosts(prev => prev.map(p => p.id === (payload.new as Post).id ? payload.new as Post : p))
        }
      })
      .subscribe()

    const feedChannel = supabase
      .channel('feed-changes')
      .on('postgres_changes', { event: 'INSERT', schema: 'public', table: 'feed_events' }, (payload) => {
        setFeedEvents(prev => [payload.new as FeedEvent, ...prev].slice(0, 30))
      })
      .subscribe()

    return () => {
      supabase.removeChannel(agentsChannel)
      supabase.removeChannel(tasksChannel)
      supabase.removeChannel(messagesChannel)
      supabase.removeChannel(postsChannel)
      supabase.removeChannel(feedChannel)
    }
  }, [fetchInitialData])

  return { agents, tasks, messages, posts, feedEvents, cycleCount, loading, refetch: fetchInitialData }
}
```

### 4.14 `src/components/dashboard/AgentPanel.tsx`

```tsx
'use client'

import { Agent } from '@/types'
import { Badge } from '@/components/ui/badge'

const AGENT_COLORS = {
  ARIA:  { bg: 'bg-amber-50 dark:bg-amber-950', border: 'border-amber-200 dark:border-amber-800', dot: 'bg-amber-400', initials: 'AR' },
  SCOUT: { bg: 'bg-sky-50 dark:bg-sky-950',     border: 'border-sky-200 dark:border-sky-800',     dot: 'bg-sky-400',   initials: 'SC' },
  QUILL: { bg: 'bg-violet-50 dark:bg-violet-950', border: 'border-violet-200 dark:border-violet-800', dot: 'bg-violet-400', initials: 'QL' },
} as const

const STATUS_COLORS = {
  idle:    'bg-zinc-300 dark:bg-zinc-600',
  working: 'bg-sky-400 animate-pulse',
  done:    'bg-emerald-400',
  error:   'bg-red-400',
}

export function AgentPanel({ agents }: { agents: Agent[] }) {
  return (
    <div className="flex flex-col gap-3">
      <h2 className="text-xs font-mono uppercase tracking-widest text-zinc-400 pb-2 border-b border-zinc-200 dark:border-zinc-800">
        Agentes
      </h2>
      {agents.map((agent) => {
        const colors = AGENT_COLORS[agent.name as keyof typeof AGENT_COLORS]
        const statusColor = STATUS_COLORS[agent.status as keyof typeof STATUS_COLORS]

        return (
          <div key={agent.id} className={`rounded-xl border ${colors?.border} ${colors?.bg} overflow-hidden`}>
            <div className="flex items-center gap-3 px-3 py-2.5">
              <div className={`w-8 h-8 rounded-lg ${colors?.bg} border ${colors?.border} flex items-center justify-center font-mono font-bold text-xs`}>
                {colors?.initials}
              </div>
              <div className="flex-1 min-w-0">
                <div className="font-semibold text-sm">{agent.name}</div>
                <div className="text-xs text-zinc-500 truncate">{agent.role}</div>
              </div>
              <div className={`w-2 h-2 rounded-full flex-shrink-0 ${statusColor}`} />
            </div>
            <div className="px-3 pb-2.5 text-xs text-zinc-500 font-mono border-t border-current/10 pt-2">
              {agent.current_task || 'aguardando...'}
            </div>
            {agent.tools_active && agent.tools_active.length > 0 && (
              <div className="px-3 pb-2.5 flex flex-wrap gap-1">
                {agent.tools_active.map((tool) => (
                  <Badge key={tool} variant="outline" className="text-[10px] px-1.5 py-0 font-mono">
                    {tool}
                  </Badge>
                ))}
              </div>
            )}
          </div>
        )
      })}

      <div className="grid grid-cols-2 gap-2 mt-1">
        <div className="bg-zinc-50 dark:bg-zinc-900 rounded-lg border border-zinc-200 dark:border-zinc-800 p-2.5">
          <div className="text-2xl font-bold font-mono">
            {agents.reduce((sum, a) => sum + (a.tasks_completed || 0), 0)}
          </div>
          <div className="text-[10px] font-mono text-zinc-400 mt-0.5">tarefas concluídas</div>
        </div>
        <div className="bg-zinc-50 dark:bg-zinc-900 rounded-lg border border-zinc-200 dark:border-zinc-800 p-2.5">
          <div className="text-2xl font-bold font-mono text-emerald-500">
            {agents.filter(a => a.status !== 'idle').length}/{agents.length}
          </div>
          <div className="text-[10px] font-mono text-zinc-400 mt-0.5">agentes ativos</div>
        </div>
      </div>
    </div>
  )
}
```

### 4.15 `src/components/dashboard/KanbanBoard.tsx`

```tsx
'use client'

import { Task } from '@/types'
import { Progress } from '@/components/ui/progress'
import { formatDistanceToNow } from 'date-fns'
import { ptBR } from 'date-fns/locale'

const AGENT_DOT_COLORS = {
  ARIA:  'bg-amber-400',
  SCOUT: 'bg-sky-400',
  QUILL: 'bg-violet-400',
}

const COLUMNS = [
  { key: 'queue',     label: 'Fila',       dot: 'bg-zinc-300 dark:bg-zinc-600' },
  { key: 'executing', label: 'Executando', dot: 'bg-sky-400' },
  { key: 'done',      label: 'Entregue',   dot: 'bg-emerald-400' },
] as const

function TaskCard({ task }: { task: Task }) {
  const dotColor = AGENT_DOT_COLORS[task.agent_name as keyof typeof AGENT_DOT_COLORS] || 'bg-zinc-400'

  return (
    <div className="bg-white dark:bg-zinc-900 rounded-lg border border-zinc-200 dark:border-zinc-800 p-2.5 text-sm animate-in slide-in-from-top-2 duration-300">
      <div className="font-medium text-xs leading-snug mb-1.5">{task.title}</div>
      <div className="flex items-center gap-1.5 mb-1.5">
        <div className={`w-1.5 h-1.5 rounded-full ${dotColor}`} />
        <span className="text-[10px] font-mono text-zinc-400">{task.agent_name}</span>
        {task.created_at && (
          <span className="text-[10px] font-mono text-zinc-300 dark:text-zinc-600 ml-auto">
            {formatDistanceToNow(new Date(task.created_at), { locale: ptBR, addSuffix: true })}
          </span>
        )}
      </div>
      {task.status === 'executing' && (
        <Progress value={task.progress} className="h-0.5 mt-1" />
      )}
    </div>
  )
}

export function KanbanBoard({ tasks }: { tasks: Task[] }) {
  return (
    <div>
      <h2 className="text-xs font-mono uppercase tracking-widest text-zinc-400 pb-2 border-b border-zinc-200 dark:border-zinc-800 mb-3">
        Kanban · Tarefas em Execução
      </h2>
      <div className="grid grid-cols-3 gap-3">
        {COLUMNS.map((col) => {
          const colTasks = tasks.filter(t => t.status === col.key).slice(0, 8)
          return (
            <div key={col.key} className="bg-zinc-50 dark:bg-zinc-900 rounded-xl border border-zinc-200 dark:border-zinc-800 overflow-hidden">
              <div className="flex items-center gap-2 px-3 py-2 border-b border-zinc-200 dark:border-zinc-800">
                <div className={`w-1.5 h-1.5 rounded-full ${col.dot}`} />
                <span className="text-xs font-medium text-zinc-600 dark:text-zinc-400">{col.label}</span>
                <span className="ml-auto text-[10px] font-mono bg-white dark:bg-zinc-800 border border-zinc-200 dark:border-zinc-700 rounded px-1.5 py-0.5 text-zinc-400">
                  {colTasks.length}
                </span>
              </div>
              <div className="p-2 flex flex-col gap-1.5 min-h-[60px]">
                {colTasks.map((task) => (
                  <TaskCard key={task.id} task={task} />
                ))}
              </div>
            </div>
          )
        })}
      </div>
    </div>
  )
}
```

### 4.16 `src/components/dashboard/ChatFeed.tsx`

```tsx
'use client'

import { AgentMessage } from '@/types'
import { ScrollArea } from '@/components/ui/scroll-area'
import { formatDistanceToNow } from 'date-fns'
import { ptBR } from 'date-fns/locale'

const BUBBLE_STYLES = {
  ARIA:  'bg-amber-50 dark:bg-amber-950 border-amber-200 dark:border-amber-800',
  SCOUT: 'bg-sky-50 dark:bg-sky-950 border-sky-200 dark:border-sky-800',
  QUILL: 'bg-violet-50 dark:bg-violet-950 border-violet-200 dark:border-violet-800 ml-auto',
}

const NAME_COLORS = {
  ARIA:  'text-amber-600 dark:text-amber-400',
  SCOUT: 'text-sky-600 dark:text-sky-400',
  QUILL: 'text-violet-600 dark:text-violet-400',
}

export function ChatFeed({ messages }: { messages: AgentMessage[] }) {
  const sorted = [...messages].sort((a, b) =>
    new Date(a.created_at).getTime() - new Date(b.created_at).getTime()
  ).slice(-20)

  return (
    <div>
      <h2 className="text-xs font-mono uppercase tracking-widest text-zinc-400 pb-2 border-b border-zinc-200 dark:border-zinc-800 mb-3">
        Comunicação Inter-Agente
      </h2>
      <ScrollArea className="h-[220px]">
        <div className="flex flex-col gap-2 pr-2">
          {sorted.length === 0 ? (
            <div className="text-xs font-mono text-zinc-400 text-center py-8">
              inicie um ciclo para ver os agentes conversando
            </div>
          ) : (
            sorted.map((msg) => (
              <div
                key={msg.id}
                className={`rounded-lg border p-2.5 max-w-[90%] text-xs animate-in fade-in duration-300 ${BUBBLE_STYLES[msg.from_agent as keyof typeof BUBBLE_STYLES] || 'bg-zinc-50 dark:bg-zinc-900 border-zinc-200 dark:border-zinc-800'}`}
              >
                <div className={`font-mono font-semibold text-[10px] mb-1 tracking-wider ${NAME_COLORS[msg.from_agent as keyof typeof NAME_COLORS] || 'text-zinc-500'}`}>
                  {msg.from_agent} {msg.to_agent ? `→ ${msg.to_agent}` : '→ ALL'}
                </div>
                <div className="text-zinc-700 dark:text-zinc-300 leading-relaxed">{msg.message}</div>
                <div className="text-[10px] font-mono text-zinc-400 mt-1.5">
                  {formatDistanceToNow(new Date(msg.created_at), { locale: ptBR, addSuffix: true })}
                </div>
              </div>
            ))
          )}
        </div>
      </ScrollArea>
    </div>
  )
}
```

### 4.17 `src/components/dashboard/LiveFeed.tsx`

```tsx
'use client'

import { FeedEvent } from '@/types'
import { ScrollArea } from '@/components/ui/scroll-area'
import { format } from 'date-fns'
import { ptBR } from 'date-fns/locale'

const EVENT_ICONS: Record<string, string> = {
  cycle_start:      '▶',
  cycle_complete:   '✅',
  cycle_error:      '⚠',
  research_start:   '🔍',
  research_complete:'✓',
  writing_start:    '✍',
  post_ready:       '📝',
  post_published:   '🐦',
}

const AGENT_COLORS: Record<string, string> = {
  ARIA:  'text-amber-500',
  SCOUT: 'text-sky-500',
  QUILL: 'text-violet-500',
  FLUX:  'text-emerald-500',
}

export function LiveFeed({ events }: { events: FeedEvent[] }) {
  return (
    <div>
      <h2 className="text-xs font-mono uppercase tracking-widest text-zinc-400 pb-2 border-b border-zinc-200 dark:border-zinc-800 mb-3">
        Live Feed
      </h2>
      <ScrollArea className="h-[200px]">
        <div className="flex flex-col gap-0 pr-2">
          {events.length === 0 ? (
            <div className="text-xs font-mono text-zinc-400 text-center py-8">
              aguardando eventos...
            </div>
          ) : (
            events.map((event) => (
              <div key={event.id} className="flex items-start gap-2 py-2 border-b border-zinc-100 dark:border-zinc-800 last:border-0 animate-in fade-in duration-300">
                <span className="text-sm flex-shrink-0 mt-0.5">
                  {EVENT_ICONS[event.event_type] || '·'}
                </span>
                <div className="flex-1 min-w-0">
                  <span className={`font-semibold font-mono text-xs ${AGENT_COLORS[event.agent_name] || 'text-zinc-500'}`}>
                    {event.agent_name}
                  </span>
                  <span className="text-xs text-zinc-500 ml-1">{event.message}</span>
                </div>
                <div className="text-[10px] font-mono text-zinc-300 dark:text-zinc-600 flex-shrink-0">
                  {format(new Date(event.created_at), 'HH:mm:ss')}
                </div>
              </div>
            ))
          )}
        </div>
      </ScrollArea>
    </div>
  )
}
```

### 4.18 `src/components/dashboard/PostCard.tsx`

```tsx
'use client'

import { Post } from '@/types'
import { Badge } from '@/components/ui/badge'
import { formatDistanceToNow } from 'date-fns'
import { ptBR } from 'date-fns/locale'

export function PostCard({ posts }: { posts: Post[] }) {
  const latest = posts[0]

  return (
    <div>
      <h2 className="text-xs font-mono uppercase tracking-widest text-zinc-400 pb-2 border-b border-zinc-200 dark:border-zinc-800 mb-3">
        Último Post · X (Twitter)
      </h2>
      {!latest ? (
        <div className="bg-zinc-50 dark:bg-zinc-900 rounded-xl border border-zinc-200 dark:border-zinc-800 p-4 text-xs text-zinc-400 font-mono text-center">
          o primeiro post aparecerá após o ciclo inicial...
        </div>
      ) : (
        <div className="bg-white dark:bg-zinc-900 rounded-xl border border-zinc-200 dark:border-zinc-800 p-4 animate-in fade-in duration-300">
          <div className="text-xs font-mono text-zinc-400 mb-2">QUILL · ciclo {latest.cycle_number}</div>
          <p className="text-sm leading-relaxed text-zinc-800 dark:text-zinc-200 mb-3">
            {latest.content}
          </p>
          <div className="flex items-center gap-2 pt-2.5 border-t border-zinc-100 dark:border-zinc-800">
            <span className="text-[10px] font-mono text-zinc-400 flex-1 truncate">
              {latest.topic.slice(0, 40)}...
            </span>
            <span className="text-[10px] font-mono text-zinc-300 dark:text-zinc-600">
              {latest.word_count} palavras
            </span>
            <Badge
              variant="outline"
              className={`text-[10px] px-1.5 py-0 ${latest.status === 'published' ? 'border-emerald-400 text-emerald-600' : 'border-sky-300 text-sky-600'}`}
            >
              {latest.status === 'published' ? '✓ publicado' : 'pronto para publicar'}
            </Badge>
          </div>
          {latest.created_at && (
            <div className="text-[10px] font-mono text-zinc-300 dark:text-zinc-600 mt-1">
              gerado {formatDistanceToNow(new Date(latest.created_at), { locale: ptBR, addSuffix: true })}
            </div>
          )}
        </div>
      )}

      {posts.length > 1 && (
        <div className="mt-2 text-[10px] font-mono text-zinc-400 text-center">
          + {posts.length - 1} posts anteriores no banco
        </div>
      )}
    </div>
  )
}
```

### 4.19 `src/components/dashboard/StatsBar.tsx`

```tsx
'use client'

interface StatsBarProps {
  cycleCount: number
  postCount: number
  agentCount: number
  activeAgents: number
}

export function StatsBar({ cycleCount, postCount, agentCount, activeAgents }: StatsBarProps) {
  return (
    <div className="flex items-center gap-4 px-4 py-2 bg-zinc-50 dark:bg-zinc-900 border-b border-zinc-200 dark:border-zinc-800">
      <div className="flex items-center gap-6">
        <Stat label="ciclos completos" value={cycleCount} />
        <Stat label="posts gerados" value={postCount} />
        <Stat label="agentes online" value={`${activeAgents}/${agentCount}`} color="text-emerald-500" />
      </div>
      <div className="ml-auto flex items-center gap-2">
        <div className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
        <span className="text-[10px] font-mono text-zinc-400">LIVE · cron a cada 10min</span>
      </div>
    </div>
  )
}

function Stat({ label, value, color = '' }: { label: string; value: number | string; color?: string }) {
  return (
    <div className="flex items-baseline gap-1.5">
      <span className={`font-mono font-bold text-sm ${color || 'text-zinc-800 dark:text-zinc-200'}`}>
        {value}
      </span>
      <span className="text-[10px] font-mono text-zinc-400">{label}</span>
    </div>
  )
}
```

### 4.20 `src/app/dashboard/page.tsx`

```tsx
'use client'

import { useRealtimeDashboard } from '@/hooks/useRealtimeDashboard'
import { AgentPanel } from '@/components/dashboard/AgentPanel'
import { KanbanBoard } from '@/components/dashboard/KanbanBoard'
import { ChatFeed } from '@/components/dashboard/ChatFeed'
import { LiveFeed } from '@/components/dashboard/LiveFeed'
import { PostCard } from '@/components/dashboard/PostCard'
import { StatsBar } from '@/components/dashboard/StatsBar'
import { Button } from '@/components/ui/button'
import { useState } from 'react'

export default function DashboardPage() {
  const { agents, tasks, messages, posts, feedEvents, cycleCount, loading } = useRealtimeDashboard()
  const [triggering, setTriggering] = useState(false)

  const triggerCycle = async () => {
    setTriggering(true)
    try {
      await fetch('/api/cycle', { method: 'POST' })
    } catch (e) {
      console.error(e)
    } finally {
      setTimeout(() => setTriggering(false), 3000)
    }
  }

  if (loading) {
    return (
      <div className="flex items-center justify-center h-full min-h-[400px]">
        <div className="font-mono text-sm text-zinc-400">carregando agentes...</div>
      </div>
    )
  }

  const activeAgents = agents.filter(a => a.status !== 'idle').length

  return (
    <div className="flex flex-col h-full">
      {/* Top bar */}
      <div className="flex items-center gap-3 px-4 py-2.5 border-b border-zinc-200 dark:border-zinc-800 bg-white dark:bg-zinc-950">
        <div className="font-bold text-sm tracking-tight">
          <span className="text-zinc-800 dark:text-zinc-100">ADVENTURE</span>
          <span className="text-sky-500"> LABS</span>
          <span className="text-zinc-400 font-normal"> · AI ORG · MARTECH CELL</span>
        </div>
        <div className="ml-auto flex items-center gap-2">
          <Button
            size="sm"
            variant="outline"
            onClick={triggerCycle}
            disabled={triggering}
            className="font-mono text-xs h-7"
          >
            {triggering ? '● Rodando...' : '▶ Ciclo Manual'}
          </Button>
        </div>
      </div>

      {/* Stats */}
      <StatsBar
        cycleCount={cycleCount}
        postCount={posts.length}
        agentCount={agents.length}
        activeAgents={activeAgents}
      />

      {/* Main grid */}
      <div className="flex-1 grid grid-cols-[260px_1fr_240px] gap-0 overflow-hidden">

        {/* Left: Agents */}
        <div className="border-r border-zinc-200 dark:border-zinc-800 p-4 overflow-y-auto">
          <AgentPanel agents={agents} />
        </div>

        {/* Center: Kanban + Chat */}
        <div className="p-4 overflow-y-auto flex flex-col gap-6">
          <KanbanBoard tasks={tasks} />
          <ChatFeed messages={messages} />
        </div>

        {/* Right: Feed + Post */}
        <div className="border-l border-zinc-200 dark:border-zinc-800 p-4 overflow-y-auto flex flex-col gap-6">
          <LiveFeed events={feedEvents} />
          <PostCard posts={posts} />
        </div>

      </div>
    </div>
  )
}
```

### 4.21 `src/app/dashboard/layout.tsx`

```tsx
import { auth } from '@clerk/nextjs/server'
import { redirect } from 'next/navigation'

export default async function DashboardLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const { userId } = await auth()
  if (!userId) redirect('/sign-in')

  return (
    <div className="h-screen flex flex-col bg-white dark:bg-zinc-950 overflow-hidden">
      {children}
    </div>
  )
}
```

### 4.22 `src/app/layout.tsx`

```tsx
import type { Metadata } from 'next'
import { ClerkProvider } from '@clerk/nextjs'
import './globals.css'

export const metadata: Metadata = {
  title: 'Adventure Labs · AI Org',
  description: 'Sistema autônomo de agentes de IA para martech',
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <ClerkProvider>
      <html lang="pt-BR">
        <body>{children}</body>
      </html>
    </ClerkProvider>
  )
}
```

### 4.23 `src/app/page.tsx`

```tsx
import { redirect } from 'next/navigation'
import { auth } from '@clerk/nextjs/server'

export default async function Home() {
  const { userId } = await auth()
  if (userId) redirect('/dashboard')
  else redirect('/sign-in')
}
```

### 4.24 `src/app/sign-in/[[...sign-in]]/page.tsx`

```tsx
import { SignIn } from '@clerk/nextjs'

export default function SignInPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-zinc-50 dark:bg-zinc-950">
      <SignIn />
    </div>
  )
}
```

### 4.25 `middleware.ts` (na raiz `src/`)

```typescript
import { clerkMiddleware, createRouteMatcher } from '@clerk/nextjs/server'

const isPublicRoute = createRouteMatcher([
  '/sign-in(.*)',
  '/sign-up(.*)',
  '/api/cron(.*)',  // cron é autenticado por CRON_SECRET, não por Clerk
])

export default clerkMiddleware(async (auth, request) => {
  if (!isPublicRoute(request)) {
    await auth.protect()
  }
})

export const config = {
  matcher: ['/((?!_next|[^?]*\\.(?:html?|css|js(?!on)|jpe?g|webp|png|gif|svg|ttf|woff2?|ico|csv|docx?|xlsx?|zip|webmanifest)).*)', '/(api|trpc)(.*)'],
}
```

---

## FASE 5 — DEPLOY

### 5.1 Vercel (deploy)

```bash
npm install -g vercel
vercel --prod
```

### 5.2 Variáveis de ambiente no Vercel

No painel da Vercel, em **Settings → Environment Variables**, adicione todas as variáveis do `.env.local`.

### 5.3 Vercel Cron

O arquivo `vercel.json` já configura o cron para rodar a cada 10 minutos automaticamente após o deploy. Não precisa de configuração adicional.

---

## FASE 6 — COMO TESTAR LOCALMENTE

```bash
# 1. Rodar o dev server
npm run dev

# 2. Acessar http://localhost:3000
# Fazer login com Clerk → vai para /dashboard

# 3. Clicar em "▶ Ciclo Manual" para disparar o primeiro ciclo
# Observar o dashboard atualizar em tempo real
```

---

## CHECKLIST DE VALIDAÇÃO

Antes de considerar o MVP pronto, verificar:

- [ ] Dashboard carrega com 3 agentes (ARIA, SCOUT, QUILL) com status "idle"
- [ ] Ao clicar "Ciclo Manual", os status dos agentes mudam em tempo real
- [ ] Cards aparecem no Kanban e se movem entre colunas (Fila → Executando → Entregue)
- [ ] Chat inter-agente mostra mensagens de ARIA → SCOUT → QUILL → ARIA
- [ ] Live Feed mostra eventos com timestamps corretos
- [ ] Post gerado aparece no card lateral com conteúdo real do Claude
- [ ] Post tem ≤ 280 caracteres (limite do X)
- [ ] Cron job roda automaticamente em prod a cada 10 minutos
- [ ] Dados persistem no Supabase entre sessões
- [ ] RLS impede acesso cross-tenant (testar com 2 usuários diferentes)

---

## NOTAS IMPORTANTES PARA O AGENTE DE CÓDIGO

1. **Não altere a lógica dos agentes** — os system prompts foram calibrados para o tom e formato correto do X
2. **Publicação no X está comentada** — ative só após testar a geração de conteúdo por 2-3 ciclos
3. **O cron só funciona em produção** — localmente, use o botão "Ciclo Manual"
4. **Supabase Realtime** — habilite a extensão no painel antes de rodar (Settings → Realtime)
5. **pgvector** — habilitado no SQL mas não usado no MVP; está pronto para a Fase 2 de RAG
6. **Se der erro de CORS na API do Anthropic** — isso não deve acontecer pois as chamadas são server-side (API Routes), não client-side

---

*Adventure Labs · AI Org Blueprint MVP · v1.0 · 2026*
*Tópico: SCOUT × QUILL · Ciclos automáticos de martech · Posts para X*
