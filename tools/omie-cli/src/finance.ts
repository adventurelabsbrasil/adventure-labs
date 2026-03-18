/**
 * API Omie v1 — Finanças: Contas a Receber e Contas a Pagar.
 * Contareceber: https://app.omie.com.br/api/v1/financas/contareceber/
 * Contapagar: https://app.omie.com.br/api/v1/financas/contapagar/
 */

import type { OmieConfig } from "./client";

const OMIE_FINANCAS_BASE = "https://app.omie.com.br/api/v1/financas";

async function omieFinanceCall<T = Record<string, unknown>>(
  config: OmieConfig,
  path: string,
  call: string,
  param: unknown[]
): Promise<T> {
  const url = `${OMIE_FINANCAS_BASE}/${path}/`;
  const body = {
    app_key: config.appKey,
    app_secret: config.appSecret,
    call,
    param,
  };

  const res = await fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(body),
  });

  if (!res.ok) {
    const text = await res.text();
    throw new Error(`Omie API ${res.status}: ${text}`);
  }

  return (await res.json()) as T;
}

// --- Contas a Receber (entradas)

export interface ContaReceberItem {
  codigo_lancamento_omie?: number;
  codigo_lancamento_integracao?: string;
  codigo_cliente_fornecedor?: number;
  data_vencimento?: string;
  data_emissao?: string;
  data_registro?: string;
  data_previsao?: string;
  valor_documento?: number;
  valor_baixa?: number;
  data_baixa?: string;
  numero_documento?: string;
  numero_pedido?: string;
  codigo_categoria?: string;
  descricao?: string;
  observacao?: string;
  status?: string;
  nome_cliente?: string;
  [key: string]: unknown;
}

export interface ListarContasReceberResponse {
  pagina: number;
  total_de_paginas: number;
  registros: number;
  total_de_registros: number;
  conta_receber_cadastro?: ContaReceberItem[];
}

export async function listarContasReceber(
  config: OmieConfig,
  opts: { pagina?: number; registros_por_pagina?: number; filtrar_emissao_de?: string; filtrar_emissao_ate?: string } = {}
): Promise<ListarContasReceberResponse> {
  const param: Record<string, unknown> = {
    pagina: opts.pagina ?? 1,
    registros_por_pagina: opts.registros_por_pagina ?? 50,
    apenas_importado_api: "N",
  };
  if (opts.filtrar_emissao_de) param.filtrar_por_emissao_de = opts.filtrar_emissao_de; // dd/mm/aaaa
  if (opts.filtrar_emissao_ate) param.filtrar_por_emissao_ate = opts.filtrar_emissao_ate;
  return omieFinanceCall<ListarContasReceberResponse>(config, "contareceber", "ListarContasReceber", [param]);
}

// --- Contas a Pagar (saídas)

export interface ContaPagarItem {
  codigo_lancamento_omie?: number;
  codigo_lancamento_integracao?: string;
  codigo_cliente_fornecedor?: number;
  data_vencimento?: string;
  data_emissao?: string;
  data_registro?: string;
  data_previsao?: string;
  valor_documento?: number;
  valor_baixa?: number;
  data_baixa?: string;
  numero_documento?: string;
  numero_pedido?: string;
  codigo_categoria?: string;
  descricao?: string;
  observacao?: string;
  status?: string;
  nome_fornecedor?: string;
  [key: string]: unknown;
}

export interface ListarContasPagarResponse {
  pagina: number;
  total_de_paginas: number;
  registros: number;
  total_de_registros: number;
  conta_pagar_cadastro?: ContaPagarItem[];
}

export async function listarContasPagar(
  config: OmieConfig,
  opts: { pagina?: number; registros_por_pagina?: number; filtrar_emissao_de?: string; filtrar_emissao_ate?: string } = {}
): Promise<ListarContasPagarResponse> {
  const param: Record<string, unknown> = {
    pagina: opts.pagina ?? 1,
    registros_por_pagina: opts.registros_por_pagina ?? 50,
    apenas_importado_api: "N",
  };
  if (opts.filtrar_emissao_de) param.filtrar_por_emissao_de = opts.filtrar_emissao_de; // dd/mm/aaaa
  if (opts.filtrar_emissao_ate) param.filtrar_por_emissao_ate = opts.filtrar_emissao_ate;
  return omieFinanceCall<ListarContasPagarResponse>(config, "contapagar", "ListarContasPagar", [param]);
}

/** Busca todas as páginas de contas a receber */
export async function listarTodasContasReceber(
  config: OmieConfig,
  opts: { registros_por_pagina?: number; filtrar_emissao_de?: string; filtrar_emissao_ate?: string } = {}
): Promise<ContaReceberItem[]> {
  const registros_por_pagina = opts.registros_por_pagina ?? 50;
  const first = await listarContasReceber(config, { ...opts, pagina: 1, registros_por_pagina });
  const list: ContaReceberItem[] = [...(first.conta_receber_cadastro ?? [])];
  for (let p = 2; p <= (first.total_de_paginas ?? 1); p++) {
    const next = await listarContasReceber(config, { ...opts, pagina: p, registros_por_pagina });
    list.push(...(next.conta_receber_cadastro ?? []));
  }
  return list;
}

/** Busca todas as páginas de contas a pagar */
export async function listarTodasContasPagar(
  config: OmieConfig,
  opts: { registros_por_pagina?: number; filtrar_emissao_de?: string; filtrar_emissao_ate?: string } = {}
): Promise<ContaPagarItem[]> {
  const registros_por_pagina = opts.registros_por_pagina ?? 50;
  const first = await listarContasPagar(config, { ...opts, pagina: 1, registros_por_pagina });
  const list: ContaPagarItem[] = [...(first.conta_pagar_cadastro ?? [])];
  for (let p = 2; p <= (first.total_de_paginas ?? 1); p++) {
    const next = await listarContasPagar(config, { ...opts, pagina: p, registros_por_pagina });
    list.push(...(next.conta_pagar_cadastro ?? []));
  }
  return list;
}
