"use client";

import {
  Bar,
  BarChart,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import { bendittaTheme } from "../theme";
import { ChartCard } from "./BendittaCharts";

const tipStyle = {
  backgroundColor: bendittaTheme.card,
  border: `1px solid ${bendittaTheme.border}`,
  borderRadius: 8,
  color: bendittaTheme.text,
};

export function BendittaDemographics({
  byAge,
  byGender,
}: {
  byAge: { idade: string; impressoes: number; leads: number; spend: number }[];
  byGender: { genero: string; impressoes: number; leads: number; spend: number }[];
}) {
  return (
    <div className="grid gap-4 lg:grid-cols-2">
      <ChartCard
        title="Faixa etária"
        description="Impressões e leads por idade (período filtrado)"
      >
        <div className="h-[260px] w-full">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart
              data={byAge}
              margin={{ top: 8, right: 8, left: 0, bottom: 0 }}
            >
              <CartesianGrid strokeDasharray="3 3" stroke={bendittaTheme.border} />
              <XAxis
                dataKey="idade"
                tick={{ fill: bendittaTheme.muted, fontSize: 10 }}
              />
              <YAxis tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
              <Tooltip contentStyle={tipStyle} />
              <Bar
                dataKey="impressoes"
                name="Impressões"
                fill={bendittaTheme.chart.primary}
                radius={[4, 4, 0, 0]}
              />
              <Bar
                dataKey="leads"
                name="Leads"
                fill={bendittaTheme.chart.tertiary}
                radius={[4, 4, 0, 0]}
              />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </ChartCard>
      <ChartCard title="Gênero" description="Distribuição no período">
        <div className="h-[260px] w-full">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart
              data={byGender}
              layout="vertical"
              margin={{ top: 8, right: 16, left: 8, bottom: 0 }}
            >
              <CartesianGrid strokeDasharray="3 3" stroke={bendittaTheme.border} horizontal={false} />
              <XAxis type="number" tick={{ fill: bendittaTheme.muted, fontSize: 11 }} />
              <YAxis
                type="category"
                dataKey="genero"
                width={100}
                tick={{ fill: bendittaTheme.muted, fontSize: 11 }}
              />
              <Tooltip contentStyle={tipStyle} />
              <Bar
                dataKey="impressoes"
                name="Impressões"
                fill={bendittaTheme.chart.secondary}
                radius={[0, 4, 4, 0]}
              />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </ChartCard>
    </div>
  );
}
