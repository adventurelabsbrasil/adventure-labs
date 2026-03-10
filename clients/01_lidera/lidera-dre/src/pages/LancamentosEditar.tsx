import { useState, useMemo } from 'react';
import { useLancamentos } from '../hooks/useLancamentos';
import { useCategorias, useSubcategorias } from '../hooks/useCategorias';
import type { LancamentoWithRelations } from '../types';
import './LancamentosEditar.css';

export default function LancamentosEditar() {
  const [dateFrom, setDateFrom] = useState('');
  const [dateTo, setDateTo] = useState('');
  const [tipoFilter, setTipoFilter] = useState<'entrada' | 'saida' | ''>('');
  const filters = useMemo(() => {
    const f: { from?: string; to?: string; tipo?: 'entrada' | 'saida' } = {};
    if (dateFrom) f.from = dateFrom;
    if (dateTo) f.to = dateTo;
    if (tipoFilter) f.tipo = tipoFilter;
    return f;
  }, [dateFrom, dateTo, tipoFilter]);

  const [editingId, setEditingId] = useState<string | null>(null);
  const [editForm, setEditForm] = useState<Partial<LancamentoWithRelations>>({});

  const {
    lancamentos,
    loading,
    error,
    updateLancamento,
    deleteLancamento,
  } = useLancamentos(filters);
  const { categorias } = useCategorias();
  const { subcategorias: subcategoriasEdit } = useSubcategorias(editForm.categoria_id ?? null);

  const startEdit = (l: LancamentoWithRelations) => {
    setEditingId(l.id);
    setEditForm({
      data_lancamento: l.data_lancamento,
      tipo: l.tipo,
      categoria_id: l.categoria_id,
      subcategoria_id: l.subcategoria_id ?? undefined,
      descricao: l.descricao ?? '',
      valor: l.valor,
      observacoes: l.observacoes ?? '',
      responsavel: l.responsavel,
    });
  };

  const cancelEdit = () => {
    setEditingId(null);
    setEditForm({});
  };

  const saveEdit = async () => {
    if (!editingId) return;
    const payload = {
      data_lancamento: editForm.data_lancamento,
      tipo: editForm.tipo,
      categoria_id: editForm.categoria_id,
      subcategoria_id: editForm.subcategoria_id ?? null,
      descricao: editForm.descricao || null,
      valor: editForm.valor,
      observacoes: editForm.observacoes || null,
      responsavel: editForm.responsavel,
    };
    await updateLancamento(editingId, payload);
    cancelEdit();
  };

  if (loading) {
    return <div className="page-loading">Carregando...</div>;
  }
  if (error) {
    return <div className="page-error">Erro: {error}</div>;
  }

  return (
    <div className="lancamentos-editar-page">
      <div className="card filters-card">
        <h3>Filtros</h3>
        <div className="filters-row">
          <label>
            <span>De</span>
            <input
              type="date"
              value={dateFrom}
              onChange={(e) => setDateFrom(e.target.value)}
            />
          </label>
          <label>
            <span>Até</span>
            <input
              type="date"
              value={dateTo}
              onChange={(e) => setDateTo(e.target.value)}
            />
          </label>
          <label>
            <span>Tipo</span>
            <select
              value={tipoFilter}
              onChange={(e) => setTipoFilter(e.target.value as 'entrada' | 'saida' | '')}
            >
              <option value="">Todos</option>
              <option value="entrada">Entrada</option>
              <option value="saida">Saída</option>
            </select>
          </label>
        </div>
      </div>

      <div className="card table-card">
        <div className="table-wrap">
          <table className="lancamentos-table">
            <thead>
              <tr>
                <th>Data</th>
                <th>Tipo</th>
                <th>Categoria</th>
                <th>Subcategoria</th>
                <th>Descrição</th>
                <th>Valor</th>
                <th>Observações</th>
                <th>Responsável</th>
                <th>Ações</th>
              </tr>
            </thead>
            <tbody>
              {lancamentos.map((l) => {
                const cat = l.categoria as { nome?: string } | null;
                const sub = l.subcategoria as { nome?: string } | null;
                const isEditing = editingId === l.id;
                const valorNum = Number(l.valor);
                const exibir = l.tipo === 'saida' ? -valorNum : valorNum;

                if (isEditing) {
                  return (
                    <tr key={l.id} className="editing-row">
                      <td>
                        <input
                          type="date"
                          value={editForm.data_lancamento ?? ''}
                          onChange={(e) => setEditForm((f) => ({ ...f, data_lancamento: e.target.value }))}
                        />
                      </td>
                      <td>
                        <select
                          value={editForm.tipo ?? ''}
                          onChange={(e) => setEditForm((f) => ({ ...f, tipo: e.target.value as 'entrada' | 'saida' }))}
                        >
                          <option value="entrada">Entrada</option>
                          <option value="saida">Saída</option>
                        </select>
                      </td>
                      <td>
                        <select
                          value={editForm.categoria_id ?? ''}
                          onChange={(e) => setEditForm((f) => ({ ...f, categoria_id: e.target.value, subcategoria_id: undefined }))}
                        >
                          {categorias.filter((c) => c.tipo === editForm.tipo).map((c) => (
                            <option key={c.id} value={c.id}>{c.nome}</option>
                          ))}
                        </select>
                      </td>
                      <td>
                        <select
                          value={editForm.subcategoria_id ?? ''}
                          onChange={(e) => setEditForm((f) => ({ ...f, subcategoria_id: e.target.value || undefined }))}
                        >
                          <option value="">—</option>
                          {subcategoriasEdit.map((s) => (
                            <option key={s.id} value={s.id}>{s.nome}</option>
                          ))}
                        </select>
                      </td>
                      <td>
                        <input
                          type="text"
                          value={editForm.descricao ?? ''}
                          onChange={(e) => setEditForm((f) => ({ ...f, descricao: e.target.value }))}
                          size={20}
                        />
                      </td>
                      <td>
                        <input
                          type="number"
                          step="0.01"
                          min="0"
                          value={editForm.valor ?? 0}
                          onChange={(e) => setEditForm((f) => ({ ...f, valor: parseFloat(e.target.value) || 0 }))}
                          style={{ width: '100px' }}
                        />
                      </td>
                      <td>
                        <input
                          type="text"
                          value={editForm.observacoes ?? ''}
                          onChange={(e) => setEditForm((f) => ({ ...f, observacoes: e.target.value }))}
                          size={12}
                        />
                      </td>
                      <td>
                        <input
                          type="text"
                          value={editForm.responsavel ?? ''}
                          onChange={(e) => setEditForm((f) => ({ ...f, responsavel: e.target.value }))}
                          size={12}
                        />
                      </td>
                      <td>
                        <button type="button" className="btn btn-primary btn-sm" onClick={saveEdit}>Salvar</button>
                        <button type="button" className="btn btn-ghost btn-sm" onClick={cancelEdit}>Cancelar</button>
                      </td>
                    </tr>
                  );
                }

                return (
                  <tr key={l.id}>
                    <td>{new Date(l.data_lancamento + 'T12:00:00').toLocaleDateString('pt-BR')}</td>
                    <td><span className={`tipo-badge tipo-${l.tipo}`}>{l.tipo}</span></td>
                    <td>{cat?.nome ?? '—'}</td>
                    <td>{sub?.nome ?? '—'}</td>
                    <td>{l.descricao ?? '—'}</td>
                    <td className={`valor-cell tipo-${l.tipo}`}>
                      {exibir >= 0 ? '+' : ''} R$ {exibir.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}
                    </td>
                    <td>{l.observacoes ?? '—'}</td>
                    <td>{l.responsavel}</td>
                    <td>
                      <button type="button" className="btn-icon" onClick={() => startEdit(l)} aria-label="Editar">✎</button>
                      <button
                        type="button"
                        className="btn-icon btn-danger"
                        onClick={() => window.confirm('Excluir este lançamento?') && deleteLancamento(l.id)}
                        aria-label="Excluir"
                      >
                        ×
                      </button>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
        {lancamentos.length === 0 && (
          <p className="text-muted table-empty">Nenhum lançamento encontrado com os filtros informados.</p>
        )}
      </div>
    </div>
  );
}
