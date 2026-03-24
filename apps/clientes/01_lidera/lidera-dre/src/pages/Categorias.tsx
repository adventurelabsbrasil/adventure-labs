import { useState } from 'react';
import { useCategorias, useSubcategorias } from '../hooks/useCategorias';
import type { Categoria, Subcategoria } from '../types';
import './Categorias.css';

export default function Categorias() {
  const {
    categorias,
    loading: catLoading,
    error: catError,
    insertCategoria,
    updateCategoria,
    deleteCategoria,
  } = useCategorias();
  const [selectedCatId, setSelectedCatId] = useState<string | null>(null);
  const {
    subcategorias,
    loading: subLoading,
    insertSubcategoria,
    updateSubcategoria,
    deleteSubcategoria,
  } = useSubcategorias(selectedCatId);
  const [editingCategoria, setEditingCategoria] = useState<Categoria | null>(null);
  const [editingSubcategoria, setEditingSubcategoria] = useState<Subcategoria | null>(null);
  const [newCatNome, setNewCatNome] = useState('');
  const [newCatTipo, setNewCatTipo] = useState<'entrada' | 'saida'>('entrada');
  const [newSubNome, setNewSubNome] = useState('');

  const selectedCategoria = categorias.find((c) => c.id === selectedCatId);

  const handleSaveCategoria = async () => {
    if (editingCategoria) {
      await updateCategoria(editingCategoria.id, { nome: newCatNome, tipo: newCatTipo });
      setEditingCategoria(null);
    } else {
      await insertCategoria({ nome: newCatNome, tipo: newCatTipo });
      setNewCatNome('');
      setNewCatTipo('entrada');
    }
  };

  const handleSaveSubcategoria = async () => {
    if (!selectedCatId) return;
    if (editingSubcategoria) {
      await updateSubcategoria(editingSubcategoria.id, { nome: newSubNome });
      setEditingSubcategoria(null);
    } else {
      await insertSubcategoria({ categoria_id: selectedCatId, nome: newSubNome });
      setNewSubNome('');
    }
  };

  if (catLoading) {
    return <div className="page-loading">Carregando categorias...</div>;
  }
  if (catError) {
    return <div className="page-error">Erro: {catError}</div>;
  }

  return (
    <div className="categorias-page">
      <div className="categorias-grid">
        <section className="card categorias-list">
          <h3>Categorias</h3>
          <div className="categoria-form-inline">
            <input
              type="text"
              placeholder="Nova categoria"
              value={editingCategoria ? newCatNome : newCatNome}
              onChange={(e) => setNewCatNome(e.target.value)}
            />
            <select
              value={editingCategoria ? editingCategoria.tipo : newCatTipo}
              onChange={(e) => setNewCatTipo(e.target.value as 'entrada' | 'saida')}
              disabled={!!editingCategoria}
            >
              <option value="entrada">Entrada</option>
              <option value="saida">Saída</option>
            </select>
            <button type="button" className="btn btn-primary" onClick={handleSaveCategoria}>
              {editingCategoria ? 'Salvar' : 'Adicionar'}
            </button>
            {editingCategoria && (
              <button
                type="button"
                className="btn btn-ghost"
                onClick={() => {
                  setEditingCategoria(null);
                  setNewCatNome('');
                }}
              >
                Cancelar
              </button>
            )}
          </div>
          <ul className="categorias-ul">
            {categorias.map((c) => (
              <li
                key={c.id}
                className={`categoria-item ${selectedCatId === c.id ? 'selected' : ''}`}
              >
                <button
                  type="button"
                  className="categoria-item-btn"
                  onClick={() => setSelectedCatId(c.id)}
                >
                  <span className={`tipo-badge tipo-${c.tipo}`}>{c.tipo}</span>
                  <span className="categoria-nome">{c.nome}</span>
                </button>
                <div className="categoria-actions">
                  <button
                    type="button"
                    className="btn-icon"
                    onClick={(e) => {
                      e.stopPropagation();
                      setEditingCategoria(c);
                      setNewCatNome(c.nome);
                      setNewCatTipo(c.tipo as 'entrada' | 'saida');
                    }}
                    aria-label="Editar"
                  >
                    ✎
                  </button>
                  <button
                    type="button"
                    className="btn-icon btn-danger"
                    onClick={(e) => {
                      e.stopPropagation();
                      if (window.confirm('Excluir esta categoria e suas subcategorias?'))
                        deleteCategoria(c.id);
                    }}
                    aria-label="Excluir"
                  >
                    ×
                  </button>
                </div>
              </li>
            ))}
          </ul>
        </section>

        <section className="card subcategorias-list">
          <h3>
            Subcategorias
            {selectedCategoria && (
              <span className={`tipo-badge tipo-${selectedCategoria.tipo}`}>
                {selectedCategoria.nome}
              </span>
            )}
          </h3>
          {!selectedCatId ? (
            <p className="text-muted">Selecione uma categoria para ver subcategorias.</p>
          ) : (
            <>
              <div className="categoria-form-inline">
                <input
                  type="text"
                  placeholder="Nova subcategoria"
                  value={editingSubcategoria ? newSubNome : newSubNome}
                  onChange={(e) => setNewSubNome(e.target.value)}
                />
                <button type="button" className="btn btn-primary" onClick={handleSaveSubcategoria}>
                  {editingSubcategoria ? 'Salvar' : 'Adicionar'}
                </button>
                {editingSubcategoria && (
                  <button
                    type="button"
                    className="btn btn-ghost"
                    onClick={() => {
                      setEditingSubcategoria(null);
                      setNewSubNome('');
                    }}
                  >
                    Cancelar
                  </button>
                )}
              </div>
              {subLoading ? (
                <p>Carregando...</p>
              ) : (
                <ul className="subcategorias-ul">
                  {subcategorias.map((s) => (
                    <li key={s.id} className="subcategoria-item">
                      <span className="subcategoria-nome">{s.nome}</span>
                      <div className="categoria-actions">
                        <button
                          type="button"
                          className="btn-icon"
                          onClick={() => {
                            setEditingSubcategoria(s);
                            setNewSubNome(s.nome);
                          }}
                          aria-label="Editar"
                        >
                          ✎
                        </button>
                        <button
                          type="button"
                          className="btn-icon btn-danger"
                          onClick={() => {
                            if (window.confirm('Excluir esta subcategoria?'))
                              deleteSubcategoria(s.id);
                          }}
                          aria-label="Excluir"
                        >
                          ×
                        </button>
                      </div>
                    </li>
                  ))}
                </ul>
              )}
            </>
          )}
        </section>
      </div>
    </div>
  );
}
