/**
 * Mapeamento do CSV "Controle de Projetos - Projetos.csv" para o app.
 * Copie para import-projects-config.ts e ajuste os nomes dos clientes
 * para bater exatamente com o cadastrado em adv_clients (Dashboard → Clientes).
 */

/** Propriedades que são projetos internos (sem cliente). client_id = null. */
export const PROPRIEDADE_INTERNO = ["Adventure", "Pessoal"] as const;

/**
 * Propriedade (coluna do CSV) → nome exato do cliente em adv_clients.
 * Se o nome no app for diferente (ex.: "Lidera Space" em vez de "Lidera"), ajuste aqui.
 */
export const PROPRIEDADE_TO_CLIENT_NOME: Record<string, string> = {
  Lidera: "Lidera",
  Young: "Young",
  "Rose Portal": "Rose Portal",
};

/** Status (coluna do CSV) → stage do Kanban (adv_projects.stage). */
export const STATUS_TO_STAGE: Record<string, "briefing" | "implementacao" | "execucao" | "relatorio"> = {
  Entregue: "relatorio",
  "Em andamento": "execucao",
  Prototipagem: "briefing",
  "": "briefing",
  // Qualquer outro status (ex.: standby) cai em briefing; edite no app depois se quiser.
};
