import { brl } from '../lib/format'

type AssetData = {
  name: string
  vgv: number
  units: number
}

export function AssetBarChart(props: {
  assets: AssetData[]
  maxVgv: number
  maxUnits: number
}) {
  if (!props.assets.length) {
    return (
      <div className="flex h-64 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Nenhum dado disponível
      </div>
    )
  }

  const barWidth = 70
  const barGap = 15
  const chartHeight = 400
  const padding = { top: 20, right: 60, bottom: 80, left: 80 }
  const chartWidth = Math.max(600, props.assets.length * (barWidth + barGap))
  const totalWidth = chartWidth + padding.left + padding.right
  const chartAreaHeight = chartHeight - padding.top - padding.bottom

  const getVgvHeight = (vgv: number) => (vgv / props.maxVgv) * chartAreaHeight
  const getUnitsHeight = (units: number) => (units / props.maxUnits) * chartAreaHeight * 0.9 // Slightly smaller for visual separation

  return (
    <div className="w-full overflow-x-auto">
      <svg width={totalWidth} height={chartHeight} className="mx-auto">
        {/* Gradientes */}
        <defs>
          <linearGradient id="vgv-gradient" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="0%" stopColor="var(--young-teal)" stopOpacity="0.9" />
            <stop offset="100%" stopColor="#06b6d4" stopOpacity="0.7" />
          </linearGradient>
          <linearGradient id="units-gradient" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="0%" stopColor="var(--young-orange)" stopOpacity="0.9" />
            <stop offset="100%" stopColor="#f59e0b" stopOpacity="0.7" />
          </linearGradient>
        </defs>

        {/* Grid lines para VGV */}
        {[0, 0.25, 0.5, 0.75, 1].map((frac) => {
          const y = padding.top + chartAreaHeight - frac * chartAreaHeight
          const value = frac * props.maxVgv
          return (
            <g key={`vgv-${frac}`}>
              <line
                x1={padding.left}
                y1={y}
                x2={padding.left + chartWidth}
                y2={y}
                stroke="rgba(255,255,255,0.1)"
                strokeWidth="1"
                strokeDasharray="2,2"
              />
              <text
                x={padding.left - 10}
                y={y + 4}
                fill="currentColor"
                className="text-xs fill-slate-400"
                textAnchor="end"
              >
                {brl(value)}
              </text>
            </g>
          )
        })}

        {/* Grid lines para Unidades (escala secundária) */}
        {[0, 0.25, 0.5, 0.75, 1].map((frac) => {
          const y = padding.top + chartAreaHeight - frac * chartAreaHeight * 0.9
          const value = Math.round(frac * props.maxUnits)
          return (
            <g key={`units-${frac}`}>
              <text
                x={padding.left + chartWidth + 10}
                y={y + 4}
                fill="currentColor"
                className="text-xs fill-slate-500"
                textAnchor="start"
              >
                {value}
              </text>
            </g>
          )
        })}

        {/* Barras */}
        {props.assets.map((asset, idx) => {
          const x = padding.left + idx * (barWidth + barGap) + barGap / 2
          const vgvHeight = getVgvHeight(asset.vgv)
          const unitsHeight = getUnitsHeight(asset.units)
          const baseY = padding.top + chartAreaHeight

          return (
            <g key={asset.name}>
              {/* Barra VGV (esquerda) com gradiente */}
              <rect
                x={x}
                y={baseY - vgvHeight}
                width={barWidth * 0.4}
                height={vgvHeight}
                fill="url(#vgv-gradient)"
                rx="4"
                className="transition-all duration-300"
              />
              {vgvHeight > 25 && (
                <text
                  x={x + (barWidth * 0.4) / 2}
                  y={baseY - vgvHeight - 5}
                  fill="currentColor"
                  className="text-[10px] fill-slate-200 font-semibold"
                  textAnchor="middle"
                >
                  {brl(asset.vgv)}
                </text>
              )}

              {/* Barra Unidades (direita) com gradiente */}
              <rect
                x={x + barWidth * 0.4 + 4}
                y={baseY - unitsHeight}
                width={barWidth * 0.4}
                height={unitsHeight}
                fill="url(#units-gradient)"
                rx="4"
                className="transition-all duration-300"
              />
              {unitsHeight > 25 && (
                <text
                  x={x + barWidth * 0.4 + 4 + (barWidth * 0.4) / 2}
                  y={baseY - unitsHeight - 5}
                  fill="currentColor"
                  className="text-[10px] fill-slate-200 font-semibold"
                  textAnchor="middle"
                >
                  {asset.units}
                </text>
              )}

              {/* Label do empreendimento */}
              <text
                x={x + barWidth / 2}
                y={baseY + 25}
                fill="currentColor"
                className="text-xs fill-slate-300"
                textAnchor="middle"
              >
                {asset.name.length > 12 ? asset.name.substring(0, 12) + '...' : asset.name}
              </text>
            </g>
          )
        })}
      </svg>

      {/* Legenda */}
      <div className="mt-6 flex justify-center gap-6">
        <div className="flex items-center gap-2">
          <div className="h-4 w-4 rounded" style={{ backgroundColor: 'var(--young-teal)', opacity: 0.7 }} />
          <span className="text-xs text-slate-300">VGV</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="h-4 w-4 rounded" style={{ backgroundColor: 'var(--young-orange)', opacity: 0.7 }} />
          <span className="text-xs text-slate-300">Unidades</span>
        </div>
      </div>
    </div>
  )
}

