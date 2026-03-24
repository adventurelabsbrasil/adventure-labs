import type { SaleRecord } from '../lib/csv'

type CityData = {
  name: string
  units: number
}

export function CityRankingChart(props: {
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

  // Agrupar por cidade
  const cityMap = new Map<string, number>()

  filteredRecords.forEach((record) => {
    if (record.city) {
      // Limpar nome da cidade (remover /RS, /SC, etc se houver)
      const cleanCity = record.city.split('/')[0]?.trim() || record.city.trim()
      const current = cityMap.get(cleanCity) || 0
      cityMap.set(cleanCity, current + (Number.isFinite(record.units) ? record.units : 0))
    }
  })

  const cities: CityData[] = Array.from(cityMap.entries())
    .map(([name, units]) => ({
      name,
      units,
    }))
    .sort((a, b) => b.units - a.units)
    .slice(0, 15) // Top 15 cidades

  if (!cities.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado de cidade disponível
      </div>
    )
  }

  const maxValue = Math.max(...cities.map((c) => c.units), 1)
  const height = Math.max(400, cities.length * 35)
  const padding = { top: 20, right: 80, bottom: 20, left: 20 }
  const chartWidth = 600
  const barHeight = 28
  const barGap = 6

  return (
    <div className="w-full overflow-x-auto">
      <svg width={chartWidth + padding.left + padding.right} height={height} className="mx-auto">
        {/* Gradiente de calor (heatmap) para cidades */}
        <defs>
          <linearGradient id="city-heat-gradient" x1="0%" y1="0%" x2="100%" y2="0%">
            <stop offset="0%" stopColor="#10b981" stopOpacity="0.9" />
            <stop offset="50%" stopColor="var(--young-teal)" stopOpacity="0.8" />
            <stop offset="100%" stopColor="#06b6d4" stopOpacity="0.7" />
          </linearGradient>
        </defs>

        {cities.map((city, idx) => {
          const y = padding.top + idx * (barHeight + barGap)
          const barWidth = (city.units / maxValue) * chartWidth
          // Intensidade baseada no volume (maior volume = mais intenso)
          const volumeRatio = city.units / maxValue
          const intensity = 0.7 + volumeRatio * 0.3

          return (
            <g key={city.name}>
              {/* Barra com gradiente de calor */}
              <rect
                x={padding.left}
                y={y}
                width={barWidth}
                height={barHeight}
                fill="url(#city-heat-gradient)"
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
                {city.name.length > 30 ? city.name.substring(0, 30) + '...' : city.name}
              </text>
              {/* Valor */}
              <text
                x={padding.left + barWidth + 8}
                y={y + barHeight / 2 + 4}
                fill="currentColor"
                className="text-xs fill-slate-300 font-semibold"
              >
                {city.units.toLocaleString('pt-BR')}
              </text>
            </g>
          )
        })}
      </svg>
    </div>
  )
}

