import { useState, useMemo, useEffect } from 'react';
import { useAuth } from '../contexts/AuthContext';
import { useLancamentos } from '../hooks/useLancamentos';
import { useCategorias, useSubcategorias } from '../hooks/useCategorias';
import { useOrganizacoes } from '../hooks/useOrganizacoes';
import type { LancamentoInsert, LancamentoWithRelations, Subcategoria } from '../types';
import './Lancamentos.css';

const defaultResponsavel = 'Responsável';

export default function Lancamentos() {
  const { user, profile } = useAuth();
  const { lancamentos, loading, error, insertLancamento, deleteLancamento } = useLancamentos();
  const { categorias } = useCategorias();
  const { organizacoes } = useOrganizacoes();
  const [tipo, setTipo] = useState<'entrada' | 'saida'>('entrada');
  const [categoriaId, setCategoriaId] = useState('');
  const [subcategoriaId, setSubcategoriaId] = useState('');
  const [dataLancamento, setDataLancamento] = useState(() =>
    new Date().toISOString().slice(0, 10)
  );
  const [descricao, setDescricao] = useState('');
  const [valor, setValor] = useState('');
  const [observacoes, setObservacoes] = useState('');
  const [responsavel, setResponsavel] = useState(defaultResponsavel);
  const [submitError, setSubmitError] = useState<string | null>(null);
  const [adminOrgId, setAdminOrgId] = useState('');

  const organizacaoId = profile?.role === 'admin' ? adminOrgId || organizacoes[0]?.id : profile?.organizacao_id ?? null;

  const categoriasFiltradas = useMemo(
    () => categorias.filter((c) => c.tipo === tipo),
    [categorias, tipo]
  );
  const { subcategorias } = useSubcategorias(categoriaId || null);

  const resetSubcategoria = () => setSubcategoriaId('');

  useEffect(() => {
    if (profile && !responsavel) {
      setResponsavel(profile.nome_exibicao?.trim() || profile.email || '');
    }
  }, [profile]);

  useEffect(() => {
    if (profile?.role === 'admin' && organizacoes.length > 0 && !adminOrgId) {
      setAdminOrgId(organizacoes[0].id);
    }
  }, [profile?.role, organizacoes, adminOrgId]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setSubmitError(null);
    if (!user) {
      setSubmitError('Faça login para lançar.');
      return;
    }
    if (!organizacaoId) {
      setSubmitError(profile?.role === 'admin' ? 'Selecione uma organização.' : 'Sua conta ainda não está vinculada a uma organização. Peça ao administrador.');
      return;
    }
    const v = parseFloat(valor.replace(',', '.').replace(/\s/g, ''));
    if (isNaN(v) || v <= 0) {
      setSubmitError('Informe um valor válido.');
      return;
    }
    if (!categoriaId) {
      setSubmitError('Selecione uma categoria.');
      return;
    }
    const payload: LancamentoInsert = {
      data_lancamento: dataLancamento,
      tipo,
      categoria_id: categoriaId,
      subcategoria_id: subcategoriaId || null,
      descricao: descricao.trim() || null,
      valor: v,
      observacoes: observacoes.trim() || null,
      responsavel: responsavel.trim() || profile?.nome_exibicao?.trim() || profile?.email || defaultResponsavel,
      organizacao_id: organizacaoId,
      created_by: user.id,
    };
    const { error: err } = await insertLancamento(payload);
    if (err) {
      setSubmitError(err.message);
      return;
    }
    setValor('');
    setDescricao('');
    setObservacoes('');
  };

  const groupedByDate = useMemo(() => {
    const map = new Map<string, LancamentoWithRelations[]>();
    for (const l of lancamentos) {
      const d = l.data_lancamento;
      if (!map.has(d)) map.set(d, []);
      map.get(d)!.push(l);
    }
    return Array.from(map.entries()).sort(([a], [b]) => (b > a ? 1 : -1));
  }, [lancamentos]);

  if (loading) {
    return <div className="page-loading">Carregando lançamentos...</div>;
  }
  if (error) {
    return <div className="page-error">Erro: {error}</div>;
  }

  return (
    <div className="lancamentos-page">
      <form className="card lancamento-form" onSubmit={handleSubmit}>
        <h3>Novo lançamento</h3>
        {submitError && <p className="form-error">{submitError}</p>}
        {profile?.role === 'admin' && organizacoes.length > 0 && (
          <div className="form-row">
            <label>
              <span>Organização</span>
              <select
                value={adminOrgId || organizacoes[0]?.id || ''}
                onChange={(e) => setAdminOrgId(e.target.value)}
              >
                {organizacoes.map((o) => (
                  <option key={o.id} value={o.id}>{o.nome}</option>
                ))}
              </select>
            </label>
          </div>
        )}
        <div className="form-row">
          <label>
            <span>Data</span>
            <input
              type="date"
              value={dataLancamento}
              onChange={(e) => setDataLancamento(e.target.value)}
              required
            />
          </label>
          <label>
            <span>Tipo</span>
            <select value={tipo} onChange={(e) => setTipo(e.target.value as 'entrada' | 'saida')}>
              <option value="entrada">Entrada</option>
              <option value="saida">Saída</option>
            </select>
          </label>
          <label>
            <span>Categoria</span>
            <select
              value={categoriaId}
              onChange={(e) => {
                setCategoriaId(e.target.value);
                resetSubcategoria();
              }}
              required
            >
              <option value="">Selecione</option>
              {categoriasFiltradas.map((c) => (
                <option key={c.id} value={c.id}>
                  {c.nome}
                </option>
              ))}
            </select>
          </label>
          <label>
            <span>Subcategoria</span>
            <select
              value={subcategoriaId}
              onChange={(e) => setSubcategoriaId(e.target.value)}
            >
              <option value="">—</option>
              {subcategorias.map((s: Subcategoria) => (
                <option key={s.id} value={s.id}>
                  {s.nome}
                </option>
              ))}
            </select>
          </label>
        </div>
        <div className="form-row">
          <label className="form-full">
            <span>Descrição (opcional)</span>
            <input
              type="text"
              placeholder="Descrição"
              value={descricao}
              onChange={(e) => setDescricao(e.target.value)}
            />
          </label>
        </div>
        <div className="form-row">
          <label>
            <span>Valor (R$)</span>
            <input
              type="text"
              inputMode="decimal"
              placeholder="0,00"
              value={valor}
              onChange={(e) => setValor(e.target.value)}
              required
            />
          </label>
          <label>
            <span>Responsável</span>
            <input
              type="text"
              placeholder="Quem lançou"
              value={responsavel}
              onChange={(e) => setResponsavel(e.target.value)}
            />
          </label>
        </div>
        <div className="form-row">
          <label className="form-full">
            <span>Observações (opcional)</span>
            <input
              type="text"
              placeholder="Observações"
              value={observacoes}
              onChange={(e) => setObservacoes(e.target.value)}
            />
          </label>
        </div>
        <div className="form-actions">
          <button type="submit" className="btn btn-primary">
            Lançar
          </button>
        </div>
      </form>

      <section className="lancamentos-list-section">
        <h3>Lançamentos recentes</h3>
        {groupedByDate.length === 0 ? (
          <p className="text-muted">Nenhum lançamento ainda. Use o formulário acima para adicionar.</p>
        ) : (
          <div className="lancamentos-by-date">
            {groupedByDate.map(([date, items]) => (
              <div key={date} className="card lancamentos-day">
                <h4 className="day-header">{new Date(date + 'T12:00:00').toLocaleDateString('pt-BR', { weekday: 'long', day: '2-digit', month: 'short', year: 'numeric' })}</h4>
                <ul className="lancamentos-ul">
                  {items.map((l) => {
                    const cat = l.categoria as { nome?: string } | null;
                    const sub = l.subcategoria as { nome?: string } | null;
                    const valorNum = Number(l.valor);
                    const exibir = l.tipo === 'saida' ? -valorNum : valorNum;
                    return (
                      <li key={l.id} className={`lancamento-card tipo-${l.tipo}`}>
                        <div className="lancamento-info">
                          <span className="lancamento-valor">{exibir >= 0 ? '+' : ''} R$ {exibir.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>
                          <span className="lancamento-desc">{l.descricao || cat?.nome || '—'}</span>
                          <span className="lancamento-meta">
                            {cat?.nome}
                            {sub?.nome ? ` · ${sub.nome}` : ''} · {l.responsavel}
                          </span>
                        </div>
                        <button
                          type="button"
                          className="btn-icon btn-danger"
                          onClick={() => {
                            if (window.confirm('Excluir este lançamento?')) deleteLancamento(l.id);
                          }}
                          aria-label="Excluir"
                        >
                          ×
                        </button>
                      </li>
                    );
                  })}
                </ul>
              </div>
            ))}
          </div>
        )}
      </section>
    </div>
  );
}
