import type { ChartItem } from '../hooks/useTimelapse'

export function BarChart(props: {
  items: ChartItem[]
  maxValue: number
  valueFormatter: (value: number) => string
}) {
  if (!props.items.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado disponível
      </div>
    )
  }

  const barHeight = 40
  const spacing = 12
  const totalHeight = props.items.length * (barHeight + spacing) - spacing

  return (
    <div className="w-full" style={{ height: totalHeight }}>
      {props.items.map((item, idx) => {
        const pct = props.maxValue > 0 ? (item.value / props.maxValue) * 100 : 0
        const isExternal = item.channel === 'externo'

        return (
          <div
            key={item.id}
            className="flex items-center gap-4 mb-3"
            style={{ height: barHeight }}
          >
            <div className="w-24 shrink-0 text-right">
              <div className="text-sm font-semibold text-slate-200 truncate" title={item.name}>
                {item.name}
              </div>
              {isExternal && (
                <div className="text-[10px] text-slate-400 uppercase mt-0.5">Externo</div>
              )}
            </div>

            <div className="flex-1 relative h-full">
              <div className="absolute inset-0 flex items-center">
                <div className="relative w-full h-8 overflow-hidden rounded-lg bg-black/25">
                  <div
                    className={[
                      'absolute inset-y-0 left-0 rounded-lg transition-all duration-300',
                      isExternal
                        ? 'bg-slate-500/50'
                        : 'bg-[color:var(--young-teal)]',
                    ].join(' ')}
                    style={{
                      width: `${Math.max(0, Math.min(100, pct))}%`,
                    }}
                  />

                  <div className="absolute inset-0 flex items-center justify-end px-3 z-10">
                    <div className="text-sm font-semibold text-slate-100 tabular-nums">
                      {props.valueFormatter(item.value)}
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div className="w-20 shrink-0 text-right">
              <div className="text-xs text-slate-400">
                #{idx + 1}
              </div>
            </div>
          </div>
        )
      })}
    </div>
  )
}

