/**
 * Utilitários para trabalhar com datas no slider
 */

export function dateToSliderValue(date: Date, minDate: Date, maxDate: Date): number {
  const totalMs = maxDate.getTime() - minDate.getTime()
  const currentMs = date.getTime() - minDate.getTime()
  return Math.max(0, Math.min(1, currentMs / totalMs))
}

export function sliderValueToDate(value: number, minDate: Date, maxDate: Date): Date {
  const totalMs = maxDate.getTime() - minDate.getTime()
  const ms = minDate.getTime() + value * totalMs
  return new Date(ms)
}

export function getDateProgress(date: Date, minDate: Date, maxDate: Date): number {
  return dateToSliderValue(date, minDate, maxDate)
}

