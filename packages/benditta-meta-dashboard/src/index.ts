export type {
  BendittaFiltersState,
  MetaReportRow,
  TotalsAgg,
  DaySeriesPoint,
  CampaignCpl,
} from "./types";
export { parseMetaReportCsv } from "./parseCsv";
export {
  applyFilters,
  computeTotals,
  seriesByDay,
  campaignCplRanking,
  pickWinningCampaign,
  computeBottlenecks,
  buildFunnelData,
  aggregateByAge,
  aggregateByGender,
  minMaxDates,
  tableRowsAggregated,
} from "./aggregate";
export type { TableGroupRow } from "./aggregate";
export { bendittaTheme } from "./theme";
export { useMetaCsv } from "./hooks/useMetaCsv";
export { BendittaDashboard } from "./components/BendittaDashboard";
export type { BendittaDashboardProps } from "./components/BendittaDashboard";
export { BendittaTablePage } from "./components/BendittaTablePage";
export type { BendittaTablePageProps } from "./components/BendittaTablePage";
export { BendittaFiltersBar } from "./components/BendittaFiltersBar";
