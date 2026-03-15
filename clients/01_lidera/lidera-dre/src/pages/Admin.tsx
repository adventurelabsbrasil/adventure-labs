import { useState, useEffect, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '../contexts/AuthContext';
import { useOrganizacoes } from '../hooks/useOrganizacoes';
import { supabase } from '../lib/supabase';
import type { DrePerfil } from '../types';
import './Admin.css';

interface PerfilComOrg extends DrePerfil {
  dre_organizacoes?: { nome: string } | null;
}

export default function Admin() {
  const { profile, sessionVersion } = useAuth();
  const navigate = useNavigate();
  const { organizacoes, loading: orgLoading, insertOrganizacao, updateOrganizacao } = useOrganizacoes();
  const [perfis, setPerfis] = useState<PerfilComOrg[]>([]);
  const [perfisLoading, setPerfisLoading] = useState(true);
  const [editingOrgId, setEditingOrgId] = useState<string | null>(null);
  const [newOrgNome, setNewOrgNome] = useState('');
  const [editingPerfilId, setEditingPerfilId] = useState<string | null>(null);
  const [editPerfilRole, setEditPerfilRole] = useState<DrePerfil['role']>('gestor');
  const [editPerfilOrgId, setEditPerfilOrgId] = useState<string | null>(null);
  const [editPerfilNome, setEditPerfilNome] = useState('');
  const [addEmail, setAddEmail] = useState('');
  const [addPassword, setAddPassword] = useState('');
  const [addRole, setAddRole] = useState<DrePerfil['role']>('gestor');
  const [addOrgId, setAddOrgId] = useState('');
  const [addNome, setAddNome] = useState('');
  const [addError, setAddError] = useState<string | null>(null);
  const [addSuccess, setAddSuccess] = useState(false);

  useEffect(() => {
    if (profile?.role !== 'admin') {
      navigate('/', { replace: true });
      return;
    }
  }, [profile?.role, navigate]);

  const fetchPerfis = useCallback(async () => {
    const { data, error } = await supabase
      .from('dre_perfis')
      .select('*, dre_organizacoes(nome)')
      .order('email');
    if (!error) setPerfis((data ?? []) as PerfilComOrg[]);
    else setPerfis([]);
    setPerfisLoading(false);
  }, []);

  useEffect(() => {
    if (profile?.role === 'admin') fetchPerfis();
  }, [profile?.role, fetchPerfis, sessionVersion]);

  if (profile?.role !== 'admin') return null;

  const handleSaveOrg = async (id: string, nome: string) => {
    await updateOrganizacao(id, nome);
    setEditingOrgId(null);
  };

  const handleCreateOrg = async () => {
    if (!newOrgNome.trim()) return;
    await insertOrganizacao(newOrgNome.trim());
    setNewOrgNome('');
  };

  const handleEditPerfil = (p: PerfilComOrg) => {
    setEditingPerfilId(p.id);
    setEditPerfilRole(p.role);
    setEditPerfilOrgId(p.organizacao_id);
    setEditPerfilNome(p.nome_exibicao ?? '');
  };

  const handleSavePerfil = async () => {
    if (!editingPerfilId) return;
    const { error } = await supabase
      .from('dre_perfis')
      .update({
        role: editPerfilRole,
        organizacao_id: editPerfilOrgId || null,
        nome_exibicao: editPerfilNome.trim() || null,
      })
      .eq('id', editingPerfilId);
    if (!error) {
      setEditingPerfilId(null);
      fetchPerfis();
    }
  };

  const handleAddUser = async (e: React.FormEvent) => {
    e.preventDefault();
    setAddError(null);
    setAddSuccess(false);
    if (!addEmail.trim() || !addPassword) {
      setAddError('Preencha email e senha.');
      return;
    }
    const { data, error: signUpError } = await supabase.auth.signUp({
      email: addEmail.trim(),
      password: addPassword,
    });
    if (signUpError) {
      setAddError(signUpError.message);
      return;
    }
    const newUserId = data.user?.id;
    if (!newUserId) {
      setAddError('Usuário criado mas não foi possível obter o ID.');
      return;
    }
    const { error: updateError } = await supabase
      .from('dre_perfis')
      .update({
        role: addRole,
        organizacao_id: addOrgId || null,
        nome_exibicao: addNome.trim() || null,
      })
      .eq('user_id', newUserId);
    if (updateError) {
      setAddError('Usuário criado mas falha ao atribuir perfil: ' + updateError.message);
      return;
    }
    setAddSuccess(true);
    setAddEmail('');
    setAddPassword('');
    setAddNome('');
    setAddRole('gestor');
    setAddOrgId('');
    fetchPerfis();
  };

  return (
    <div className="admin-page">
      <section className="card admin-section">
        <h3>Organizações</h3>
        <div className="admin-org-add">
          <input
            type="text"
            placeholder="Nova organização"
            value={newOrgNome}
            onChange={(e) => setNewOrgNome(e.target.value)}
          />
          <button type="button" className="btn btn-primary" onClick={handleCreateOrg}>
            Adicionar
          </button>
        </div>
        {orgLoading ? (
          <p className="text-muted">Carregando...</p>
        ) : (
          <ul className="admin-list">
            {organizacoes.map((o) => (
              <li key={o.id} className="admin-list-item">
                {editingOrgId === o.id ? (
                  <>
                    <input
                      type="text"
                      defaultValue={o.nome}
                      id={`org-${o.id}`}
                      onKeyDown={(e) => e.key === 'Enter' && handleSaveOrg(o.id, (e.target as HTMLInputElement).value)}
                    />
                    <button type="button" className="btn btn-primary btn-sm" onClick={() => handleSaveOrg(o.id, (document.getElementById(`org-${o.id}`) as HTMLInputElement)?.value)}>Salvar</button>
                    <button type="button" className="btn btn-ghost btn-sm" onClick={() => setEditingOrgId(null)}>Cancelar</button>
                  </>
                ) : (
                  <>
                    <span>{o.nome}</span>
                    <button type="button" className="btn-icon" onClick={() => setEditingOrgId(o.id)} aria-label="Editar">✎</button>
                  </>
                )}
              </li>
            ))}
          </ul>
        )}
      </section>

      <section className="card admin-section">
        <h3>Adicionar usuário</h3>
        <form onSubmit={handleAddUser} className="admin-add-user-form">
          {addError && <p className="form-error">{addError}</p>}
          {addSuccess && <p className="form-success">Usuário criado. Atribua a senha ao usuário.</p>}
          <label>
            <span>Email</span>
            <input type="email" value={addEmail} onChange={(e) => setAddEmail(e.target.value)} required />
          </label>
          <label>
            <span>Senha</span>
            <input type="password" value={addPassword} onChange={(e) => setAddPassword(e.target.value)} required minLength={6} />
          </label>
          <label>
            <span>Nome (exibição)</span>
            <input type="text" value={addNome} onChange={(e) => setAddNome(e.target.value)} placeholder="Opcional" />
          </label>
          <label>
            <span>Função</span>
            <select value={addRole} onChange={(e) => setAddRole(e.target.value as DrePerfil['role'])}>
              <option value="gestor">Gestor (cliente)</option>
              <option value="admin">Admin (Lidera)</option>
            </select>
          </label>
          <label>
            <span>Organização</span>
            <select value={addOrgId} onChange={(e) => setAddOrgId(e.target.value)}>
              <option value="">— Nenhuma (admin) —</option>
              {organizacoes.map((o) => (
                <option key={o.id} value={o.id}>{o.nome}</option>
              ))}
            </select>
          </label>
          <button type="submit" className="btn btn-primary">Criar usuário</button>
        </form>
      </section>

      <section className="card admin-section">
        <h3>Usuários</h3>
        {perfisLoading ? (
          <p className="text-muted">Carregando...</p>
        ) : (
          <div className="admin-table-wrap">
            <table className="admin-table">
              <thead>
                <tr>
                  <th>Email</th>
                  <th>Nome</th>
                  <th>Função</th>
                  <th>Organização</th>
                  <th>Ações</th>
                </tr>
              </thead>
              <tbody>
                {perfis.map((p) => (
                  <tr key={p.id}>
                    {editingPerfilId === p.id ? (
                      <>
                        <td>{p.email}</td>
                        <td>
                          <input
                            type="text"
                            value={editPerfilNome}
                            onChange={(e) => setEditPerfilNome(e.target.value)}
                            placeholder="Nome"
                            size={12}
                          />
                        </td>
                        <td>
                          <select value={editPerfilRole} onChange={(e) => setEditPerfilRole(e.target.value as DrePerfil['role'])}>
                            <option value="gestor">Gestor</option>
                            <option value="admin">Admin</option>
                          </select>
                        </td>
                        <td>
                          <select value={editPerfilOrgId ?? ''} onChange={(e) => setEditPerfilOrgId(e.target.value || null)}>
                            <option value="">—</option>
                            {organizacoes.map((o) => (
                              <option key={o.id} value={o.id}>{o.nome}</option>
                            ))}
                          </select>
                        </td>
                        <td>
                          <button type="button" className="btn btn-primary btn-sm" onClick={handleSavePerfil}>Salvar</button>
                          <button type="button" className="btn btn-ghost btn-sm" onClick={() => setEditingPerfilId(null)}>Cancelar</button>
                        </td>
                      </>
                    ) : (
                      <>
                        <td>{p.email}</td>
                        <td>{p.nome_exibicao ?? '—'}</td>
                        <td><span className={`tipo-badge tipo-${p.role}`}>{p.role}</span></td>
                        <td>{(p.dre_organizacoes as { nome?: string } | null)?.nome ?? '—'}</td>
                        <td>
                          <button type="button" className="btn-icon" onClick={() => handleEditPerfil(p)} aria-label="Editar">✎</button>
                        </td>
                      </>
                    )}
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </section>
    </div>
  );
}
