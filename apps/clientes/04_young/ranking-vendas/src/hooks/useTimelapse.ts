import { useEffect, useMemo, useRef, useState } from 'react'
import type { BuiltFrames } from '../lib/frames'
import type { SalesChannel } from '../lib/csv'

export type ChartItem = {
  id: string
  name: string
  value: number
  channel: SalesChannel
}

function clamp01(v: number): number {
  if (v < 0) return 0
  if (v > 1) return 1
  return v
}

export function useTimelapse(
  built: BuiltFrames | null,
  opts: {
    durationMs: number
    topN?: number
  },
) {
  const topN = opts.topN ?? 12

  const [isPlaying, setIsPlaying] = useState(true)
  const [progress01, setProgress01] = useState(0)

  const rafRef = useRef<number | null>(null)
  const startRef = useRef<number>(0)

  const frames = built?.frames ?? null
  const channels = useMemo(() => built?.channels ?? {}, [built])

  const restart = () => {
    setProgress01(0)
    setIsPlaying(true)
  }

  useEffect(() => {
    if (!frames?.length) {
      setIsPlaying(false)
      setProgress01(0)
      return
    }
    // quando os frames mudam (novo CSV / filtros), reinicia
    setProgress01(0)
    setIsPlaying(true)
  }, [frames])

  useEffect(() => {
    if (!isPlaying || !frames?.length) return

    // mantém continuidade ao dar play/pause
    startRef.current = performance.now() - progress01 * opts.durationMs

    const tick = () => {
      const now = performance.now()
      const p = clamp01((now - startRef.current) / opts.durationMs)
      setProgress01(p)
      if (p >= 1) {
        setIsPlaying(false)
        rafRef.current = null
        return
      }
      rafRef.current = requestAnimationFrame(tick)
    }

    rafRef.current = requestAnimationFrame(tick)
    return () => {
      if (rafRef.current) cancelAnimationFrame(rafRef.current)
      rafRef.current = null
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [isPlaying, opts.durationMs, frames?.length])

  const computed = useMemo(() => {
    if (!frames?.length) {
      return {
        currentDate: null as Date | null,
        values: [] as ChartItem[],
        maxValue: 1,
      }
    }

    const count = frames.length
    const pos = progress01 * Math.max(1, count - 1)
    const i = Math.floor(pos)
    const frac = pos - i

    const a = frames[i]!
    const b = frames[Math.min(i + 1, count - 1)]!

    const t = a.date.getTime() + (b.date.getTime() - a.date.getTime()) * frac
    const currentDate = new Date(t)

    const keys = Object.keys(channels)
    const items: ChartItem[] = keys.map((name) => {
      const v1 = a.values[name] ?? 0
      const v2 = b.values[name] ?? v1
      const value = v1 + (v2 - v1) * frac
      return {
        id: name,
        name,
        value,
        channel: channels[name] ?? ('interno' as SalesChannel),
      }
    })

    items.sort((x, y) => y.value - x.value)
    const top = items.slice(0, topN)
    const maxValue = Math.max(1, top[0]?.value ?? 1)

    return { currentDate, values: top, maxValue }
  }, [frames, channels, progress01, topN])

  return {
    isPlaying,
    setIsPlaying,
    restart,
    progress01,
    currentDate: computed.currentDate,
    values: computed.values,
    maxValue: computed.maxValue,
  }
}

