import { useEffect, useMemo, useState } from 'react'
import { parseSalesCsv, type SaleRecord } from './lib/csv'
import type { BucketMode, Metric } from './lib/frames'
import { formatDateBR } from './lib/format'
import { TimelapsePage } from './pages/TimelapsePage'
import { useTimelapse } from './hooks/useTimelapse'
import { CsvUpload } from './components/CsvUpload'
import { buildCumulativeFrames } from './lib/frames'
import { brl } from './lib/format'
import { getDateProgress, sliderValueToDate } from './lib/dateUtils'
import { Speedometer } from './components/Speedometer'

const META_2025 = 30_000_000
const META_UNITS = 300

export default function App() {
  const [records, setRecords] = useState<SaleRecord[] | null>(null)
  const [loadError, setLoadError] = useState<string | null>(null)

  const [metric] = useState<Metric>('vgv')
  const [bucketMode] = useState<BucketMode>('auto')
  const [durationMs] = useState(30_000)
  
  // Slider de data manual
  const minSliderDate = new Date(2025, 0, 1) // 01/01/2025
  const maxSliderDate = new Date(2025, 11, 31) // 31/12/2025
  const [sliderValue, setSliderValue] = useState(1) // 0-1
  const [useManualDate, setUseManualDate] = useState(false)

  const frames = useMemo(() => {
    if (!records?.length) return null
    return buildCumulativeFrames(records, { metric, bucketMode, showExternal: true })
  }, [records, metric, bucketMode])

  const {
    isPlaying,
    setIsPlaying,
    restart: restartTimelapse,
    currentDate: timelapseDate,
  } = useTimelapse(frames, { durationMs })

  // Data atual (manual ou do timelapse)
  const currentDate = useManualDate 
    ? sliderValueToDate(sliderValue, minSliderDate, maxSliderDate)
    : timelapseDate

  // Progresso para animação dos gráficos
  const animationProgress = currentDate
    ? getDateProgress(currentDate, minSliderDate, maxSliderDate)
    : 0

  // Totais dinâmicos até a data atual
  const { totalVgv, totalUnits } = useMemo(() => {
    if (!records?.length || !currentDate) return { totalVgv: 0, totalUnits: 0 }
    const currentDateEnd = new Date(currentDate)
    currentDateEnd.setHours(23, 59, 59, 999) // Fim do dia
    const filtered = records.filter((r) => r.date.getTime() <= currentDateEnd.getTime())
    return {
      totalVgv: filtered.reduce((acc, r) => acc + (Number.isFinite(r.vgv) ? r.vgv : 0), 0),
      totalUnits: filtered.reduce((acc, r) => acc + (Number.isFinite(r.units) ? r.units : 0), 0),
    }
  }, [records, currentDate])
  

  const restart = () => {
    restartTimelapse()
    setUseManualDate(false)
    setSliderValue(1)
  }

  const handleCsvUpload = (uploadedRecords: SaleRecord[], errors: string[]) => {
    setRecords(uploadedRecords)
    setLoadError(errors.length ? errors[0]! : null)
    // Reset timelapse quando novo CSV é carregado
    restart()
  }

  // Carregar CSV padrão na inicialização
  useEffect(() => {
    void (async () => {
      try {
        // Tenta carregar o CSV da pasta public/data
        const res = await fetch(`${import.meta.env.BASE_URL}data/vendas.csv`)
        if (!res.ok) {
          // Se não encontrar vendas.csv, tenta o nome completo
          const res2 = await fetch(`${import.meta.env.BASE_URL}data/Ranking%20de%20Vendas%202025%20-%20Página1.csv`)
          if (!res2.ok) {
            setLoadError('Arquivo CSV padrão não encontrado. Faça upload de um arquivo CSV.')
            return
          }
          const text = await res2.text()
          const parsed = parseSalesCsv(text)
          setRecords(parsed.records)
          setLoadError(parsed.errors.length ? parsed.errors[0]! : null)
          return
        }
        const text = await res.text()
        const parsed = parseSalesCsv(text)
        setRecords(parsed.records)
        setLoadError(parsed.errors.length ? parsed.errors[0]! : null)
      } catch (e) {
        setLoadError('Erro ao carregar CSV padrão. Faça upload de um arquivo CSV.')
      }
    })()
  }, [])

  return (
    <div className="min-h-full bg-young-bg text-slate-100">
      <div className="mx-auto max-w-7xl px-5 py-8">
        <header className="mb-6 flex flex-col sm:flex-row sm:items-end sm:justify-between gap-4">
          <div>
            <div className="inline-flex items-center gap-2">
              <div className="h-2.5 w-2.5 rounded-full bg-[color:var(--young-orange)]" />
              <div className="h-2.5 w-2.5 rounded-full bg-[color:var(--young-teal)]" />
              <span className="text-xs font-semibold tracking-wide text-slate-300">
                Young Empreendimentos
              </span>
            </div>
            <h1 className="mt-2 text-2xl font-semibold tracking-tight sm:text-3xl">
              Ranking de Vendas 2025
            </h1>
          </div>
          <CsvUpload onUpload={handleCsvUpload} />
        </header>

        {/* Controles principais */}
        <div className="mb-6 rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
          <div className="grid gap-4 sm:gap-6 md:grid-cols-3">
            {/* Velocímetros */}
            <div className="flex justify-center">
              <Speedometer
                value={totalVgv}
                max={META_2025}
                label="VGV"
                valueFormatter={brl}
                color="var(--young-teal)"
              />
            </div>
            <div className="flex justify-center">
              <Speedometer
                value={totalUnits}
                max={META_UNITS}
                label="Unidades"
                valueFormatter={(v) => v.toLocaleString('pt-BR')}
                color="var(--young-orange)"
              />
            </div>
            
            {/* Controles */}
            <div className="flex flex-col justify-center gap-4">
              <div>
                <div className="flex items-center justify-between mb-2">
                  <span className="text-xs text-[color:var(--young-muted)]">Data</span>
                  <span className="text-xs font-semibold text-slate-200">
                    {currentDate ? formatDateBR(currentDate) : '-'}
                  </span>
                </div>
                <input
                  type="range"
                  min={0}
                  max={1}
                  step={0.001}
                  value={useManualDate ? sliderValue : (timelapseDate ? getDateProgress(timelapseDate, minSliderDate, maxSliderDate) : 1)}
                  onChange={(e) => {
                    setUseManualDate(true)
                    setSliderValue(Number(e.target.value))
                    setIsPlaying(false)
                  }}
                  className="w-full accent-[color:var(--young-teal)]"
                />
                <div className="flex justify-between text-[10px] text-[color:var(--young-muted)] mt-1">
                  <span>01/01/2025</span>
                  <span>31/12/2025</span>
                </div>
              </div>
              
              <div className="flex gap-2">
                <button
                  type="button"
                  onClick={() => {
                    if (useManualDate) {
                      setUseManualDate(false)
                      setIsPlaying(true)
                    } else {
                      setIsPlaying((v) => !v)
                    }
                  }}
                  className="flex-1 rounded-lg border border-[color:var(--young-border)] bg-black/20 px-3 py-2 text-sm font-medium hover:border-slate-500"
                >
                  {useManualDate ? 'Voltar ao Auto' : (isPlaying ? 'Pausar' : 'Play')}
                </button>
                <button
                  type="button"
                  onClick={restart}
                  className="flex-1 rounded-lg border border-[color:var(--young-border)] bg-black/20 px-3 py-2 text-sm font-medium hover:border-slate-500"
                >
                  Reiniciar
                </button>
              </div>
            </div>
          </div>
        </div>

        {/* Conteúdo da página */}
        <TimelapsePage
          records={records}
          metric={metric}
          bucketMode={bucketMode}
          durationMs={durationMs}
          currentDate={currentDate}
          animationProgress={animationProgress}
        />

        {loadError && (
          <div className="mt-4 rounded-lg border border-red-500/30 bg-red-500/10 p-3 text-xs text-red-200">
            {loadError}
          </div>
        )}
      </div>
    </div>
  )
}
