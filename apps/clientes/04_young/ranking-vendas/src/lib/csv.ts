import Papa from 'papaparse'
import { cleanConsultantName } from './utils'

export type SalesChannel = 'interno' | 'externo'

export type SaleRecord = {
  date: Date
  consultant: string
  channel: SalesChannel
  asset: string // Empreendimento/Ativo
  vgv: number
  units: number
  source: string | null
  medium: string | null
  city: string | null
}

type ParseResult = {
  records: SaleRecord[]
  errors: string[]
}

function normalizeHeader(h: string): string {
  return h.trim().toLowerCase().replace(/\s+/g, '_')
}

function pick(row: Record<string, unknown>, keys: string[]): string | null {
  for (const k of keys) {
    const v = row[k]
    if (typeof v === 'string' && v.trim()) return v.trim()
    if (typeof v === 'number' && Number.isFinite(v)) return String(v)
  }
  return null
}

function parseNumberLoose(input: string | null): number {
  if (!input) return 0
  // aceita "1.234.567,89" ou "1234567.89" ou "1234567"
  const s = input.trim().replace(/\s/g, '')
  const hasComma = s.includes(',')
  const normalized = hasComma
    ? s.replace(/\./g, '').replace(',', '.')
    : s.replace(/,/g, '')
  const n = Number(normalized)
  return Number.isFinite(n) ? n : 0
}

function parseDateLoose(input: string | null): Date | null {
  if (!input) return null
  const s = input.trim()
  // ISO (2025-12-31)
  const iso = new Date(s)
  if (!Number.isNaN(iso.getTime())) return iso

  // BR (31/12/2025)
  const m = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/.exec(s)
  if (m) {
    const day = Number(m[1])
    const month = Number(m[2])
    const year = Number(m[3])
    const d = new Date(year, month - 1, day)
    if (!Number.isNaN(d.getTime())) return d
  }

  return null
}

function normalizeChannel(input: string | null): SalesChannel {
  const s = (input ?? '').trim().toLowerCase()
  if (s.startsWith('ext')) return 'externo'
  if (s.startsWith('out')) return 'externo'
  if (s === 'externa') return 'externo'
  if (s === 'interna') return 'interno'
  return 'interno'
}

export function parseSalesCsv(csvText: string): ParseResult {
  const errors: string[] = []

  const parsed = Papa.parse<Record<string, unknown>>(csvText, {
    header: true,
    skipEmptyLines: true,
    transformHeader: (h: string) => normalizeHeader(h),
  })

  if (parsed.errors?.length) {
    errors.push(parsed.errors[0]!.message)
  }

  const records: SaleRecord[] = []
  const rows = parsed.data ?? []

  for (const row of rows) {
    const dateStr = pick(row, ['data', 'date', 'dt', 'dia'])
    const intermediaçãoStr = pick(row, ['intermediação_da_venda', 'intermediacao_da_venda'])
    const channelStr = pick(row, ['canal', 'origem', 'tipo', 'channel'])
    
    // Tenta determinar o canal primeiro
    let channel: SalesChannel = normalizeChannel(intermediaçãoStr || channelStr)
    
    // Busca o consultor baseado no canal
    let name: string | null = null
    if (channel === 'interno') {
      name = pick(row, [
        'responsável_pela_venda_interna',
        'responsavel_pela_venda_interna',
        'consultor', 'consultora', 'nome', 'consultant', 'vendedor'
      ])
    } else {
      name = pick(row, [
        'responsável_pela_venda_externa',
        'responsavel_pela_venda_externa',
        'consultor', 'consultora', 'nome', 'consultant', 'corretor'
      ])
    }
    
    // Se não encontrou pelo canal, tenta qualquer um
    if (!name) {
      name = pick(row, [
        'responsável_pela_venda_interna',
        'responsavel_pela_venda_interna',
        'responsável_pela_venda_externa',
        'responsavel_pela_venda_externa',
        'consultor', 'consultora', 'nome', 'consultant', 'vendedor', 'corretor'
      ])
    }
    
    const assetStr = pick(row, ['ativo', 'asset', 'empreendimento', 'projeto'])
    const sourceStr = pick(row, ['source', 'origem', 'fonte'])
    const mediumStr = pick(row, ['medium', 'meio', 'canal_medio'])
    const cityStr = pick(row, ['cidade', 'city', 'local'])
    const vgvStr = pick(row, [
      'valor_do_lote_à_vista_-',
      'valor_do_lote_a_vista_-',
      'valor_do_lote_à_vista',
      'valor_do_lote_a_vista',
      'vgv', 'valor', 'faturamento', 'receita'
    ])
    const unitsStr = pick(row, ['vendas', 'unidades', 'unidade', 'units', 'qtd', 'quantidade'])

    const date = parseDateLoose(dateStr)
    if (!date) {
      errors.push('CSV: coluna "data" inválida (ex.: 2025-12-31 ou 31/12/2025).')
      continue
    }
    if (!name) {
      errors.push('CSV: coluna "consultor" (nome) ausente em alguma linha.')
      continue
    }

    // Limpa nomes de todos os consultores (internos e externos individuais)
    const finalName = cleanConsultantName(name)
    
    // Limpa o nome do ativo (remove prefixos numéricos como "10. ", "03. " e mantém o nome principal)
    let cleanAsset = assetStr || 'Desconhecido'
    // Remove padrões como "10. CAY - Erico Verissimo" -> "CAY"
    cleanAsset = cleanAsset.replace(/^\d+\.\s*/, '') // Remove "10. "
    // Se tiver " - ", pega apenas a primeira parte antes do " - "
    if (cleanAsset.includes(' - ')) {
      cleanAsset = cleanAsset.split(' - ')[0]?.trim() || cleanAsset
    }
    cleanAsset = cleanAsset.trim() || assetStr || 'Desconhecido'

    records.push({
      date,
      consultant: finalName,
      channel,
      asset: cleanAsset,
      vgv: parseNumberLoose(vgvStr),
      units: Math.round(parseNumberLoose(unitsStr)),
      source: sourceStr || null,
      medium: mediumStr || null,
      city: cityStr || null,
    })
  }

  records.sort((a, b) => a.date.getTime() - b.date.getTime())

  return { records, errors }
}

