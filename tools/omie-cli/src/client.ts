/**
 * Cliente HTTP para a API Omie v1 (geral/clientes).
 * Documentação: https://app.omie.com.br/api/v1/geral/clientes/
 */

const OMIE_BASE = "https://app.omie.com.br/api/v1/geral/clientes/";

export interface OmieConfig {
  appKey: string;
  appSecret: string;
}

export interface OmieApiResponse<T = unknown> {
  [key: string]: T | string | number | undefined;
}

/**
 * Chama um método da API Omie (clientes). Body: { app_key, app_secret, call, param }.
 */
export async function omieCall<T = OmieApiResponse>(
  config: OmieConfig,
  call: string,
  param: unknown[]
): Promise<T> {
  const body = {
    app_key: config.appKey,
    app_secret: config.appSecret,
    call,
    param,
  };

  const res = await fetch(OMIE_BASE, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(body),
  });

  if (!res.ok) {
    const text = await res.text();
    throw new Error(`Omie API ${res.status}: ${text}`);
  }

  const data = (await res.json()) as T;
  return data;
}

// --- ListarClientes

export interface ClientesListRequest {
  pagina: number;
  registros_por_pagina: number;
  apenas_importado_api?: "S" | "N";
}

export interface ClienteResumido {
  codigo_cliente_omie: number;
  codigo_cliente_integracao?: string;
  razao_social?: string;
  nome_fantasia?: string;
  cnpj_cpf?: string;
  email?: string;
  inativo?: string;
}

export interface ClientesListResponse {
  pagina: number;
  total_de_paginas: number;
  registros: number;
  total_de_registros: number;
  /** API retorna clientes_cadastro (ListarClientes) */
  clientes_cadastro?: ClienteResumido[];
  lista_cadastro?: ClienteResumido[];
}

export async function listarClientes(
  config: OmieConfig,
  opts: { pagina?: number; registros_por_pagina?: number } = {}
): Promise<ClientesListResponse> {
  const param: ClientesListRequest[] = [
    {
      pagina: opts.pagina ?? 1,
      registros_por_pagina: opts.registros_por_pagina ?? 50,
      apenas_importado_api: "N",
    },
  ];
  return omieCall<ClientesListResponse>(config, "ListarClientes", param);
}

// --- ConsultarCliente

export interface ClientesCadastroChave {
  codigo_cliente_omie?: number;
  codigo_cliente_integracao?: string;
}

export interface ClienteCadastro extends ClientesCadastroChave {
  razao_social?: string;
  nome_fantasia?: string;
  cnpj_cpf?: string;
  email?: string;
  contato?: string;
  endereco?: string;
  endereco_numero?: string;
  bairro?: string;
  cidade?: string;
  estado?: string;
  cep?: string;
  ddd_telefone?: string;
  telefone?: string;
  inscricao_municipal?: string;
  inscricao_estadual?: string;
  pessoa_fisica?: "S" | "N";
  optante_simples_nacional?: "S" | "N";
  inativo?: "S" | "N";
  [key: string]: string | number | undefined;
}

export async function consultarCliente(
  config: OmieConfig,
  chave: ClientesCadastroChave
): Promise<ClienteCadastro> {
  const param = [{ codigo_cliente_omie: chave.codigo_cliente_omie ?? 0, codigo_cliente_integracao: chave.codigo_cliente_integracao ?? "" }];
  const out = (await omieCall(config, "ConsultarCliente", param)) as Record<string, ClienteCadastro>;
  const cadastro = out.clientes_cadastro ?? out.cadastro ?? (out as unknown as ClienteCadastro);
  if (!cadastro || (typeof cadastro === "object" && !("codigo_cliente_omie" in cadastro) && !("razao_social" in cadastro))) {
    throw new Error("Cliente não encontrado");
  }
  return cadastro;
}

// --- IncluirCliente / AlterarCliente

export interface ClientesStatus {
  cDescStatus: string;
  codigo_cliente_omie?: number;
  codigo_cliente_integracao?: string;
}

export async function incluirCliente(
  config: OmieConfig,
  cadastro: Partial<ClienteCadastro>
): Promise<ClientesStatus> {
  const param = [cadastro];
  return omieCall<ClientesStatus>(config, "IncluirCliente", param);
}

export async function alterarCliente(
  config: OmieConfig,
  cadastro: Partial<ClienteCadastro>
): Promise<ClientesStatus> {
  const param = [cadastro];
  return omieCall<ClientesStatus>(config, "AlterarCliente", param);
}
