#!/usr/bin/env node

import { Command } from "commander";
import * as dotenv from "dotenv";
import * as path from "path";
import * as fs from "fs";
import {
  listarClientes,
  consultarCliente,
  incluirCliente,
  alterarCliente,
  type OmieConfig,
  type ClienteCadastro,
  type ClientesCadastroChave,
} from "./client";
import { listarContasReceber, listarContasPagar } from "./finance";

// Carrega .env do diretório da CLI ou do monorepo (apps/core/admin)
dotenv.config({ path: path.join(__dirname, "..", ".env") });
const adminEnv = path.resolve(__dirname, "../../../apps/core/admin/.env.local");
if (fs.existsSync(adminEnv)) {
  dotenv.config({ path: adminEnv });
}

function getConfig(): OmieConfig {
  const appKey = process.env.OMIE_APP_KEY;
  const appSecret = process.env.OMIE_APP_SECRET;
  if (!appKey || !appSecret) {
    console.error("Erro: defina OMIE_APP_KEY e OMIE_APP_SECRET no .env (ou em apps/core/admin/.env.local)");
    process.exit(1);
  }
  return { appKey, appSecret };
}

const program = new Command();

program
  .name("omie")
  .description("CLI para cadastrar, listar e alterar clientes no Omie (API v1)")
  .version("1.0.0");

const clientesCmd = program
  .command("clientes")
  .description("Comandos de clientes no Omie");

clientesCmd
  .command("list")
  .description("Listar clientes cadastrados no Omie")
  .option("-p, --pagina <n>", "Página (default: 1)", "1")
  .option("-n, --por-pagina <n>", "Registros por página (default: 50)", "50")
  .option("--json", "Saída em JSON")
  .action(async (opts: { pagina: string; porPagina: string; json?: boolean }) => {
    const config = getConfig();
    const pagina = parseInt(opts.pagina, 10) || 1;
    const porPagina = parseInt(opts.porPagina, 10) || 50;
    try {
      const res = await listarClientes(config, { pagina, registros_por_pagina: porPagina });
      if (opts.json) {
        console.log(JSON.stringify(res, null, 2));
        return;
      }
      const lista = res.clientes_cadastro ?? res.lista_cadastro ?? [];
      console.log(`Página ${res.pagina}/${res.total_de_paginas} — ${res.total_de_registros} cliente(s)\n`);
      for (const c of lista) {
        const id = c.codigo_cliente_omie ?? "-";
        const nome = c.nome_fantasia || c.razao_social || "-";
        const doc = c.cnpj_cpf ? ` (${c.cnpj_cpf})` : "";
        console.log(`  ${id}\t${nome}${doc}`);
      }
    } catch (e) {
      console.error("Erro:", e instanceof Error ? e.message : e);
      process.exit(1);
    }
  });

clientesCmd
  .command("get <identificador>")
  .description("Consultar um cliente por código Omie ou código de integração")
  .option("--json", "Saída em JSON")
  .action(async (identificador: string, opts: { json?: boolean }) => {
    const config = getConfig();
    const chave: ClientesCadastroChave = /^\d+$/.test(identificador)
      ? { codigo_cliente_omie: parseInt(identificador, 10) }
      : { codigo_cliente_integracao: identificador };
    try {
      const cadastro = await consultarCliente(config, chave);
      if (opts.json) {
        console.log(JSON.stringify(cadastro, null, 2));
        return;
      }
      console.log("Cliente:");
      console.log(JSON.stringify(cadastro, null, 2));
    } catch (e) {
      console.error("Erro:", e instanceof Error ? e.message : e);
      process.exit(1);
    }
  });

clientesCmd
  .command("create")
  .description("Cadastrar novo cliente no Omie")
  .requiredOption("--razao-social <texto>", "Razão social")
  .requiredOption("--nome-fantasia <texto>", "Nome fantasia")
  .option("--codigo-integracao <texto>", "Código de integração (único)")
  .option("--cnpj-cpf <texto>", "CNPJ ou CPF")
  .option("--email <email>", "E-mail")
  .option("--contato <texto>", "Nome para contato")
  .option("--cep <texto>", "CEP")
  .option("--endereco <texto>", "Endereço")
  .option("--numero <texto>", "Número")
  .option("--bairro <texto>", "Bairro")
  .option("--cidade <texto>", "Cidade")
  .option("--estado <sigla>", "Estado (ex: RS)")
  .option("--telefone <texto>", "Telefone (com DDD)")
  .option("--json", "Saída em JSON")
  .action(async (opts: Record<string, string | undefined>) => {
    const config = getConfig();
    const cadastro: Partial<ClienteCadastro> = {
      razao_social: opts.razaoSocial,
      nome_fantasia: opts.nomeFantasia,
      codigo_cliente_integracao: opts.codigoIntegracao,
      cnpj_cpf: opts.cnpjCpf,
      email: opts.email,
      contato: opts.contato,
      cep: opts.cep,
      endereco: opts.endereco,
      endereco_numero: opts.numero,
      bairro: opts.bairro,
      cidade: opts.cidade,
      estado: opts.estado,
      telefone: opts.telefone,
    };
    // Remove undefined
    Object.keys(cadastro).forEach((k) => (cadastro as Record<string, unknown>)[k] === undefined && delete (cadastro as Record<string, unknown>)[k]);
    try {
      const status = await incluirCliente(config, cadastro);
      if (opts.json) {
        console.log(JSON.stringify(status, null, 2));
        return;
      }
      console.log("Cliente cadastrado:", status.cDescStatus);
      if (status.codigo_cliente_omie) console.log("Código Omie:", status.codigo_cliente_omie);
      if (status.codigo_cliente_integracao) console.log("Código integração:", status.codigo_cliente_integracao);
    } catch (e) {
      console.error("Erro:", e instanceof Error ? e.message : e);
      process.exit(1);
    }
  });

clientesCmd
  .command("update <identificador>")
  .description("Alterar dados de um cliente (por código Omie ou código de integração)")
  .option("--razao-social <texto>", "Razão social")
  .option("--nome-fantasia <texto>", "Nome fantasia")
  .option("--cnpj-cpf <texto>", "CNPJ ou CPF")
  .option("--email <email>", "E-mail")
  .option("--contato <texto>", "Nome para contato")
  .option("--cep <texto>", "CEP")
  .option("--endereco <texto>", "Endereço")
  .option("--numero <texto>", "Número")
  .option("--bairro <texto>", "Bairro")
  .option("--cidade <texto>", "Cidade")
  .option("--estado <sigla>", "Estado")
  .option("--telefone <texto>", "Telefone")
  .option("--inativo <S|N>", "Marcar inativo (S/N)")
  .option("--json", "Saída em JSON")
  .action(async (identificador: string, opts: Record<string, string | undefined>) => {
    const config = getConfig();
    const chave: ClientesCadastroChave = /^\d+$/.test(identificador)
      ? { codigo_cliente_omie: parseInt(identificador, 10) }
      : { codigo_cliente_integracao: identificador };
    const cadastro: Partial<ClienteCadastro> = { ...chave };
    if (opts.razaoSocial != null) cadastro.razao_social = opts.razaoSocial;
    if (opts.nomeFantasia != null) cadastro.nome_fantasia = opts.nomeFantasia;
    if (opts.cnpjCpf != null) cadastro.cnpj_cpf = opts.cnpjCpf;
    if (opts.email != null) cadastro.email = opts.email;
    if (opts.contato != null) cadastro.contato = opts.contato;
    if (opts.cep != null) cadastro.cep = opts.cep;
    if (opts.endereco != null) cadastro.endereco = opts.endereco;
    if (opts.numero != null) cadastro.endereco_numero = opts.numero;
    if (opts.bairro != null) cadastro.bairro = opts.bairro;
    if (opts.cidade != null) cadastro.cidade = opts.cidade;
    if (opts.estado != null) cadastro.estado = opts.estado;
    if (opts.telefone != null) cadastro.telefone = opts.telefone;
    if (opts.inativo != null) cadastro.inativo = opts.inativo === "S" ? "S" : "N";
    try {
      const status = await alterarCliente(config, cadastro);
      if (opts.json) {
        console.log(JSON.stringify(status, null, 2));
        return;
      }
      console.log("Cliente alterado:", status.cDescStatus);
    } catch (e) {
      console.error("Erro:", e instanceof Error ? e.message : e);
      process.exit(1);
    }
  });

// --- Transações (entradas = contas a receber, saídas = contas a pagar)

const transacoesCmd = program
  .command("transacoes")
  .description("Listar transações no Omie para conciliação com extrato bancário (primeiro entradas, depois saídas)");

transacoesCmd
  .command("entradas")
  .description("Listar ENTRADAS (contas a receber) — recebimentos")
  .option("-p, --pagina <n>", "Página (default: 1)", "1")
  .option("-n, --por-pagina <n>", "Registros por página (default: 50)", "50")
  .option("--todas", "Buscar todas as páginas")
  .option("--de <dd/mm/aaaa>", "Filtrar emissão a partir de")
  .option("--ate <dd/mm/aaaa>", "Filtrar emissão até")
  .option("--json", "Saída em JSON")
  .action(async (opts: { pagina: string; porPagina?: string; todas?: boolean; de?: string; ate?: string; json?: boolean }) => {
    const config = getConfig();
    const pagina = parseInt(opts.pagina, 10) || 1;
    const porPagina = Math.min(parseInt(opts.porPagina ?? "50", 10) || 50, 100);
    const filtros = opts.de || opts.ate ? { filtrar_emissao_de: opts.de, filtrar_emissao_ate: opts.ate } : {};
    try {
      const list: Array<Record<string, unknown>> = [];
      let p = pagina;
      let totalPages = 1;
      do {
        const res = await listarContasReceber(config, { ...filtros, pagina: p, registros_por_pagina: porPagina });
        totalPages = res.total_de_paginas ?? 1;
        const cadastros = res.conta_receber_cadastro ?? [];
        list.push(...cadastros);
        if (!opts.todas || p >= totalPages) break;
        p++;
        await new Promise((r) => setTimeout(r, 400));
      } while (p <= totalPages);

      if (opts.json) {
        console.log(JSON.stringify({ total: list.length, entradas: list }, null, 2));
        return;
      }
      console.log("=== ENTRADAS (Contas a Receber) ===\n");
      console.log(`Total listado: ${list.length} lançamento(s)\n`);
      console.log("Data         Valor        Doc            Cliente/Descrição                    Status");
      console.log("-".repeat(85));
      for (const c of list) {
        const data = (c.data_vencimento ?? c.data_emissao ?? c.data_registro ?? "-") as string;
        const valor = c.valor_documento ?? c.valor_baixa ?? 0;
        const doc = (c.numero_documento ?? "-") as string;
        const nome = (c.nome_cliente ?? c.descricao ?? c.observacao ?? "-") as string;
        const status = (c.status ?? c.status_titulo ?? "-") as string;
        const dataBaixa = (c.data_baixa ?? "") as string;
        console.log(`${String(data).padEnd(12)}  R$ ${Number(valor).toFixed(2).padStart(10)}  ${String(doc).padEnd(14)}  ${String(nome).slice(0, 35).padEnd(35)}  ${status}  ${dataBaixa ? `Baixa: ${dataBaixa}` : ""}`);
      }
    } catch (e) {
      console.error("Erro:", e instanceof Error ? e.message : e);
      process.exit(1);
    }
  });

transacoesCmd
  .command("saidas")
  .description("Listar SAÍDAS (contas a pagar) — pagamentos")
  .option("-p, --pagina <n>", "Página (default: 1)", "1")
  .option("-n, --por-pagina <n>", "Registros por página (default: 50)", "50")
  .option("--todas", "Buscar todas as páginas")
  .option("--de <dd/mm/aaaa>", "Filtrar emissão a partir de")
  .option("--ate <dd/mm/aaaa>", "Filtrar emissão até")
  .option("--json", "Saída em JSON")
  .action(async (opts: { pagina: string; porPagina?: string; todas?: boolean; de?: string; ate?: string; json?: boolean }) => {
    const config = getConfig();
    const pagina = parseInt(opts.pagina, 10) || 1;
    const porPagina = Math.min(parseInt(opts.porPagina ?? "50", 10) || 50, 100);
    const filtros = opts.de || opts.ate ? { filtrar_emissao_de: opts.de, filtrar_emissao_ate: opts.ate } : {};
    try {
      const list: Array<Record<string, unknown>> = [];
      let p = pagina;
      let totalPages = 1;
      do {
        const res = await listarContasPagar(config, { ...filtros, pagina: p, registros_por_pagina: porPagina });
        totalPages = res.total_de_paginas ?? 1;
        const cadastros = res.conta_pagar_cadastro ?? [];
        list.push(...cadastros);
        if (!opts.todas || p >= totalPages) break;
        p++;
        await new Promise((r) => setTimeout(r, 400));
      } while (p <= totalPages);

      if (opts.json) {
        console.log(JSON.stringify({ total: list.length, saidas: list }, null, 2));
        return;
      }
      console.log("=== SAÍDAS (Contas a Pagar) ===\n");
      console.log(`Total listado: ${list.length} lançamento(s)\n`);
      console.log("Data         Valor        Doc            Fornecedor/Descrição                Status      Baixa");
      console.log("-".repeat(95));
      for (const c of list) {
        const data = (c.data_vencimento ?? c.data_emissao ?? c.data_registro ?? "-") as string;
        const valor = c.valor_documento ?? c.valor_baixa ?? 0;
        const doc = (c.numero_documento ?? "-") as string;
        const nome = (c.nome_fornecedor ?? c.descricao ?? c.observacao ?? "-") as string;
        const status = (c.status_titulo ?? c.status ?? "-") as string;
        const dataBaixa = (c.data_baixa ?? "") as string;
        console.log(`${String(data).padEnd(12)}  R$ ${Number(valor).toFixed(2).padStart(10)}  ${String(doc).padEnd(14)}  ${String(nome).slice(0, 35).padEnd(35)}  ${String(status).padEnd(10)}  ${dataBaixa || "-"}`);
      }
    } catch (e) {
      console.error("Erro:", e instanceof Error ? e.message : e);
      process.exit(1);
    }
  });

program.parse();
