"use client";

import { useCallback, useEffect, useState } from "react";
import { parseMetaReportCsv } from "../parseCsv";
import type { MetaReportRow } from "../types";

export function useMetaCsv(csvUrl: string) {
  const [rows, setRows] = useState<MetaReportRow[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch(csvUrl, { cache: "no-store" });
      if (!res.ok) throw new Error(`Falha ao carregar CSV (${res.status})`);
      const text = await res.text();
      const parsed = parseMetaReportCsv(text);
      setRows(parsed);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Erro desconhecido");
      setRows([]);
    } finally {
      setLoading(false);
    }
  }, [csvUrl]);

  useEffect(() => {
    void load();
  }, [load]);

  return { rows, loading, error, reload: load };
}
