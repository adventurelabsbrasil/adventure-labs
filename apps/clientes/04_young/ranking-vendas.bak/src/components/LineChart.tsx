import type { ChartItem } from '../hooks/useTimelapse'

type DataPoint = {
  date: Date
  values: ChartItem[]
}

export function LineChart(props: {
  data: DataPoint[]
  valueFormatter: (value: number) => string
  animatedProgress?: number // 0-1 para animação da esquerda para direita
}) {
  if (!props.data.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado disponível
      </div>
    )
  }

  const allNames = new Set<string>()
  props.data.forEach((point) => {
    point.values.forEach((item) => allNames.add(item.name))
  })
  const names = Array.from(allNames).slice(0, 8) // Top 8 para não ficar muito poluído

  const maxValue = Math.max(
    ...props.data.flatMap((point) => point.values.map((item) => item.value)),
  )

  const width = 800
  const height = 400
  const padding = { top: 20, right: 80, bottom: 40, left: 80 }
  const chartWidth = width - padding.left - padding.right
  const chartHeight = height - padding.top - padding.bottom

  // Para animação, usar todas as datas do período (01/01/2025 a 31/12/2025)
  const startDate = new Date(2025, 0, 1) // 01/01/2025
  const endDate = new Date(2025, 11, 31) // 31/12/2025
  const totalRange = endDate.getTime() - startDate.getTime()
  
  const colors = [
    'var(--young-teal)',
    'var(--young-orange)',
    '#8b5cf6',
    '#ec4899',
    '#10b981',
    '#f59e0b',
    '#3b82f6',
    '#ef4444',
  ]

  const getX = (date: Date) => padding.left + ((date.getTime() - startDate.getTime()) / totalRange) * chartWidth
  const getY = (value: number) => padding.top + chartHeight - (value / maxValue) * chartHeight
  
  // Calcular posição X do progresso da animação
  const progress = props.animatedProgress ?? 1
  const maxX = padding.left + chartWidth * progress

  const paths = names.map((name, idx) => {
    const points = props.data.map((point) => {
      const item = point.values.find((v) => v.name === name)
      return item ? { x: getX(point.date), y: getY(item.value) } : null
    }).filter((p): p is { x: number; y: number } => p !== null)

    if (points.length < 2) return null

    const pathData = points.map((p, i) => `${i === 0 ? 'M' : 'L'} ${p.x} ${p.y}`).join(' ')

    return {
      name,
      path: pathData,
      color: colors[idx % colors.length]!,
    }
  }).filter((p): p is { name: string; path: string; color: string } => p !== null)

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

        {/* Clip path para animação da esquerda para direita */}
        <defs>
          <clipPath id={`line-clip-${props.data.length}`}>
            <rect
              x={padding.left}
              y={0}
              width={maxX - padding.left}
              height={height}
            />
          </clipPath>
        </defs>

        {/* Lines */}
        <g clipPath={`url(#line-clip-${props.data.length})`}>
          {paths.map((line) => (
            <g key={line.name}>
              <path
                d={line.path}
                fill="none"
                stroke={line.color}
                strokeWidth="2.5"
                opacity="0.8"
                className="transition-all duration-300"
              />
              {/* Dots */}
              {props.data.map((point) => {
                const item = point.values.find((v) => v.name === line.name)
                if (!item) return null
                const x = getX(point.date)
                if (x > maxX) return null
                const y = getY(item.value)
                return (
                  <circle
                    key={point.date.getTime()}
                    cx={x}
                    cy={y}
                    r="4"
                    fill={line.color}
                    className="hover:r-6 transition-all"
                  />
                )
              })}
            </g>
          ))}
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
      <div className="mt-4 flex flex-wrap gap-4 justify-center">
        {paths.map((line) => (
          <div key={line.name} className="flex items-center gap-2">
            <div
              className="h-3 w-3 rounded-full"
              style={{ backgroundColor: line.color }}
            />
            <span className="text-xs text-slate-300">{line.name}</span>
          </div>
        ))}
      </div>
    </div>
  )
}

