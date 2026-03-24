export function Speedometer(props: {
  value: number
  max: number
  label: string
  valueFormatter: (value: number) => string
  color?: string
}) {
  const percentage = Math.min(100, Math.max(0, (props.value / props.max) * 100))
  const color = props.color || 'var(--young-teal)'
  
  // Velocímetro vai de -135° a 135° (270° total)
  const startAngle = -135
  const endAngle = -135 + (percentage / 100) * 270
  const radius = 60
  const cx = 70
  const cy = 70
  const strokeWidth = 8
  
  // Converter ângulos para radianos e calcular pontos
  const startRad = (startAngle * Math.PI) / 180
  const endRad = (endAngle * Math.PI) / 180
  
  const startX = cx + radius * Math.cos(startRad)
  const startY = cy + radius * Math.sin(startRad)
  const endX = cx + radius * Math.cos(endRad)
  const endY = cy + radius * Math.sin(endRad)
  
  const largeArc = percentage > 50 ? 1 : 0
  
  // Path do arco do velocímetro
  const arcPath = `M ${startX} ${startY} A ${radius} ${radius} 0 ${largeArc} 1 ${endX} ${endY}`

  return (
    <div className="flex flex-col items-center">
      <svg width="140" height="90" className="mx-auto">
        {/* Background arc */}
        {(() => {
          const bgStartRad = (startAngle * Math.PI) / 180
          const bgEndRad = (135 * Math.PI) / 180
          const bgStartX = cx + radius * Math.cos(bgStartRad)
          const bgStartY = cy + radius * Math.sin(bgStartRad)
          const bgEndX = cx + radius * Math.cos(bgEndRad)
          const bgEndY = cy + radius * Math.sin(bgEndRad)
          return (
            <path
              d={`M ${bgStartX} ${bgStartY} A ${radius} ${radius} 0 1 1 ${bgEndX} ${bgEndY}`}
              fill="none"
              stroke="rgba(255,255,255,0.1)"
              strokeWidth={strokeWidth}
              strokeLinecap="round"
            />
          )
        })()}
        
        {/* Value arc */}
        <path
          d={arcPath}
          fill="none"
          stroke={color}
          strokeWidth={strokeWidth}
          strokeLinecap="round"
          className="transition-all duration-300"
        />
        
        {/* Center dot */}
        <circle cx={cx} cy={cy} r="4" fill={color} />
        
        {/* Percentage text */}
        <text
          x={cx}
          y={cy + 5}
          fill="currentColor"
          className="text-sm font-bold fill-slate-100"
          textAnchor="middle"
        >
          {Math.round(percentage)}%
        </text>
      </svg>
      
      <div className="mt-2 text-center">
        <div className="text-xs text-[color:var(--young-muted)]">{props.label}</div>
        <div className="text-sm font-semibold text-slate-200 mt-1">
          {props.valueFormatter(props.value)}
        </div>
      </div>
    </div>
  )
}

