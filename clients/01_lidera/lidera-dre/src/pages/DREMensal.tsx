import { useState, useMemo } from 'react';
import { useLancamentos } from '../hooks/useLancamentos';
import { agregarDRE } from '../lib/dre';
import './DRE.css';

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

export default function DREMensal() {
  const now = new Date();
  const [year, setYear] = useState(now.getFullYear());
  const [month, setMonth] = useState(now.getMonth() + 1);

  const { from, to } = useMemo(() => getMonthBounds(year, month), [year, month]);
  const { lancamentos, loading, error } = useLancamentos({ from, to });
  const dre = useMemo(() => agregarDRE(lancamentos), [lancamentos]);

  if (loading) return <div className="page-loading">Carregando...</div>;
  if (error) return <div className="page-error">Erro: {error}</div>;

  return (
    <div className="dre-page export-print-target">
      <div className="dre-controls no-print">
        <label>
          <span>Mês</span>
          <select value={month} onChange={(e) => setMonth(Number(e.target.value))}>
            {MESES.map((m, i) => (
              <option key={m} value={i + 1}>{m}</option>
            ))}
          </select>
        </label>
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
        <h2 className="dre-title">DRE Mensal — {MESES[month - 1]} de {year}</h2>

        {dre.entradas.length === 0 && dre.saidas.length === 0 ? (
          <p className="dre-empty text-muted">Nenhum lançamento neste período. Use a página Lançamentos para cadastrar receitas e despesas.</p>
        ) : null}

        {dre.entradas.length > 0 && (
          <section className="dre-section">
            <h3 className="dre-section-title entrada">Receitas</h3>
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
            <h3 className="dre-section-title saida">Despesas</h3>
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
          <span>Resultado do mês</span>
          <span>R$ {dre.resultado.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
        </div>
      </div>
    </div>
  );
}
