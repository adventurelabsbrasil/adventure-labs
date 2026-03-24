import type { ChartItem } from '../hooks/useTimelapse'

export function RaceBarChart(props: {
  items: ChartItem[]
  maxValue: number
  valueFormatter: (value: number) => string
}) {
  const rowH = 46
  const height = Math.max(1, props.items.length) * rowH

  return (
    <div className="relative w-full" style={{ height }}>
      {props.items.map((item, idx) => {
        const pct = props.maxValue > 0 ? (item.value / props.maxValue) * 100 : 0
        const isExternal = item.channel === 'externo'

        return (
          <div
            key={item.id}
            className="absolute left-0 right-0"
            style={{
              transform: `translateY(${idx * rowH}px)`,
              transition: 'transform 220ms linear',
            }}
          >
            <div className="flex items-center gap-3">
              <div className="w-8 shrink-0 text-right text-xs font-semibold text-slate-300 tabular-nums">
                {idx + 1}
              </div>

              <div className="relative h-9 flex-1 overflow-hidden rounded-xl bg-black/25">
                <div
                  className={[
                    'absolute inset-y-0 left-0 rounded-xl',
                    isExternal
                      ? 'bg-gradient-to-r from-slate-500/50 to-slate-600/40'
                      : 'bg-gradient-to-r from-[color:var(--young-teal)]/50 to-[color:var(--young-teal)]/30',
                  ].join(' ')}
                  style={{
                    width: `${Math.max(0, Math.min(100, pct))}%`,
                    transition: 'width 220ms linear',
                  }}
                />

                <div className="relative z-10 flex h-9 items-center justify-between gap-3 px-3">
                  <div className="min-w-0">
                    <div className="flex items-center gap-2">
                      <div className="truncate text-sm font-semibold text-slate-100">
                        {item.name}
                      </div>
                      {isExternal ? (
                        <span className="rounded-md border border-slate-400/20 bg-slate-400/10 px-1.5 py-0.5 text-[10px] font-semibold uppercase tracking-wide text-slate-300">
                          Externo
                        </span>
                      ) : null}
                    </div>
                  </div>

                  <div className="shrink-0 text-sm font-semibold text-slate-100 tabular-nums">
                    {props.valueFormatter(item.value)}
                  </div>
                </div>
              </div>
            </div>
          </div>
        )
      })}
    </div>
  )
}

