import { useState, useMemo } from 'react';
import { useLancamentos } from '../hooks/useLancamentos';
import { agregarDRE } from '../lib/dre';
import './DRE.css';

function getYearBounds(year: number): { from: string; to: string } {
  return { from: `${year}-01-01`, to: `${year}-12-31` };
}

const MESES = [
  'Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun',
  'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez',
];

export default function DREAnual() {
  const [year, setYear] = useState(new Date().getFullYear());
  const { from, to } = useMemo(() => getYearBounds(year), [year]);
  const { lancamentos, loading, error } = useLancamentos({ from, to });
  const dre = useMemo(() => agregarDRE(lancamentos), [lancamentos]);

  const porMes = useMemo(() => {
    const map = new Map<number, { entradas: number; saidas: number }>();
    for (let m = 1; m <= 12; m++) map.set(m, { entradas: 0, saidas: 0 });
    for (const l of lancamentos) {
      const m = parseInt(l.data_lancamento.slice(5, 7), 10);
      const entry = map.get(m)!;
      const v = Number(l.valor);
      if (l.tipo === 'entrada') entry.entradas += v;
      else entry.saidas += v;
    }
    return Array.from(map.entries()).map(([mes, v]) => ({ mes, ...v }));
  }, [lancamentos]);

  if (loading) return <div className="page-loading">Carregando...</div>;
  if (error) return <div className="page-error">Erro: {error}</div>;

  return (
    <div className="dre-page export-print-target">
      <div className="dre-controls no-print">
        <label>
          <span>Ano</span>
          <select value={year} onChange={(e) => setYear(Number(e.target.value))}>
            {[year - 2, year - 1, year, year + 1].map((y) => (
              <option key={y} value={y}>{y}</option>
            ))}
          </select>
        </label>
      </div>

      <div className="dre-report card export-print">
        <h2 className="dre-title">DRE Anual — {year}</h2>

        {dre.entradas.length === 0 && dre.saidas.length === 0 ? (
          <p className="dre-empty text-muted">Nenhum lançamento neste ano. Use a página Lançamentos para cadastrar receitas e despesas.</p>
        ) : null}

        {dre.entradas.length > 0 && (
          <section className="dre-section">
            <h3 className="dre-section-title entrada">Receitas (ano)</h3>
            <ul className="dre-linhas">
              {dre.entradas.map((linha) => (
                <li key={linha.categoria_id} className="dre-categoria">
                  <div className="dre-cat-row">
                    <span className="dre-cat-nome">{linha.categoria_nome}</span>
                    <span className="dre-cat-total entrada">R$ {linha.total.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
                  </div>
                  {linha.subcategorias.length > 0 && (
                    <ul className="dre-sub">
                      {linha.subcategorias.map((s) => (
                        <li key={s.subcategoria_id}>
                          <span>{s.subcategoria_nome}</span>
                          <span>R$ {s.total.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
                        </li>
                      ))}
                    </ul>
                  )}
                </li>
              ))}
            </ul>
            <div className="dre-total-line entrada">
              <span>Total Receitas</span>
              <span>R$ {dre.totalEntradas.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
            </div>
          </section>
        )}

        {dre.saidas.length > 0 && (
          <section className="dre-section">
            <h3 className="dre-section-title saida">Despesas (ano)</h3>
            <ul className="dre-linhas">
              {dre.saidas.map((linha) => (
                <li key={linha.categoria_id} className="dre-categoria">
                  <div className="dre-cat-row">
                    <span className="dre-cat-nome">{linha.categoria_nome}</span>
                    <span className="dre-cat-total saida">R$ {linha.total.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
                  </div>
                  {linha.subcategorias.length > 0 && (
                    <ul className="dre-sub">
                      {linha.subcategorias.map((s) => (
                        <li key={s.subcategoria_id}>
                          <span>{s.subcategoria_nome}</span>
                          <span>R$ {s.total.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
                        </li>
                      ))}
                    </ul>
                  )}
                </li>
              ))}
            </ul>
            <div className="dre-total-line saida">
              <span>Total Despesas</span>
              <span>R$ {dre.totalSaidas.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
            </div>
          </section>
        )}

        <div className={`dre-resultado ${dre.resultado >= 0 ? 'positivo' : 'negativo'}`}>
          <span>Resultado do ano</span>
          <span>R$ {dre.resultado.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
        </div>

        <section className="dre-section dre-por-mes">
          <h3 className="dre-section-title">Visão por mês</h3>
          <div className="dre-meses-grid">
            {porMes.map(({ mes, entradas, saidas }) => (
              <div key={mes} className="dre-mes-card">
                <div className="dre-mes-nome">{MESES[mes - 1]}</div>
                <div className="dre-mes-entrada">+ R$ {entradas.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</div>
                <div className="dre-mes-saida">− R$ {saidas.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</div>
                <div className={`dre-mes-resultado ${entradas - saidas >= 0 ? 'positivo' : 'negativo'}`}>
                  R$ {(entradas - saidas).toLocaleString('pt-BR', { minimumFractionDigits: 2 })}
                </div>
              </div>
            ))}
          </div>
        </section>
      </div>
    </div>
  );
}
