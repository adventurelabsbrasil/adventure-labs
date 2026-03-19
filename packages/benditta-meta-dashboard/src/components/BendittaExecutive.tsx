"use client";

import type { CampaignCpl } from "../types";
import { cn } from "../cn";

function money(n: number) {
  return n.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

export function BendittaExecutive({
  winner,
  bottlenecks,
  className,
}: {
  winner: CampaignCpl | null;
  bottlenecks: { title: string; detail: string }[];
  className?: string;
}) {
  return (
    <div
      className={cn(
        "grid gap-4 lg:grid-cols-2",
        className,
      )}
    >
      <div className="rounded-xl border border-[hsl(32_42%_48%)]/30 bg-[hsl(30_10%_11%)]/95 p-5">
        <h3 className="text-sm font-semibold uppercase tracking-wider text-[hsl(32_42%_55%)]">
          Campanha vencedora
        </h3>
        <p className="mt-1 text-xs text-[hsl(35_8%_58%)]">
          Menor CPL com pelo menos 1 lead no período (empate: maior volume de
          leads).
        </p>
        {winner ? (
          <div className="mt-4 space-y-2">
            <p className="text-sm font-medium leading-snug text-[hsl(40_20%_96%)]">
              {winner.nome}
            </p>
            <div className="flex flex-wrap gap-4 text-xs text-[hsl(35_8%_58%)]">
              <span>
                CPL:{" "}
                <strong className="text-[hsl(40_20%_92%)]">
                  {winner.cpl != null ? money(winner.cpl) : "—"}
                </strong>
              </span>
              <span>
                Leads:{" "}
                <strong className="text-[hsl(40_20%_92%)]">
                  {winner.leads.toLocaleString("pt-BR")}
                </strong>
              </span>
              <span>
                Investimento:{" "}
                <strong className="text-[hsl(40_20%_92%)]">
                  {money(winner.spend)}
                </strong>
              </span>
            </div>
          </div>
        ) : (
          <p className="mt-4 text-sm text-[hsl(35_8%_58%)]">
            Sem leads no período filtrado para ranquear CPL por campanha.
          </p>
        )}
      </div>
      <div className="rounded-xl border border-[hsl(30_8%_20%)] bg-[hsl(30_10%_11%)]/95 p-5">
        <h3 className="text-sm font-semibold uppercase tracking-wider text-[hsl(35_8%_58%)]">
          Gargalos no funil
        </h3>
        <ul className="mt-4 space-y-3">
          {bottlenecks.map((b, i) => (
            <li key={i} className="border-l-2 border-[hsl(32_42%_48%)]/60 pl-3">
              <p className="text-sm font-medium text-[hsl(40_20%_96%)]">
                {b.title}
              </p>
              <p className="mt-1 text-xs leading-relaxed text-[hsl(35_8%_58%)]">
                {b.detail}
              </p>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}
