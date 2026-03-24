import type { SaleRecord, SalesChannel } from './csv'

export type Metric = 'vgv' | 'units'
export type BucketMode = 'auto' | 'day' | 'week'

export type BuiltFrames = {
  frames: Array<{
    date: Date
    values: Record<string, number>
  }>
  channels: Record<string, SalesChannel>
}

function startOfDay(d: Date): Date {
  return new Date(d.getFullYear(), d.getMonth(), d.getDate())
}

function endOfDay(d: Date): Date {
  return new Date(d.getFullYear(), d.getMonth(), d.getDate(), 23, 59, 59, 999)
}

function addDays(d: Date, days: number): Date {
  const out = new Date(d)
  out.setDate(out.getDate() + days)
  return out
}

function diffDays(a: Date, b: Date): number {
  const ms = startOfDay(b).getTime() - startOfDay(a).getTime()
  return Math.round(ms / (24 * 60 * 60 * 1000))
}

function startOfWeekMonday(d: Date): Date {
  const out = startOfDay(d)
  const day = out.getDay() // 0=domingo
  const delta = day === 0 ? -6 : 1 - day
  return addDays(out, delta)
}

function buildBucketEnds(minDate: Date, maxDate: Date, mode: Exclude<BucketMode, 'auto'>): Date[] {
  const start = startOfDay(minDate)
  const end = startOfDay(maxDate)

  const bucketEnds: Date[] = []

  if (mode === 'day') {
    for (let d = start; d.getTime() <= end.getTime(); d = addDays(d, 1)) {
      bucketEnds.push(d)
    }
    return bucketEnds
  }

  // week: fim de semana (domingo) da semana iniciada na segunda
  const weekStart = startOfWeekMonday(start)
  for (let ws = weekStart; ws.getTime() <= end.getTime(); ws = addDays(ws, 7)) {
    const we = addDays(ws, 6)
    bucketEnds.push(we.getTime() > end.getTime() ? end : we)
  }
  return bucketEnds
}

export function buildCumulativeFrames(
  input: SaleRecord[],
  opts: {
    metric: Metric
    bucketMode: BucketMode
    showExternal: boolean
  },
): BuiltFrames {
  const records = input.filter((r) => (opts.showExternal ? true : r.channel !== 'externo'))
  if (!records.length) return { frames: [], channels: {} }

  const minDate = records[0]!.date
  const maxDate = records[records.length - 1]!.date

  const days = diffDays(minDate, maxDate) + 1
  const resolvedMode: Exclude<BucketMode, 'auto'> =
    opts.bucketMode === 'auto' ? (days > 70 ? 'week' : 'day') : opts.bucketMode

  const bucketEnds = buildBucketEnds(minDate, maxDate, resolvedMode)
  const channels: Record<string, SalesChannel> = {}
  const totals: Record<string, number> = {}

  let i = 0
  const frames: BuiltFrames['frames'] = []

  for (const bucketEnd of bucketEnds) {
    const boundary = endOfDay(bucketEnd).getTime()
    while (i < records.length && records[i]!.date.getTime() <= boundary) {
      const r = records[i]!
      const key = r.consultant
      const amount = opts.metric === 'vgv' ? r.vgv : r.units

      totals[key] = (totals[key] ?? 0) + (Number.isFinite(amount) ? amount : 0)

      const prev = channels[key]
      if (!prev) channels[key] = r.channel
      // se a pessoa aparecer como interno e externo, prioriza interno (mais destaque)
      if (prev === 'externo' && r.channel === 'interno') channels[key] = 'interno'

      i++
    }

    frames.push({
      date: startOfDay(bucketEnd),
      values: { ...totals },
    })
  }

  return { frames, channels }
}

