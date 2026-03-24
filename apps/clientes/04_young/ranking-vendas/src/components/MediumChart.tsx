import type { SaleRecord } from '../lib/csv'

type MediumData = {
  label: string
  value: number
}

export function MediumChart(props: {
  records: SaleRecord[]
  maxDate?: Date | null
}) {
  if (!props.records.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado disponível
      </div>
    )
  }

  // Filtrar records até a data máxima (se fornecida)
  const filteredRecords = props.maxDate
    ? props.records.filter((r) => {
        const recordDate = new Date(r.date.getFullYear(), r.date.getMonth(), r.date.getDate())
        const maxDateEnd = new Date(props.maxDate!.getFullYear(), props.maxDate!.getMonth(), props.maxDate!.getDate(), 23, 59, 59, 999)
        return recordDate.getTime() <= maxDateEnd.getTime()
      })
    : props.records

  if (!filteredRecords.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado disponível até esta data
      </div>
    )
  }

  // Agrupar por medium
  const mediumMap = new Map<string, number>()

  filteredRecords.forEach((record) => {
    if (record.medium && record.medium.trim()) {
      const medium = record.medium.trim()
      const current = mediumMap.get(medium) || 0
      mediumMap.set(medium, current + (Number.isFinite(record.units) ? record.units : 0))
    }
  })

  const data: MediumData[] = Array.from(mediumMap.entries())
    .map(([label, value]) => ({
      label,
      value,
    }))
    .filter((d) => d.value > 0)
    .sort((a, b) => b.value - a.value)
    .slice(0, 15) // Top 15

  if (!data.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado de medium disponível
      </div>
    )
  }

  const maxValue = Math.max(...data.map((d) => d.value), 1)
  const height = Math.max(400, data.length * 35)
  const padding = { top: 20, right: 100, bottom: 20, left: 20 }
  const chartWidth = 600
  const barHeight = 28
  const barGap = 6

  return (
    <div className="w-full overflow-x-auto">
      <svg width={chartWidth + padding.left + padding.right} height={height} className="mx-auto">
        {/* Gradiente para medium (laranja/amarelo) */}
        <defs>
          <linearGradient id="medium-gradient" x1="0%" y1="0%" x2="100%" y2="0%">
            <stop offset="0%" stopColor="var(--young-orange)" stopOpacity="0.9" />
            <stop offset="100%" stopColor="#f59e0b" stopOpacity="0.7" />
          </linearGradient>
        </defs>

        {data.map((item, idx) => {
          const y = padding.top + idx * (barHeight + barGap)
          const barWidth = (item.value / maxValue) * chartWidth
          // Intensidade baseada na posição (quanto maior, mais intenso)
          const intensity = 1 - (idx / data.length) * 0.3

          return (
            <g key={idx}>
              {/* Barra com gradiente */}
              <rect
                x={padding.left}
                y={y}
                width={barWidth}
                height={barHeight}
                fill="url(#medium-gradient)"
                fillOpacity={intensity}
                rx="4"
                className="transition-all duration-300"
              />
              {/* Label */}
              <text
                x={padding.left + 8}
                y={y + barHeight / 2 + 4}
                fill="currentColor"
                className="text-xs fill-slate-200 font-medium"
              >
                {item.label.length > 40 ? item.label.substring(0, 40) + '...' : item.label}
              </text>
              {/* Valor */}
              <text
                x={padding.left + barWidth + 8}
                y={y + barHeight / 2 + 4}
                fill="currentColor"
                className="text-xs fill-slate-300 font-semibold"
              >
                {item.value.toLocaleString('pt-BR')}
              </text>
            </g>
          )
        })}
      </svg>
    </div>
  )
}

