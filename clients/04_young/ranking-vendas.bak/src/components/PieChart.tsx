import type { ChartItem } from '../hooks/useTimelapse'

export function PieChart(props: {
  items: ChartItem[]
  valueFormatter: (value: number) => string
}) {
  if (!props.items.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado disponível
      </div>
    )
  }

  const total = props.items.reduce((acc, item) => acc + item.value, 0)
  if (total === 0) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Valores zerados
      </div>
    )
  }

  const size = 280
  const centerX = size / 2
  const centerY = size / 2
  const radius = 100
  const innerRadius = 60 // Donut chart

  let currentAngle = -Math.PI / 2 // Start at top

  const segments = props.items.map((item) => {
    const percentage = item.value / total
    const angle = percentage * 2 * Math.PI
    const startAngle = currentAngle
    const endAngle = currentAngle + angle

    const x1 = centerX + radius * Math.cos(startAngle)
    const y1 = centerY + radius * Math.sin(startAngle)
    const x2 = centerX + radius * Math.cos(endAngle)
    const y2 = centerY + radius * Math.sin(endAngle)

    const x1Inner = centerX + innerRadius * Math.cos(startAngle)
    const y1Inner = centerY + innerRadius * Math.sin(startAngle)
    const x2Inner = centerX + innerRadius * Math.cos(endAngle)
    const y2Inner = centerY + innerRadius * Math.sin(endAngle)

    const largeArc = percentage > 0.5 ? 1 : 0

    const path = [
      `M ${x1} ${y1}`,
      `A ${radius} ${radius} 0 ${largeArc} 1 ${x2} ${y2}`,
      `L ${x2Inner} ${y2Inner}`,
      `A ${innerRadius} ${innerRadius} 0 ${largeArc} 0 ${x1Inner} ${y1Inner}`,
      'Z',
    ].join(' ')

    const midAngle = startAngle + angle / 2
    const labelRadius = (radius + innerRadius) / 2
    const labelX = centerX + labelRadius * Math.cos(midAngle)
    const labelY = centerY + labelRadius * Math.sin(midAngle)

    const color = item.channel === 'externo'
      ? 'rgba(148, 163, 184, 0.6)' // slate-400
      : 'var(--young-teal)'

    currentAngle = endAngle

    return {
      item,
      path,
      percentage,
      labelX,
      labelY,
      color,
    }
  })

  return (
    <div className="flex flex-col items-center">
      <svg width={size} height={size} className="mx-auto">
        {segments.map((seg, idx) => (
          <g key={idx}>
            <path
              d={seg.path}
              fill={seg.color}
              stroke="rgba(0,0,0,0.3)"
              strokeWidth="1"
              className="hover:opacity-80 transition-opacity"
            />
            {seg.percentage > 0.05 && (
              <text
                x={seg.labelX}
                y={seg.labelY}
                fill="white"
                className="text-xs font-semibold pointer-events-none"
                textAnchor="middle"
                dominantBaseline="middle"
              >
                {Math.round(seg.percentage * 100)}%
              </text>
            )}
          </g>
        ))}
      </svg>

      <div className="mt-6 w-full max-w-md space-y-2">
        {props.items.map((item, idx) => {
          const percentage = (item.value / total) * 100
          const color = item.channel === 'externo'
            ? 'rgba(148, 163, 184, 0.6)'
            : 'var(--young-teal)'

          return (
            <div key={idx} className="flex items-center justify-between gap-3">
              <div className="flex items-center gap-2 flex-1 min-w-0">
                <div
                  className="h-4 w-4 shrink-0 rounded"
                  style={{ backgroundColor: color }}
                />
                <span className="text-sm text-slate-200 truncate">{item.name}</span>
                {item.channel === 'externo' && (
                  <span className="text-[10px] text-slate-400 uppercase">Ext</span>
                )}
              </div>
              <div className="text-right shrink-0">
                <div className="text-sm font-semibold text-slate-100">
                  {props.valueFormatter(item.value)}
                </div>
                <div className="text-xs text-slate-400">{percentage.toFixed(1)}%</div>
              </div>
            </div>
          )
        })}
      </div>
    </div>
  )
}

