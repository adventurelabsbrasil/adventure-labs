"use client";

import { useCallback, useEffect, useState } from "react";
import { UserButton } from "@clerk/nextjs";
import { formatDistanceToNow } from "date-fns";
import { ptBR } from "date-fns/locale";
import {
  Loader2,
  Pause,
  Play,
  Radio,
  Zap,
  MessageSquare,
  LayoutGrid,
} from "lucide-react";
import { cn } from "@/lib/utils";
import { X_HANDLE } from "@/lib/adventure-brand";

type Snapshot = {
  agents: Array<{
    id: string;
    name: string;
    role: string;
    status: string;
    current_task: string | null;
    tasks_completed: number;
  }>;
  tasks: Array<{
    id: string;
    title: string;
    kanban_column: string;
    status: string;
    agent_name: string | null;
    cycle_number: number;
    result: string | null;
  }>;
  messages: Array<{
    id: string;
    from_agent: string;
    to_agent: string | null;
    message: string;
    cycle_number: number;
    created_at: string;
  }>;
  posts: Array<{
    id: string;
    content: string;
    status: string;
    cycle_number: number;
    x_tweet_id: string | null;
    created_at: string;
  }>;
  feed: Array<{
    id: string;
    agent_name: string;
    event_type: string;
    message: string;
    created_at: string;
  }>;
  runState: {
    paused: boolean;
    extra_context: string;
    last_published_at: string | null;
    cycle_in_progress: boolean;
  } | null;
};

const FIFTEEN_MS = 15 * 60 * 1000;

export function DashboardClient() {
  const [snap, setSnap] = useState<Snapshot | null>(null);
  const [err, setErr] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [ctx, setCtx] = useState("");
  const [cycleLoading, setCycleLoading] = useState(false);
  const [now, setNow] = useState(Date.now());

  const load = useCallback(async () => {
    try {
      const r = await fetch("/api/xpostr/snapshot", { credentials: "include" });
      if (!r.ok) {
        const j = await r.json().catch(() => ({}));
        throw new Error(j.error ?? r.statusText);
      }
      const data = await r.json();
      setSnap(data);
      if (data.runState?.extra_context != null) {
        setCtx((c) => (c === "" ? data.runState.extra_context : c));
      }
      setErr(null);
    } catch (e) {
      setErr(e instanceof Error ? e.message : String(e));
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    load();
    const i = setInterval(load, 3500);
    const t = setInterval(() => setNow(Date.now()), 1000);
    return () => {
      clearInterval(i);
      clearInterval(t);
    };
  }, [load]);

  const patchState = async (body: Record<string, unknown>) => {
    const r = await fetch("/api/xpostr/state", {
      method: "PATCH",
      credentials: "include",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    });
    if (!r.ok) throw new Error(await r.text());
    await load();
  };

  const saveContext = async () => {
    await patchState({ extra_context: ctx });
  };

  const togglePause = async () => {
    if (!snap?.runState) return;
    await patchState({ paused: !snap.runState.paused });
  };

  const startAndMaybeRun = async () => {
    await patchState({ paused: false });
    setCycleLoading(true);
    try {
      const r = await fetch("/api/xpostr/cycle", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ forceIntervalBypass: true }),
      });
      const j = await r.json();
      if (!r.ok) throw new Error(j.error ?? r.statusText);
    } catch (e) {
      setErr(e instanceof Error ? e.message : String(e));
    } finally {
      setCycleLoading(false);
      await load();
    }
  };

  const runNow = async () => {
    setCycleLoading(true);
    try {
      const r = await fetch("/api/xpostr/cycle", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ forceIntervalBypass: true }),
      });
      const j = await r.json();
      if (!r.ok) throw new Error(j.error ?? r.statusText);
      if (j.skipped) setErr(j.reason ?? "Ciclo não executado");
      else setErr(null);
    } catch (e) {
      setErr(e instanceof Error ? e.message : String(e));
    } finally {
      setCycleLoading(false);
      await load();
    }
  };

  const nextPostEta = (() => {
    const lp = snap?.runState?.last_published_at;
    if (!lp || snap?.runState?.paused) return null;
    const t = new Date(lp).getTime() + FIFTEEN_MS - now;
    if (t <= 0) return "pronto para o cron";
    const m = Math.ceil(t / 60000);
    return `~${m} min`;
  })();

  const queueTasks =
    snap?.tasks.filter((t) => t.kanban_column === "queue") ?? [];
  const doingTasks =
    snap?.tasks.filter((t) => t.kanban_column === "doing") ?? [];
  const publishedTasks =
    snap?.tasks.filter((t) => t.kanban_column === "published").slice(0, 12) ??
    [];

  if (loading && !snap) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-[#0a1628]">
        <Loader2 className="w-10 h-10 animate-spin text-[#da0028]" />
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-[#0a1628] text-slate-100">
      <header className="border-b border-slate-800 bg-[#0d1f3a]/80 backdrop-blur sticky top-0 z-10">
        <div className="max-w-[1600px] mx-auto px-4 py-3 flex flex-wrap items-center justify-between gap-4">
          <div>
            <h1 className="text-xl font-bold text-white flex items-center gap-2">
              <span className="text-[#da0028]">Xpostr</span>
              <span className="text-slate-500 font-normal text-sm">
                {X_HANDLE}
              </span>
            </h1>
            <p className="text-xs text-slate-500">
              Grove · Zazu · Ogilvy — aventuras calculadas
            </p>
          </div>
          <div className="flex items-center gap-3">
            {snap?.runState?.cycle_in_progress && (
              <span className="flex items-center gap-1 text-amber-400 text-sm">
                <Radio className="w-4 h-4 animate-pulse" /> Ciclo em andamento
              </span>
            )}
            <UserButton afterSignOutUrl="/" />
          </div>
        </div>
      </header>

      <div className="max-w-[1600px] mx-auto p-4 space-y-6">
        {err && (
          <div className="rounded-lg border border-amber-800 bg-amber-950/40 text-amber-200 px-4 py-2 text-sm">
            {err}
          </div>
        )}

        <section className="flex flex-wrap gap-3 items-start">
          {snap?.runState?.paused ? (
            <button
              type="button"
              onClick={startAndMaybeRun}
              disabled={cycleLoading}
              className="inline-flex items-center gap-2 rounded-lg bg-[#da0028] hover:bg-[#b80022] disabled:opacity-50 text-white px-5 py-2.5 font-medium"
            >
              {cycleLoading ? (
                <Loader2 className="w-4 h-4 animate-spin" />
              ) : (
                <Play className="w-4 h-4" />
              )}
              Iniciar + 1º ciclo
            </button>
          ) : (
            <>
              <button
                type="button"
                onClick={togglePause}
                className="inline-flex items-center gap-2 rounded-lg border border-slate-600 bg-slate-800 hover:bg-slate-700 px-5 py-2.5"
              >
                <Pause className="w-4 h-4" />
                Pausar
              </button>
              <button
                type="button"
                onClick={runNow}
                disabled={cycleLoading || snap?.runState?.cycle_in_progress}
                className="inline-flex items-center gap-2 rounded-lg bg-slate-700 hover:bg-slate-600 disabled:opacity-50 px-5 py-2.5"
              >
                {cycleLoading ? (
                  <Loader2 className="w-4 h-4 animate-spin" />
                ) : (
                  <Zap className="w-4 h-4 text-amber-400" />
                )}
                Rodar ciclo agora
              </button>
            </>
          )}
          <div className="rounded-lg border border-slate-700 bg-slate-900/50 px-4 py-2 text-sm">
            <span className="text-slate-500">Próximo slot (cron 15 min): </span>
            <span className="text-white font-mono">{nextPostEta ?? "—"}</span>
          </div>
        </section>

        <section className="grid lg:grid-cols-3 gap-4">
          <div className="lg:col-span-2 space-y-3">
            <h2 className="text-sm font-semibold text-slate-400 flex items-center gap-2">
              <LayoutGrid className="w-4 h-4" /> Kanban
            </h2>
            <div className="grid md:grid-cols-3 gap-3 min-h-[280px]">
              <KanbanCol title="Fila" accent="border-slate-600">
                {queueTasks.map((t) => (
                  <TaskCard key={t.id} t={t} />
                ))}
                {queueTasks.length === 0 && (
                  <p className="text-slate-600 text-sm p-2">Vazio</p>
                )}
              </KanbanCol>
              <KanbanCol title="Em execução" accent="border-[#da0028]/50">
                {doingTasks.map((t) => (
                  <TaskCard key={t.id} t={t} highlight />
                ))}
                {doingTasks.length === 0 && (
                  <p className="text-slate-600 text-sm p-2">Aguardando…</p>
                )}
              </KanbanCol>
              <KanbanCol title="Publicado" accent="border-emerald-800">
                {publishedTasks.map((t) => (
                  <TaskCard key={t.id} t={t} />
                ))}
                {publishedTasks.length === 0 && (
                  <p className="text-slate-600 text-sm p-2">Nenhum ainda</p>
                )}
              </KanbanCol>
            </div>
          </div>

          <div>
            <h2 className="text-sm font-semibold text-slate-400 mb-2">
              Agentes
            </h2>
            <div className="space-y-2">
              {snap?.agents.map((a) => (
                <div
                  key={a.id}
                  className={cn(
                    "rounded-lg border p-3 text-sm",
                    a.status === "working"
                      ? "border-[#da0028]/40 bg-[#da0028]/5"
                      : "border-slate-700 bg-slate-900/40"
                  )}
                >
                  <div className="font-semibold text-white">{a.name}</div>
                  <div className="text-xs text-slate-500">{a.role}</div>
                  {a.current_task && (
                    <div className="text-xs text-amber-200/90 mt-1">
                      {a.current_task}
                    </div>
                  )}
                  <div className="text-xs text-slate-600 mt-1">
                    {a.tasks_completed} tarefas
                  </div>
                </div>
              ))}
            </div>
          </div>
        </section>

        <div className="grid lg:grid-cols-2 gap-4">
          <section>
            <h2 className="text-sm font-semibold text-slate-400 flex items-center gap-2 mb-2">
              <Radio className="w-4 h-4 text-[#da0028]" /> Feed ao vivo
            </h2>
            <div className="rounded-lg border border-slate-700 bg-slate-900/30 max-h-72 overflow-y-auto">
              {(snap?.feed ?? []).map((f) => (
                <div
                  key={f.id}
                  className="px-3 py-2 border-b border-slate-800 text-sm"
                >
                  <span className="text-[#da0028] font-medium">
                    {f.agent_name}
                  </span>
                  <span className="text-slate-500 text-xs ml-2">
                    {formatDistanceToNow(new Date(f.created_at), {
                      addSuffix: true,
                      locale: ptBR,
                    })}
                  </span>
                  <p className="text-slate-300 mt-0.5">{f.message}</p>
                </div>
              ))}
            </div>
          </section>

          <section>
            <h2 className="text-sm font-semibold text-slate-400 flex items-center gap-2 mb-2">
              <MessageSquare className="w-4 h-4" /> Mensagens entre agentes
            </h2>
            <div className="rounded-lg border border-slate-700 bg-slate-900/30 max-h-72 overflow-y-auto">
              {(snap?.messages ?? []).map((m) => (
                <div
                  key={m.id}
                  className="px-3 py-2 border-b border-slate-800 text-sm"
                >
                  <span className="text-white">{m.from_agent}</span>
                  {m.to_agent && (
                    <span className="text-slate-500"> → {m.to_agent}</span>
                  )}
                  <span className="text-slate-600 text-xs ml-2">
                    c{m.cycle_number}
                  </span>
                  <p className="text-slate-400 mt-1 whitespace-pre-wrap line-clamp-4">
                    {m.message}
                  </p>
                </div>
              ))}
            </div>
          </section>
        </div>

        <section>
          <h2 className="text-sm font-semibold text-slate-400 mb-2">
            Últimos posts
          </h2>
          <div className="grid gap-2">
            {(snap?.posts ?? []).slice(0, 6).map((p) => (
              <div
                key={p.id}
                className="rounded-lg border border-slate-700 p-3 text-sm"
              >
                <div className="flex justify-between text-xs text-slate-500">
                  <span>ciclo {p.cycle_number}</span>
                  <span
                    className={cn(
                      p.status === "published" && "text-emerald-400",
                      p.status === "dry_run" && "text-amber-400"
                    )}
                  >
                    {p.status}
                  </span>
                </div>
                <p className="text-white mt-1">{p.content}</p>
                {p.x_tweet_id && (
                  <a
                    href={`https://x.com/i/web/status/${p.x_tweet_id}`}
                    target="_blank"
                    rel="noreferrer"
                    className="text-xs text-[#da0028] mt-1 inline-block"
                  >
                    abrir no X
                  </a>
                )}
              </div>
            ))}
          </div>
        </section>

        <section className="rounded-lg border border-slate-700 p-4 bg-slate-900/20">
          <h2 className="text-sm font-semibold text-white mb-2">
            Contexto para o Suite (opcional)
          </h2>
          <p className="text-xs text-slate-500 mb-2">
            Texto extra injetado no ciclo — não substitui o manual da empresa.
          </p>
          <textarea
            value={ctx}
            onChange={(e) => setCtx(e.target.value)}
            rows={4}
            className="w-full rounded-lg bg-slate-900 border border-slate-600 px-3 py-2 text-sm text-white placeholder-slate-600"
            placeholder="Ex.: campanha atual, tom desejado, produto em destaque…"
          />
          <button
            type="button"
            onClick={saveContext}
            className="mt-2 text-sm rounded-lg bg-slate-700 hover:bg-slate-600 px-4 py-2"
          >
            Salvar contexto
          </button>
        </section>
      </div>
    </div>
  );
}

function KanbanCol({
  title,
  accent,
  children,
}: {
  title: string;
  accent: string;
  children: React.ReactNode;
}) {
  return (
    <div
      className={cn(
        "rounded-xl border-2 bg-slate-900/40 min-h-[200px] p-2 flex flex-col",
        accent
      )}
    >
      <h3 className="text-xs font-bold text-slate-400 uppercase tracking-wider mb-2 px-1">
        {title}
      </h3>
      <div className="flex-1 space-y-2 overflow-y-auto max-h-64">{children}</div>
    </div>
  );
}

function TaskCard({
  t,
  highlight,
}: {
  t: Snapshot["tasks"][0];
  highlight?: boolean;
}) {
  return (
    <div
      className={cn(
        "rounded-lg border p-2 text-xs",
        highlight
          ? "border-[#da0028]/30 bg-[#da0028]/10"
          : "border-slate-700 bg-slate-800/50"
      )}
    >
      <div className="font-medium text-slate-200">{t.title}</div>
      <div className="text-slate-500">c{t.cycle_number}</div>
      {t.result && (
        <p className="text-slate-400 mt-1 line-clamp-2">{t.result}</p>
      )}
    </div>
  );
}
