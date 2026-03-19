import { useMemo } from 'react'
import { RaceBarChart } from '../components/RaceBarChart'
import { StackedAreaChart } from '../components/StackedAreaChart'
import { AssetBarChart } from '../components/AssetBarChart'
import { ConsultantLineChart } from '../components/ConsultantLineChart'
import { SourceChart } from '../components/SourceChart'
import { MediumChart } from '../components/MediumChart'
import { CityRankingChart } from '../components/CityRankingChart'
import { buildCumulativeFrames, type BucketMode, type Metric } from '../lib/frames'
import { brl, compactNumber } from '../lib/format'
import type { SaleRecord } from '../lib/csv'

type TimelapsePageProps = {
  records: SaleRecord[] | null
  metric: Metric
  bucketMode: BucketMode
  durationMs: number
  currentDate: Date | null
  animationProgress: number
}

export function TimelapsePage(props: TimelapsePageProps) {
  const frames = useMemo(() => {
    if (!props.records?.length) return null
    return buildCumulativeFrames(props.records, {
      metric: props.metric,
      bucketMode: props.bucketMode,
      showExternal: true,
    })
  }, [props.records, props.metric, props.bucketMode])

  // Calcular valores atuais até a data
  const { values, maxValue } = useMemo(() => {
    if (!frames?.frames.length || !props.currentDate) {
      return { values: [], maxValue: 1 }
    }

    // Encontrar o frame mais próximo da data atual
    const targetTime = props.currentDate.getTime()
    let bestFrame = frames.frames[0]!
    for (const frame of frames.frames) {
      if (frame.date.getTime() <= targetTime) {
        bestFrame = frame
      } else {
        break
      }
    }

    const items = Object.entries(bestFrame.values)
      .map(([name, value]) => ({
        id: name,
        name,
        value,
        channel: frames.channels[name] ?? ('interno' as const),
      }))
      .sort((a, b) => b.value - a.value)
      .slice(0, 12)

    const max = Math.max(1, items[0]?.value ?? 1)

    return { values: items, maxValue: max }
  }, [frames, props.currentDate])

  // Calcular dados por empreendimento até a data atual
  const { assetData, maxVgv, maxUnits } = useMemo(() => {
    if (!props.records?.length || !props.currentDate) {
      return { assetData: [], maxVgv: 1, maxUnits: 1 }
    }

    const currentDateEnd = new Date(props.currentDate)
    currentDateEnd.setHours(23, 59, 59, 999)

    const filtered = props.records.filter((r) => r.date.getTime() <= currentDateEnd.getTime())

    // Agrupar por empreendimento
    const assetMap = new Map<string, { vgv: number; units: number }>()

    filtered.forEach((record) => {
      const asset = record.asset || 'Desconhecido'
      const existing = assetMap.get(asset) || { vgv: 0, units: 0 }
      assetMap.set(asset, {
        vgv: existing.vgv + (Number.isFinite(record.vgv) ? record.vgv : 0),
        units: existing.units + (Number.isFinite(record.units) ? record.units : 0),
      })
    })

    const assets = Array.from(assetMap.entries())
      .map(([name, data]) => ({
        name,
        vgv: data.vgv,
        units: data.units,
      }))
      .sort((a, b) => b.vgv - a.vgv) // Ordenar por VGV

    const maxV = Math.max(1, ...assets.map((a) => a.vgv))
    const maxU = Math.max(1, ...assets.map((a) => a.units))

    return { assetData: assets, maxVgv: maxV, maxUnits: maxU }
  }, [props.records, props.currentDate])

  if (!props.records?.length) {
    return (
      <div className="flex h-96 items-center justify-center text-sm text-[color:var(--young-muted)]">
        Carregue um CSV para iniciar.
      </div>
    )
  }

  return (
    <div className="space-y-4 sm:space-y-6">
      <section className="rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
        <h2 className="text-sm font-semibold tracking-wide text-slate-200 mb-4 sm:mb-5">
          Ranking — {props.metric === 'vgv' ? 'VGV' : 'Unidades'}
        </h2>
        <RaceBarChart
          items={values}
          maxValue={maxValue}
          valueFormatter={(v) => (props.metric === 'vgv' ? brl(v) : compactNumber(v))}
        />
      </section>

      <section className="rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
        <h2 className="text-sm font-semibold tracking-wide text-slate-200 mb-4 sm:mb-5">
          Ranking por Empreendimento
        </h2>
        <AssetBarChart
          assets={assetData}
          maxVgv={maxVgv}
          maxUnits={maxUnits}
        />
      </section>

      <section className="rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
        <h2 className="text-sm font-semibold tracking-wide text-slate-200 mb-4 sm:mb-5">
          VGV Acumulado por Consultor
        </h2>
        <ConsultantLineChart 
          records={props.records} 
          valueFormatter={brl}
          maxDate={props.currentDate}
          animatedProgress={props.animationProgress}
        />
      </section>

      <section className="rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
        <h2 className="text-sm font-semibold tracking-wide text-slate-200 mb-4 sm:mb-5">
          VGV Acumulado por Canal
        </h2>
        <StackedAreaChart 
          records={props.records} 
          valueFormatter={brl}
          maxDate={props.currentDate}
          animatedProgress={props.animationProgress}
        />
      </section>

      <section className="rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
        <h2 className="text-sm font-semibold tracking-wide text-slate-200 mb-4 sm:mb-5">
          Source Vencedores (Unidades)
        </h2>
        <SourceChart 
          records={props.records} 
          maxDate={props.currentDate}
        />
      </section>

      <section className="rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
        <h2 className="text-sm font-semibold tracking-wide text-slate-200 mb-4 sm:mb-5">
          Medium Vencedores (Unidades)
        </h2>
        <MediumChart 
          records={props.records} 
          maxDate={props.currentDate}
        />
      </section>

      <section className="rounded-2xl border border-[color:var(--young-border)] bg-[color:var(--young-panel)] p-4 sm:p-5">
        <h2 className="text-sm font-semibold tracking-wide text-slate-200 mb-4 sm:mb-5">
          Ranking de Cidades (Unidades)
        </h2>
        <CityRankingChart 
          records={props.records} 
          maxDate={props.currentDate}
        />
      </section>
    </div>
  )
}
