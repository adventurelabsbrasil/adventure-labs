// Normalização de Filhos (childrenCount) - Padroniza quantidade de filhos para armazenamento e exibição

/**
 * Normaliza o valor de filhos para armazenamento (0-5, onde 5 = "5 ou mais").
 * Usado no formulário de candidatura e na importação CSV.
 * @param {string|number} raw - Valor bruto (ex: "Não tenho filhos.", "", "1", "5 ou mais", 3)
 * @returns {number} - 0 | 1 | 2 | 3 | 4 | 5
 */
export function normalizeChildrenForStorage(raw) {
  if (raw == null || raw === '') return 0;
  const str = String(raw).trim().toLowerCase();
  if (!str) return 0;

  // "não tenho", "0", "nenhum", etc. → 0
  const none = /^(n[ao]o?\s*tenho|0|nenhum|zero|nada|—|-)$/i;
  if (none.test(str) || /^n[ao]o\s*tenho\s*filhos?\.?$/i.test(str)) return 0;

  // Números 1-4
  const n = parseInt(str, 10);
  if (!isNaN(n)) {
    if (n >= 1 && n <= 4) return n;
    if (n >= 5) return 5; // 5 ou mais
    return 0; // n < 1
  }

  // Textos como "5 ou mais", "6", "7+", "mais de 5"
  if (/^(\d+)\s*ou\s*mais$/i.test(str) || /^\d+\+?$/i.test(str) || /mais\s*de\s*\d+/i.test(str)) {
    return 5;
  }
  if (/^(cinco|5|seis|6|sete|7|oito|8|nove|9|dez|10|\d{2,})\s*ou\s*mais?/i.test(str)) return 5;

  return 0;
}

/**
 * Formata o valor de filhos para exibição (perfil, tabelas, listas).
 * Compatível com dados legados (número ou string).
 * @param {string|number|null|undefined} value - Valor do banco
 * @returns {string} - "Não tenho filhos" | "1" | "2" | "3" | "4" | "5 ou mais" | ""
 */
export function formatChildrenForDisplay(value) {
  if (value == null || value === '') return '';
  const str = String(value).trim().toLowerCase();

  // Legado: "não tenho filhos." etc.
  if (/n[ao]o\s*tenho\s*filhos?\.?/i.test(str) || /^(0|nenhum|zero)$/i.test(str)) return 'Não tenho filhos';

  const n = parseInt(value, 10);
  if (!isNaN(n)) {
    if (n === 0) return 'Não tenho filhos';
    if (n >= 1 && n <= 4) return String(n);
    if (n >= 5) return '5 ou mais';
  }

  // "5 ou mais" ou variantes
  if (/5\s*ou\s*mais|\d+\s*ou\s*mais/i.test(str) || (n >= 5 && !isNaN(n))) return '5 ou mais';

  return '';
}

/**
 * Opções para o select de filhos no formulário.
 * value: 0-5 (5 = "5 ou mais")
 */
export const CHILDREN_OPTIONS = [
  { value: 0, label: 'Não tenho filhos' },
  { value: 1, label: '1' },
  { value: 2, label: '2' },
  { value: 3, label: '3' },
  { value: 4, label: '4' },
  { value: 5, label: '5 ou mais' }
];
