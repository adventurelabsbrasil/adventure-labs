import { useRef } from 'react'
import { parseSalesCsv } from '../lib/csv'
import type { SaleRecord } from '../lib/csv'

type CsvUploadProps = {
  onUpload: (records: SaleRecord[], errors: string[]) => void
}

export function CsvUpload(props: CsvUploadProps) {
  const fileInputRef = useRef<HTMLInputElement>(null)

  const handleFileChange = async (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0]
    if (!file) return

    try {
      const text = await file.text()
      const parsed = parseSalesCsv(text)
      props.onUpload(parsed.records, parsed.errors)
    } catch (error) {
      props.onUpload([], [error instanceof Error ? error.message : 'Erro ao processar arquivo'])
    }

    // Reset input para permitir selecionar o mesmo arquivo novamente
    if (fileInputRef.current) {
      fileInputRef.current.value = ''
    }
  }

  return (
    <div className="flex items-center gap-3">
      <input
        ref={fileInputRef}
        type="file"
        accept=".csv"
        onChange={handleFileChange}
        className="hidden"
        id="csv-upload"
      />
      <label
        htmlFor="csv-upload"
        className="cursor-pointer rounded-lg border border-[color:var(--young-border)] bg-black/20 px-4 py-2 text-sm font-medium hover:border-slate-500 transition-colors"
      >
        Carregar CSV
      </label>
    </div>
  )
}

