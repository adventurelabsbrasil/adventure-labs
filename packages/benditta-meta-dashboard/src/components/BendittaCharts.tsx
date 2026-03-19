"use client";

import type { ReactNode } from "react";
import { useState } from "react";
import { format, parseISO } from "date-fns";
import { ptBR } from "date-fns/locale";
import {
  Bar,
  BarChart,
  CartesianGrid,
  ComposedChart,
  Line,
  LineChart,
  Pie,
  PieChart,
  Cell,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import type { DaySeriesPoint } from "../types";
import { bendittaTheme } from "../theme";
import { cn } from "../cn";

function shortDate(iso: string) {
  try {
    return format(parseISO(iso + "T12:00:00"), "dd/MM", { locale: ptBR });
  } catch {
    return iso;
  }
}

function money(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

const tipStyle = {
  backgroundColor: bendittaTheme.card,
  border: `1px solid ${bendittaTheme.border}`,
  borderRadius: 8,
  color: bendittaTheme.text,
};

type LegendToggleKey = string;

function LegendToggles({
  items,
}: {
  items: {
    key: LegendToggleKey;
    label: string;
    color: string;
    visible: boolean;
    onToggle: (key: LegendToggleKey) => void;
  }[];
}) {
  return (
    <div className="mb-3 flex flex-wrap items-center gap-x-4 gap-y-2">
      {items.map((it) => (
        <button
          key={it.key}
          type="button"
          onClick={() => it.onToggle(it.key)}
          className="flex items-center gap-2 rounded-md border border-[hsl(30_8%_20%)] bg-[hsl(30_10%_11%)]/95 px-2 py-1 text-xs text-[hsl(35_8%_58%)] transition-colors hover:text-[hsl(40_20%_92%)]"
          aria-pressed={it.visible}
          title="Clique para ocultar/mostrar no gráfico"
        >
          <span
            className="h-2 w-2 rounded-full"
            style={{
              backgroundColor: it.color,
              opacity: it.visible ? 1 : 0.25,
            }}
          />
          <span className="truncate">{it.label}</span>
          <span className="text-[10px]" style={{ opacity: it.visible ? 1 : 0.45 }}>
            {it.visible ? "on" : "off"}
          </span>
        </button>
      ))}
    </div>
  );
}

export function ChartCard({
  title,
  description,
  children,
  className,
}: {
  title: string;
  description?: string;
  children: ReactNode;
  className?: string;
}) {
  return (
    <div
      className={cn(
        "rounded-xl border border-[hsl(30_8%_20%)] bg-[hsl(30_10%_11%)]/95 p-4",
        className,
      )}
    >
      <h3 className="text-sm font-semibold text-[hsl(40_20%_96%)]">{title}</h3>
      {description ? (
        <p className="mb-3 text-xs text-[hsl(35_8%_58%)]">{description}</p>
      ) : (
        <div className="mb-3" />
      )}
      {children}
    </div>
  );
}

export function ImpressionsLineChart({ data }: { data: DaySeriesPoint[] }) {
  const chartData = data.map((d) => ({
    ...d,
    label: shortDate(d.dia),
  }));
  return (
    <div className="h-[260px] w-full">
      <ResponsiveContainer width="100%" height="100%">
        <LineChart data={chartData} margin={{ top: 8, right: 8, left: 0, bottom: 0 }}>
          <CartesianGrid strokeDasharray="3 3" stroke={bendittaTheme.border} />
          <XAxis dataKey="label" tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
          <YAxis tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
          <Tooltip
            contentStyle={tipStyle}
            formatter={(v: number) => [v.toLocaleString("pt-BR"), "Impressões"]}
            labelFormatter={(_, p) => (p[0]?.payload?.dia as string) ?? ""}
          />
          <Line
            type="monotone"
            dataKey="impressoes"
            name="Impressões"
            stroke={bendittaTheme.chart.primary}
            strokeWidth={2}
            dot={false}
          />
        </LineChart>
      </ResponsiveContainer>
    </div>
  );
}

export function ClicksLineChart({ data }: { data: DaySeriesPoint[] }) {
  const chartData = data.map((d) => ({
    ...d,
    label: shortDate(d.dia),
  }));
  return (
    <div className="h-[260px] w-full">
      <ResponsiveContainer width="100%" height="100%">
        <LineChart data={chartData} margin={{ top: 8, right: 8, left: 0, bottom: 0 }}>
          <CartesianGrid strokeDasharray="3 3" stroke={bendittaTheme.border} />
          <XAxis dataKey="label" tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
          <YAxis tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
          <Tooltip
            contentStyle={tipStyle}
            formatter={(v: number) => [v.toLocaleString("pt-BR"), "Cliques"]}
          />
          <Line
            type="monotone"
            dataKey="cliques"
            name="Cliques"
            stroke={bendittaTheme.chart.tertiary}
            strokeWidth={2}
            dot={false}
          />
        </LineChart>
      </ResponsiveContainer>
    </div>
  );
}

export function EfficiencyLineChart({ data }: { data: DaySeriesPoint[] }) {
  const chartData = data.map((d) => ({
    ...d,
    label: shortDate(d.dia),
    cpc: d.cpc,
    cpm: d.cpm,
    cpl: d.cpl,
  }));

  const [visible, setVisible] = useState({
    cpc: true,
    cpm: true,
    cpl: true,
  });

  const toggle = (key: LegendToggleKey) => {
    setVisible((prev) => ({ ...prev, [key]: !prev[key as keyof typeof prev] }));
  };

  return (
    <div className="h-[280px] w-full">
      <LegendToggles
        items={[
          {
            key: "cpc",
            label: "CPC",
            color: bendittaTheme.chart.primary,
            visible: visible.cpc,
            onToggle: toggle,
          },
          {
            key: "cpm",
            label: "CPM",
            color: bendittaTheme.chart.quaternary,
            visible: visible.cpm,
            onToggle: toggle,
          },
          {
            key: "cpl",
            label: "CPL",
            color: bendittaTheme.chart.secondary,
            visible: visible.cpl,
            onToggle: toggle,
          },
        ]}
      />
      <ResponsiveContainer width="100%" height="100%">
        <LineChart data={chartData} margin={{ top: 8, right: 8, left: 0, bottom: 0 }}>
          <CartesianGrid strokeDasharray="3 3" stroke={bendittaTheme.border} />
          <XAxis dataKey="label" tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
          <YAxis
            tick={{ fill: bendittaTheme.muted, fontSize: 11 }}
            tickFormatter={(v) => `R$${v}`}
          />
          <Tooltip
            contentStyle={tipStyle}
            formatter={(v: number | string, name: string) => {
              const label =
                name === "cpc" ? "CPC" : name === "cpm" ? "CPM" : "CPL";
              if (v === "" || v == null || Number.isNaN(Number(v)))
                return ["—", label];
              return [money(Number(v)), label];
            }}
          />
          {visible.cpc ? (
            <Line
              type="monotone"
              dataKey="cpc"
              name="cpc"
              stroke={bendittaTheme.chart.primary}
              strokeWidth={2}
              dot={false}
              connectNulls={false}
            />
          ) : null}
          {visible.cpm ? (
            <Line
              type="monotone"
              dataKey="cpm"
              name="cpm"
              stroke={bendittaTheme.chart.quaternary}
              strokeWidth={2}
              dot={false}
              connectNulls={false}
            />
          ) : null}
          {visible.cpl ? (
            <Line
              type="monotone"
              dataKey="cpl"
              name="cpl"
              stroke={bendittaTheme.chart.secondary}
              strokeWidth={2}
              dot={false}
              connectNulls={false}
            />
          ) : null}
        </LineChart>
      </ResponsiveContainer>
    </div>
  );
}

export function LeadsCostBarChart({ data }: { data: DaySeriesPoint[] }) {
  const chartData = data.map((d) => ({
    ...d,
    label: shortDate(d.dia),
  }));

  const [visible, setVisible] = useState({
    leads: true,
    cpl: true,
  });

  const toggle = (key: LegendToggleKey) => {
    setVisible((prev) => ({ ...prev, [key]: !prev[key as keyof typeof prev] }));
  };

  return (
    <div className="h-[280px] w-full">
      <LegendToggles
        items={[
          {
            key: "leads",
            label: "Leads",
            color: bendittaTheme.chart.tertiary,
            visible: visible.leads,
            onToggle: toggle,
          },
          {
            key: "cpl",
            label: "CPL (R$)",
            color: bendittaTheme.chart.secondary,
            visible: visible.cpl,
            onToggle: toggle,
          },
        ]}
      />
      <ResponsiveContainer width="100%" height="100%">
        <ComposedChart data={chartData} margin={{ top: 8, right: 8, left: 0, bottom: 0 }}>
          <CartesianGrid strokeDasharray="3 3" stroke={bendittaTheme.border} />
          <XAxis dataKey="label" tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
          <YAxis
            yAxisId="left"
            tick={{ fill: bendittaTheme.muted, fontSize: 11 }}
            allowDecimals={false}
          />
          <YAxis
            yAxisId="right"
            orientation="right"
            tick={{ fill: bendittaTheme.muted, fontSize: 11 }}
            tickFormatter={(v) => `R$${v}`}
          />
          <Tooltip
            contentStyle={tipStyle}
            formatter={(v: number, name: string) =>
              name === "leads" ? [v.toLocaleString("pt-BR"), "Leads"] : [money(v), "CPL"]
            }
          />
          {visible.leads ? (
            <Bar
              yAxisId="left"
              dataKey="leads"
              name="leads"
              fill={bendittaTheme.chart.tertiary}
              radius={[4, 4, 0, 0]}
            />
          ) : null}
          {visible.cpl ? (
            <Line
              type="monotone"
              yAxisId="right"
              dataKey="cpl"
              name="cpl"
              stroke={bendittaTheme.chart.secondary}
              strokeWidth={2}
              dot={false}
              connectNulls={false}
            />
          ) : null}
        </ComposedChart>
      </ResponsiveContainer>
    </div>
  );
}

export function LeadsDonutChart({
  data,
}: {
  data: { name: string; value: number }[];
}) {
  const palette = [
    bendittaTheme.chart.primary,
    bendittaTheme.chart.secondary,
    bendittaTheme.chart.tertiary,
    bendittaTheme.chart.quaternary,
    "#b8956a",
    "#8b7355",
    "#6b8f7a",
  ];

  const total = data.reduce((acc, it) => acc + it.value, 0);

  return (
    <div className="h-[260px] w-full flex items-center justify-center">
      <div className="relative h-[260px] w-full">
        <ResponsiveContainer width="100%" height="100%">
          <PieChart>
            <Tooltip
              contentStyle={tipStyle}
              formatter={(v: number) => v.toLocaleString("pt-BR")}
            />
            <Pie
              data={data}
              dataKey="value"
              nameKey="name"
              innerRadius={55}
              outerRadius={95}
              paddingAngle={2}
              stroke={bendittaTheme.border}
              labelLine={false}
              isAnimationActive={false}
            >
              {data.map((_, i) => (
                <Cell
                  key={i}
                  fill={palette[i % palette.length]}
                  opacity={_.value <= 0 ? 0.2 : 1}
                />
              ))}
            </Pie>
          </PieChart>
        </ResponsiveContainer>
        <div className="pointer-events-none absolute inset-0 flex flex-col items-center justify-center">
          <p className="text-lg font-semibold text-[hsl(40_20%_96%)]">
            {total.toLocaleString("pt-BR")}
          </p>
          <p className="text-[10px] font-semibold uppercase tracking-wider text-[hsl(35_8%_58%)]">
            total de leads
          </p>
        </div>
      </div>
    </div>
  );
}
