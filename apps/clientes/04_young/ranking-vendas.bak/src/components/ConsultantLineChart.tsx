import { useState, useEffect } from 'react'
import type { SaleRecord } from '../lib/csv'

type ConsultantData = {
  name: string
  values: Array<{
    date: Date
    accumulated: number
    dailyVgv: number
  }>
  color: string
  channel: 'interno' | 'externo'
}

export function ConsultantLineChart(props: {
  records: SaleRecord[]
  maxDate?: Date | null
  animatedProgress?: number
  valueFormatter: (value: number) => string
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

  // Agrupar por consultor e data, mantendo o canal
  const consultantMap = new Map<string, { dateMap: Map<string, number>; channel: 'interno' | 'externo' }>()
  
  filteredRecords.forEach((record) => {
    const consultant = record.consultant
    const dateKey = new Date(record.date.getFullYear(), record.date.getMonth(), record.date.getDate()).getTime().toString()
    
    if (!consultantMap.has(consultant)) {
      consultantMap.set(consultant, { dateMap: new Map(), channel: record.channel })
    }
    
    const consultantData = consultantMap.get(consultant)!
    const current = consultantData.dateMap.get(dateKey) || 0
    consultantData.dateMap.set(dateKey, current + (Number.isFinite(record.vgv) ? record.vgv : 0))
  })

  // Calcular valores acumulados e diários por consultor
  const consultantsData: ConsultantData[] = []
  const colors = [
    'var(--young-teal)',
    'var(--young-orange)',
    '#8b5cf6',
    '#ec4899',
    '#10b981',
    '#f59e0b',
    '#3b82f6',
    '#ef4444',
    '#06b6d4',
    '#84cc16',
    '#f97316',
    '#a855f7',
  ]
  const grayColor = '#64748b' // Cinza para externos

  let colorIndex = 0
  consultantMap.forEach((consultantData, consultantName) => {
    const dates = Array.from(consultantData.dateMap.entries())
      .map(([dateKey, vgv]) => ({
        date: new Date(Number(dateKey)),
        dailyVgv: vgv,
      }))
      .sort((a, b) => a.date.getTime() - b.date.getTime())

    // Acumular valores
    let accumulated = 0
    const values = dates.map((d) => {
      accumulated += d.dailyVgv
      return {
        date: d.date,
        accumulated,
        dailyVgv: d.dailyVgv,
      }
    })

    // Cores: cinza para externos, cores para internos
    const color = consultantData.channel === 'externo' ? grayColor : colors[colorIndex % colors.length]!
    if (consultantData.channel === 'interno') {
      colorIndex++
    }

    consultantsData.push({
      name: consultantName,
      values,
      color,
      channel: consultantData.channel,
    })
  })

  // Ordenar por valor acumulado final (maior primeiro)
  consultantsData.sort((a, b) => {
    const aFinal = a.values[a.values.length - 1]?.accumulated || 0
    const bFinal = b.values[b.values.length - 1]?.accumulated || 0
    return bFinal - aFinal
  })

  // Pegar top 12 consultores para não ficar muito poluído
  const topConsultants = consultantsData.slice(0, 12)

  // Calcular maxValue com base em TODOS os dados (não filtrados) para manter eixos fixos
  const allConsultantMap = new Map<string, Map<string, number>>()
  props.records.forEach((record) => {
    const consultant = record.consultant
    const dateKey = new Date(record.date.getFullYear(), record.date.getMonth(), record.date.getDate()).getTime().toString()
    
    if (!allConsultantMap.has(consultant)) {
      allConsultantMap.set(consultant, new Map())
    }
    
    const dateMap = allConsultantMap.get(consultant)!
    const current = dateMap.get(dateKey) || 0
    dateMap.set(dateKey, current + (Number.isFinite(record.vgv) ? record.vgv : 0))
  })

  let maxValue = 1
  allConsultantMap.forEach((dateMap) => {
    const dates = Array.from(dateMap.entries())
      .map(([dateKey, vgv]) => ({
        date: new Date(Number(dateKey)),
        vgv,
      }))
      .sort((a, b) => a.date.getTime() - b.date.getTime())

    let accumulated = 0
    dates.forEach((d) => {
      accumulated += d.vgv
      maxValue = Math.max(maxValue, accumulated)
    })
  })

  // Estado para tooltip e responsividade
  const [tooltip, setTooltip] = useState<{ x: number; y: number; name: string; value: number } | null>(null)
  const [isMobile, setIsMobile] = useState(false)

  useEffect(() => {
    const checkMobile = () => setIsMobile(window.innerWidth < 768)
    checkMobile()
    window.addEventListener('resize', checkMobile)
    return () => window.removeEventListener('resize', checkMobile)
  }, [])

  const width = isMobile ? Math.min(800, window.innerWidth - 40) : 800
  const height = 400
  const padding = { top: 40, right: isMobile ? 40 : 120, bottom: 40, left: isMobile ? 50 : 80 }
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

  return (
    <div className="w-full overflow-x-auto relative">
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
          <clipPath id={`consultant-clip-${props.maxDate?.getTime() ?? 'all'}`}>
            <rect
              x={padding.left}
              y={0}
              width={maxX - padding.left}
              height={height}
            />
          </clipPath>
          
        </defs>

        {/* Linhas dos consultores */}
        <g clipPath={`url(#consultant-clip-${props.maxDate?.getTime() ?? 'all'})`}>
          {topConsultants.map((consultant) => {
            if (consultant.values.length < 2) return null

            // Criar path da linha
            const pathData = consultant.values
              .filter((point) => {
                const x = getX(point.date)
                return x <= maxX
              })
              .map((point, idx) => {
                const x = getX(point.date)
                const y = getY(point.accumulated)
                return `${idx === 0 ? 'M' : 'L'} ${x} ${y}`
              })
              .join(' ')

            return (
              <g key={consultant.name}>
                {/* Linha com área de hover invisível para tooltip */}
                <path
                  d={pathData}
                  fill="none"
                  stroke={consultant.color}
                  strokeWidth="2.5"
                  opacity="0.8"
                  className="transition-all duration-300 cursor-pointer"
                  style={{ pointerEvents: 'stroke' }}
                  onMouseMove={(e) => {
                    if (isMobile) return // Desabilitar tooltip no mobile para melhor performance
                    const svg = e.currentTarget.ownerSVGElement!
                    const pt = svg.createSVGPoint()
                    pt.x = e.clientX
                    pt.y = e.clientY
                    const svgP = pt.matrixTransform(svg.getScreenCTM()!.inverse())
                    
                    // Encontrar o ponto mais próximo na linha
                    let closestPoint = consultant.values[0]
                    let minDist = Infinity
                    consultant.values.forEach((point) => {
                      const x = getX(point.date)
                      const dist = Math.abs(x - svgP.x)
                      if (dist < minDist && x <= maxX) {
                        minDist = dist
                        closestPoint = point
                      }
                    })
                    
                    if (closestPoint) {
                      setTooltip({
                        x: e.clientX,
                        y: e.clientY,
                        name: consultant.name,
                        value: closestPoint.accumulated,
                      })
                    }
                  }}
                  onMouseLeave={() => setTooltip(null)}
                />
                
                {/* Pontos apenas onde há venda (dailyVgv > 0) */}
                {consultant.values
                  .filter((point) => {
                    const x = getX(point.date)
                    return x <= maxX && point.dailyVgv > 0
                  })
                  .map((point) => {
                    const x = getX(point.date)
                    const y = getY(point.accumulated)
                    
                    return (
                      <circle
                        key={point.date.getTime()}
                        cx={x}
                        cy={y}
                        r="4"
                        fill={consultant.color}
                        className="transition-all duration-300 pointer-events-none"
                      />
                    )
                  })}
              </g>
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

        {/* Legenda */}
        <g transform={`translate(${width - padding.right + 10}, ${padding.top})`}>
          {topConsultants.map((consultant, idx) => (
            <g key={consultant.name} transform={`translate(0, ${idx * 20})`}>
              <line
                x1="0"
                y1="8"
                x2="12"
                y2="8"
                stroke={consultant.color}
                strokeWidth="2.5"
                opacity="0.8"
              />
              <text
                x="16"
                y="12"
                fill="currentColor"
                className="text-xs fill-slate-300"
                fontSize={isMobile ? "10" : "12"}
              >
                {consultant.name.length > (isMobile ? 12 : 20) ? consultant.name.substring(0, isMobile ? 12 : 20) + '...' : consultant.name}
              </text>
            </g>
          ))}
        </g>
      </svg>
      
      {/* Tooltip */}
      {tooltip && (
        <div
          className="fixed z-50 bg-slate-800/95 border border-slate-600 rounded-lg px-3 py-2 shadow-lg pointer-events-none"
          style={{
            left: `${tooltip.x + 10}px`,
            top: `${tooltip.y - 10}px`,
            transform: 'translateY(-100%)',
          }}
        >
          <div className="text-sm font-semibold text-slate-200">{tooltip.name}</div>
          <div className="text-xs text-slate-400">{props.valueFormatter(tooltip.value)}</div>
        </div>
      )}
    </div>
  )
}

