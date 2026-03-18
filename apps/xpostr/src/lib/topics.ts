export const MARTECH_TOPICS = [
  "automação de marketing para empresas de serviço B2B brasileiras em 2026",
  "como IA está transformando atendimento ao cliente em empresas de serviço",
  "estratégias de conteúdo orgânico para empresas acima de 100k/mês",
  "CRM com inteligência artificial para equipes comerciais enxutas",
  "métricas que importam para empresas de serviço em escala",
  "autoridade digital com consistência em vez de só viralização",
  "WhatsApp Business API em martech brasileira",
  "automação de SDR: o que funciona em prospecção B2B serviço",
  "agências de marketing e agentes autônomos de IA",
  "IA para multiplicar capacidade sem contratar — empresas de serviço",
];

export function getTopicForCycle(cycleNumber: number): string {
  return MARTECH_TOPICS[(cycleNumber - 1) % MARTECH_TOPICS.length];
}
