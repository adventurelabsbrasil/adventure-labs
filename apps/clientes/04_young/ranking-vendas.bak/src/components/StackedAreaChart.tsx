import type { SaleRecord } from '../lib/csv'

export function StackedAreaChart(props: {
  records: SaleRecord[]
  valueFormatter: (value: number) => string
  maxDate?: Date | null
  animatedProgress?: number // 0-1 para animação da esquerda para direita
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

  // Agrupar por data e canal
  const dateMap = new Map<string, { interno: number; externo: number }>()

  filteredRecords.forEach((record) => {
    const dateKey = new Date(record.date.getFullYear(), record.date.getMonth(), record.date.getDate()).getTime().toString()
    if (!dateMap.has(dateKey)) {
      dateMap.set(dateKey, { interno: 0, externo: 0 })
    }
    const values = dateMap.get(dateKey)!
    values[record.channel] += record.vgv
  })

  const dataPoints = Array.from(dateMap.entries())
    .map(([dateKey, values]) => ({
      date: new Date(Number(dateKey)),
      interno: values.interno,
      externo: values.externo,
      total: values.interno + values.externo,
    }))
    .sort((a, b) => a.date.getTime() - b.date.getTime())

  // Acumular valores
  let internoAcc = 0
  let externoAcc = 0

  const accumulated = dataPoints.map((point) => {
    internoAcc += point.interno
    externoAcc += point.externo
    return {
      date: point.date,
      interno: internoAcc,
      externo: externoAcc,
      total: internoAcc + externoAcc,
    }
  })

  // Calcular maxValue com base em TODOS os dados (não filtrados) para manter eixos fixos
  const allDateMap = new Map<string, { interno: number; externo: number }>()
  
  props.records.forEach((record) => {
    const dateKey = new Date(record.date.getFullYear(), record.date.getMonth(), record.date.getDate()).getTime().toString()
    if (!allDateMap.has(dateKey)) {
      allDateMap.set(dateKey, { interno: 0, externo: 0 })
    }
    const values = allDateMap.get(dateKey)!
    values[record.channel] += record.vgv
  })

  const allDataPoints = Array.from(allDateMap.entries())
    .map(([dateKey, values]) => ({
      date: new Date(Number(dateKey)),
      interno: values.interno,
      externo: values.externo,
    }))
    .sort((a, b) => a.date.getTime() - b.date.getTime())

  let allInternoAcc = 0
  let allExternoAcc = 0
  const allAccumulatedPoints = allDataPoints.map((point) => {
    allInternoAcc += point.interno
    allExternoAcc += point.externo
    return {
      date: point.date,
      total: allInternoAcc + allExternoAcc,
    }
  })

  const maxValue = Math.max(...allAccumulatedPoints.map((d) => d.total), 1)

  const width = 800
  const height = 400
  const padding = { top: 20, right: 80, bottom: 40, left: 80 }
  const chartWidth = width - padding.left - padding.right
  const chartHeight = height - padding.top - padding.bottom

  // Para animação, usar todas as datas do período (01/01/2025 a 31/12/2025)
  const startDate = new Date(2025, 0, 1) // 01/01/2025
  const endDate = new Date(2025, 11, 31) // 31/12/2025
  const totalRange = endDate.getTime() - startDate.getTime()
  
  const getX = (date: Date) => padding.left + ((date.getTime() - startDate.getTime()) / totalRange) * chartWidth
  const getY = (value: number) => padding.top + chartHeight - (value / maxValue) * chartHeight
  
  // Calcular posição X do progresso da animação
  const progress = props.animatedProgress ?? 1
  const maxX = padding.left + chartWidth * progress

  // Criar path para área externa (base)
  const externoPath = accumulated.map((point, idx) => {
    const x = getX(point.date)
    const y = getY(point.externo)
    return `${idx === 0 ? 'M' : 'L'} ${x} ${y}`
  }).join(' ')

  // Criar path para área interna (topo)
  const internoPath = [
    ...accumulated.map((point) => {
      const x = getX(point.date)
      const y = getY(point.externo)
      return `L ${x} ${y}`
    }),
    ...accumulated.slice().reverse().map((point) => {
      const x = getX(point.date)
      const y = getY(point.total)
      return `L ${x} ${y}`
    }),
    'Z',
  ].join(' ')

  return (
    <div className="w-full overflow-x-auto">
      <svg width={width} height={height} className="mx-auto">
        {/* Grid lines */}
        {[0, 0.25, 0.5, 0.75, 1].map((frac) => {
          const y = padding.top + chartHeight - frac * chartHeight
          const value = frac * maxValue
          return (
            <g key={frac}>
              <line
                x1={padding.left}
                y1={y}
                x2={width - padding.right}
                y2={y}
                stroke="rgba(255,255,255,0.1)"
                strokeWidth="1"
              />
              <text
                x={padding.left - 10}
                y={y + 4}
                fill="currentColor"
                className="text-xs fill-slate-400"
                textAnchor="end"
              >
                {props.valueFormatter(value)}
              </text>
            </g>
          )
        })}

        {/* Defs com clip path e gradientes */}
        <defs>
          <clipPath id={`area-clip-${props.maxDate?.getTime() ?? 'all'}`}>
            <rect
              x={padding.left}
              y={0}
              width={maxX - padding.left}
              height={height}
            />
          </clipPath>
          <linearGradient id="externo-gradient" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="0%" stopColor="rgba(148, 163, 184, 0.5)" />
            <stop offset="100%" stopColor="rgba(148, 163, 184, 0.3)" />
          </linearGradient>
          <linearGradient id="interno-gradient" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="0%" stopColor="var(--young-teal)" stopOpacity="0.7" />
            <stop offset="100%" stopColor="var(--young-teal)" stopOpacity="0.4" />
          </linearGradient>
        </defs>

        <g clipPath={`url(#area-clip-${props.maxDate?.getTime() ?? 'all'})`}>

          {/* Área externa */}
          <path
            d={`M ${getX(accumulated[0]!.date)} ${padding.top + chartHeight} ${externoPath} L ${getX(accumulated[accumulated.length - 1]!.date)} ${padding.top + chartHeight} Z`}
            fill="url(#externo-gradient)"
            stroke="rgba(148, 163, 184, 0.6)"
            strokeWidth="1.5"
            className="transition-all duration-300"
          />

          {/* Área interna */}
          <path
            d={`M ${getX(accumulated[0]!.date)} ${getY(accumulated[0]!.externo)} ${internoPath}`}
            fill="url(#interno-gradient)"
            stroke="var(--young-teal)"
            strokeWidth="1.5"
            className="transition-all duration-300"
          />
        </g>

        {/* Linha divisória */}
        <g clipPath={`url(#area-clip-${props.maxDate?.getTime() ?? 'all'})`}>
          {accumulated.map((point) => {
            const x = getX(point.date)
            if (x > maxX) return null
            const y = getY(point.externo)
            return (
              <line
                key={point.date.getTime()}
                x1={x}
                y1={padding.top + chartHeight}
                x2={x}
                y2={y}
                stroke="rgba(255,255,255,0.05)"
                strokeWidth="1"
                strokeDasharray="2,2"
              />
            )
          })}
        </g>

        {/* X-axis labels - sempre mostrar todas as datas principais */}
        {(() => {
          const labels: Date[] = []
          const months = [0, 2, 4, 6, 8, 10] // Jan, Mar, Mai, Jul, Set, Nov
          months.forEach((month) => {
            labels.push(new Date(2025, month, 15)) // Dia 15 de cada mês
          })
          labels.push(new Date(2025, 11, 31)) // 31/12
          
          return labels.map((labelDate) => {
            const x = getX(labelDate)
            return (
              <g key={labelDate.getTime()}>
                <line
                  x1={x}
                  y1={height - padding.bottom}
                  x2={x}
                  y2={height - padding.bottom + 5}
                  stroke="rgba(255,255,255,0.3)"
                  strokeWidth="1"
                />
                <text
                  x={x}
                  y={height - padding.bottom + 20}
                  fill="currentColor"
                  className="text-xs fill-slate-400"
                  textAnchor="middle"
                >
                  {new Intl.DateTimeFormat('pt-BR', { month: 'short' }).format(labelDate)}
                </text>
              </g>
            )
          })
        })()}
      </svg>

      {/* Legend */}
      <div className="mt-4 flex justify-center gap-6">
        <div className="flex items-center gap-2">
          <div className="h-4 w-4 rounded" style={{ backgroundColor: 'var(--young-teal)', opacity: 0.5 }} />
          <span className="text-xs text-slate-300">Interno</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="h-4 w-4 rounded" style={{ backgroundColor: 'rgba(148, 163, 184, 0.4)' }} />
          <span className="text-xs text-slate-300">Externo</span>
        </div>
        <div className="text-xs text-slate-400">
          Total acumulado: {props.valueFormatter(accumulated[accumulated.length - 1]?.total ?? 0)}
        </div>
      </div>
    </div>
  )
}

