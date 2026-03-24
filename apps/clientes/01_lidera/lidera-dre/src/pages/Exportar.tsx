import { useState, useMemo } from 'react';
import { useLancamentos } from '../hooks/useLancamentos';
import { agregarDRE } from '../lib/dre';
import { exportDREPdf } from '../lib/exportPdf';
import { exportDREXls, exportLancamentosXls } from '../lib/exportXls';
import { exportDRECsv, exportLancamentosCsv, downloadCsv } from '../lib/exportCsv';
import './Exportar.css';

function getMonthBounds(year: number, month: number): { from: string; to: string } {
  const from = `${year}-${String(month).padStart(2, '0')}-01`;
  const lastDay = new Date(year, month, 0).getDate();
  const to = `${year}-${String(month).padStart(2, '0')}-${String(lastDay).padStart(2, '0')}`;
  return { from, to };
}

const MESES = [
  'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
  'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro',
];

export default function Exportar() {
  const now = new Date();
  const [mode, setMode] = useState<'mensal' | 'anual'>('mensal');
  const [year, setYear] = useState(now.getFullYear());
  const [month, setMonth] = useState(now.getMonth() + 1);

  const { from, to } = useMemo(() => {
    if (mode === 'mensal') return getMonthBounds(year, month);
    return { from: `${year}-01-01`, to: `${year}-12-31` };
  }, [mode, year, month]);

  const { lancamentos, loading, error } = useLancamentos({ from, to });
  const dre = useMemo(() => agregarDRE(lancamentos), [lancamentos]);

  const periodoLabel = mode === 'mensal'
    ? `${MESES[month - 1]} de ${year}`
    : `Ano ${year}`;

  const handlePdf = () => {
    exportDREPdf(
      {
        titulo: 'DRE — Lidera',
        periodo: periodoLabel,
        entradas: dre.entradas,
        saidas: dre.saidas,
        totalEntradas: dre.totalEntradas,
        totalSaidas: dre.totalSaidas,
        resultado: dre.resultado,
      },
      `DRE_${mode}_${year}${mode === 'mensal' ? `_${String(month).padStart(2, '0')}` : ''}.pdf`
    );
  };

  const handleXlsDRE = () => {
    exportDREXls(
      dre.entradas,
      dre.saidas,
      dre.totalEntradas,
      dre.totalSaidas,
      dre.resultado,
      `DRE_${mode}_${year}${mode === 'mensal' ? `_${String(month).padStart(2, '0')}` : ''}.xlsx`
    );
  };

  const handleXlsLancamentos = () => {
    exportLancamentosXls(
      lancamentos,
      `Lancamentos_${from}_${to}.xlsx`
    );
  };

  const handleCsvDRE = () => {
    const content = exportDRECsv(
      dre.entradas,
      dre.saidas,
      dre.totalEntradas,
      dre.totalSaidas,
      dre.resultado
    );
    downloadCsv(content, `DRE_${mode}_${year}${mode === 'mensal' ? `_${String(month).padStart(2, '0')}` : ''}.csv`);
  };

  const handleCsvLancamentos = () => {
    const content = exportLancamentosCsv(lancamentos);
    downloadCsv(content, `Lancamentos_${from}_${to}.csv`);
  };

  if (loading) return <div className="page-loading">Carregando...</div>;
  if (error) return <div className="page-error">Erro: {error}</div>;

  return (
    <div className="exportar-page">
      <div className="card exportar-controls">
        <h3>Período</h3>
        <div className="exportar-periodo">
          <label>
            <input
              type="radio"
              name="mode"
              checked={mode === 'mensal'}
              onChange={() => setMode('mensal')}
            />
            <span>Mensal</span>
          </label>
          <label>
            <input
              type="radio"
              name="mode"
              checked={mode === 'anual'}
              onChange={() => setMode('anual')}
            />
            <span>Anual</span>
          </label>
        </div>
        <div className="exportar-dates">
          {mode === 'mensal' && (
            <label>
              <span>Mês</span>
              <select value={month} onChange={(e) => setMonth(Number(e.target.value))}>
                {MESES.map((m, i) => (
                  <option key={m} value={i + 1}>{m}</option>
                ))}
              </select>
            </label>
          )}
          <label>
            <span>Ano</span>
            <select value={year} onChange={(e) => setYear(Number(e.target.value))}>
              {[year - 2, year - 1, year, year + 1].map((y) => (
                <option key={y} value={y}>{y}</option>
              ))}
            </select>
          </label>
        </div>
        <p className="exportar-periodo-label">Exportando: <strong>{periodoLabel}</strong></p>
      </div>

      <div className="card exportar-actions">
        <h3>Exportar DRE (resumo)</h3>
        <p className="text-muted">PDF em tema claro, ideal para impressão.</p>
        <div className="exportar-buttons">
          <button type="button" className="btn btn-primary" onClick={handlePdf}>
            PDF
          </button>
          <button type="button" className="btn btn-primary" onClick={handleXlsDRE}>
            XLS
          </button>
          <button type="button" className="btn btn-primary" onClick={handleCsvDRE}>
            CSV
          </button>
        </div>
      </div>

      <div className="card exportar-actions">
        <h3>Exportar lançamentos (detalhado)</h3>
        <p className="text-muted">Planilha com todos os lançamentos do período.</p>
        <div className="exportar-buttons">
          <button type="button" className="btn btn-primary" onClick={handleXlsLancamentos}>
            XLS
          </button>
          <button type="button" className="btn btn-primary" onClick={handleCsvLancamentos}>
            CSV
          </button>
        </div>
      </div>

      <p className="exportar-print-hint no-print">
        Para imprimir o DRE ou salvar como PDF pelo navegador, use a página <strong>DRE Mensal</strong> ou <strong>DRE Anual</strong>, selecione o período e use Ctrl+P (ou Cmd+P). O layout de impressão usa tema claro.
      </p>
    </div>
  );
}
