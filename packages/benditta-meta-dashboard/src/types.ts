export type MetaReportRow = {
  dia: string;
  objetivo: string;
  nomeConjunto: string;
  nomeAnuncio: string;
  idade: string;
  genero: string;
  alcance: number;
  impressoes: number;
  frequencia: number;
  tipoResultado: string;
  resultados: number;
  valorUsado: number;
  custoPorResultado: number | null;
  cpc: number | null;
  cpm: number | null;
  cliques: number;
  ctr: number | null;
  inicioRelatorios: string;
  terminoRelatorios: string;
};

export type BendittaFiltersState = {
  dateFrom: string;
  dateTo: string;
  campanha: string;
  objetivo: string;
  anuncio: string;
  idade: string;
  genero: string;
};

export type TotalsAgg = {
  spend: number;
  leads: number;
  clicks: number;
  impressions: number;
  reach: number;
  cpl: number | null;
  cpc: number | null;
  cpm: number | null;
  ctr: number | null;
  creativeCount: number;
  campaignCount: number;
};

export type DaySeriesPoint = {
  dia: string;
  impressoes: number;
  cliques: number;
  spend: number;
  leads: number;
  cpc: number | null;
  cpm: number | null;
  cpl: number | null;
};

export type CampaignCpl = {
  nome: string;
  spend: number;
  leads: number;
  cpl: number | null;
};
