"use client";

import type { TotalsAgg } from "../types";
import { cn } from "../cn";
import { bendittaTheme } from "../theme";

function money(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

function pct(n: number | null) {
  if (n == null) return "—";
  return `${n.toFixed(2)}%`;
}

type StatusTone = "good" | "bad" | "neutral";

function Card({
  label,
  value,
  sub,
  status,
}: {
  label: string;
  value: string;
  sub?: string;
  status?: StatusTone;
}) {
  const tone =
    status === "good"
      ? bendittaTheme.positive
      : status === "bad"
        ? bendittaTheme.negative
        : "";

  const borderColor =
    status === "good"
      ? "hsl(142 71% 45% / 0.45)"
      : status === "bad"
        ? "hsl(0 63% 45% / 0.45)"
        : "hsl(30 8% 20%)";

  return (
    <div
      className="rounded-xl border bg-[hsl(30_10%_11%)]/95 p-4 shadow-sm"
      style={{ borderColor }}
    >
      <p
        className="text-[10px] font-semibold uppercase tracking-wider"
        style={{ color: status ? (tone || "hsl(35 8% 58%)") : "hsl(35 8% 58%)" }}
      >
        {label}
      </p>
      <p
        className="mt-1 text-xl font-semibold tracking-tight text-[hsl(40_20%_96%)]"
        style={{ color: status === "neutral" || !status ? undefined : tone || undefined }}
      >
        {value}
      </p>
      {sub ? (
        <p
          className="mt-1 text-xs text-[hsl(35_8%_50%)]"
          style={{
            color: status === "neutral" || !status ? undefined : tone || undefined,
          }}
        >
          {sub}
        </p>
      ) : null}
    </div>
  );
}

export function BendittaScorecards({
  t,
  className,
  efficiency,
}: {
  t: TotalsAgg;
  className?: string;
  efficiency?: {
    cpl?: StatusTone;
    cpc?: StatusTone;
    cpm?: StatusTone;
    ctr?: StatusTone;
  };
}) {
  return (
    <div
      className={cn(
        "grid grid-cols-2 gap-3 md:grid-cols-3 lg:grid-cols-5 xl:grid-cols-5",
        className,
      )}
    >
      <Card label="Valor gasto" value={money(t.spend)} />
      <Card label="Leads" value={t.leads.toLocaleString("pt-BR")} />
      <Card label="Cliques" value={t.clicks.toLocaleString("pt-BR")} />
      <Card
        label="Impressões"
        value={t.impressions.toLocaleString("pt-BR")}
      />
      <Card label="Alcance" value={t.reach.toLocaleString("pt-BR")} />
      <Card
        label="CPL"
        value={t.cpl != null ? money(t.cpl) : "—"}
        status={efficiency?.cpl ?? "neutral"}
      />
      <Card
        label="CPC"
        value={t.cpc != null ? money(t.cpc) : "—"}
        status={efficiency?.cpc ?? "neutral"}
      />
      <Card
        label="CPM"
        value={t.cpm != null ? money(t.cpm) : "—"}
        status={efficiency?.cpm ?? "neutral"}
      />
      <Card
        label="CTR"
        value={pct(t.ctr)}
        status={efficiency?.ctr ?? "neutral"}
      />
      <Card
        label="Criativos"
        value={String(t.creativeCount)}
        sub="Anúncios distintos"
      />
      <Card
        label="Campanhas"
        value={String(t.campaignCount)}
        sub="Conjuntos distintos"
      />
    </div>
  );
}
