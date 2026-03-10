export type TipoLancamento = 'entrada' | 'saida';

export type DreRole = 'admin' | 'gestor';

export interface DreOrganizacao {
  id: string;
  nome: string;
  created_at: string;
  updated_at: string;
}

export interface DrePerfil {
  id: string;
  user_id: string;
  email: string;
  nome_exibicao: string | null;
  role: DreRole;
  organizacao_id: string | null;
  created_at: string;
  updated_at: string;
}

export interface Categoria {
  id: string;
  nome: string;
  tipo: TipoLancamento;
  ordem: number | null;
  created_at: string;
  updated_at: string;
}

export interface Subcategoria {
  id: string;
  categoria_id: string;
  nome: string;
  ordem: number | null;
  created_at: string;
  updated_at: string;
}

export interface Lancamento {
  id: string;
  data_lancamento: string;
  tipo: TipoLancamento;
  categoria_id: string;
  subcategoria_id: string | null;
  descricao: string | null;
  valor: number;
  observacoes: string | null;
  responsavel: string;
  organizacao_id: string | null;
  created_by: string | null;
  created_at: string;
  updated_at: string;
}

export interface LancamentoInsert {
  data_lancamento: string;
  tipo: TipoLancamento;
  categoria_id: string;
  subcategoria_id?: string | null;
  descricao?: string | null;
  valor: number;
  observacoes?: string | null;
  responsavel: string;
  organizacao_id: string;
  created_by: string;
}

export interface LancamentoWithRelations extends Lancamento {
  categoria?: Categoria | null;
  subcategoria?: Subcategoria | null;
}

export interface DREGrupo {
  categoria_id: string;
  categoria_nome: string;
  tipo: TipoLancamento;
  subcategorias: { subcategoria_id: string; subcategoria_nome: string; total: number }[];
  total: number;
}
