/**
 * Remove prefixos comuns dos nomes de consultores
 * Ex: "YNG - Ana" -> "Ana", "SBY2 - Fernando" -> "Fernando"
 * "2.Verificar imobiliária" -> "Outras Imobiliárias Externas"
 */
export function cleanConsultantName(name: string): string {
  // Troca "2.Verificar imobiliária" por "Outras Imobiliárias Externas"
  if (name.toLowerCase().includes('verificar imobiliária') || name.toLowerCase().includes('2.verificar imobiliaria')) {
    return 'Outras Imobiliárias Externas'
  }
  
  return name
    .replace(/^(YNG|SBY|SBY2|CAY|MTC|IDA|SAY|BAY|SLY|SAP|SX)\s*-\s*/i, '')
    .trim()
}

/**
 * Agrupa todos os registros externos em um único consultor "Externo"
 */
export function groupExternalRecords(records: Array<{ consultant: string; channel: string; [key: string]: unknown }>) {
  return records.map((r) => ({
    ...r,
    consultant: r.channel === 'externo' ? 'Externo' : cleanConsultantName(r.consultant),
  }))
}

