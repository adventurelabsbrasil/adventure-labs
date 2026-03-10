---
title: Lidera PLL — Planilha CEF (Gestão de Estoque e Lista de Compras)
domain: conhecimento
tags: [lidera, pll, programa-lucro-liberdade, planilha, estoque, compras, food-service, google-sheets, entregas, c-suite]
updated: 2026-03-10
---

# Lidera PLL — Planilha de Gestão de Estoque e Lista de Compras

*Documento disponível para contexto do C-Suite. Cópia do relatório em [04_PROJETOS_DE_CLIENTES](../04_PROJETOS_DE_CLIENTES/lidera-pll-planilha-cef-2026-03-10.md).*

---

**Cliente:** Lidera  
**Programa:** PLL (Programa Lucro e Liberdade)  
**Tipo de projeto:** Pontual (upscale) — **R$ 90,00**  
**Entrega:** Serviço validado e entregue na manhã de 10/03/2026  

**Progresso no pacote:** Planilha **1 de 5** do combinado no projeto.

### Links do ativo

| Recurso | URL |
|---------|-----|
| **Planilha (Google Sheets)** | [Abrir planilha](https://docs.google.com/spreadsheets/d/1wjBKqA33x69f6aMHItrXLIYFPfbA092fOhTr6FwzK98/edit?gid=902744795#gid=902744795) |
| **Apps Script (código)** | [Abrir projeto Apps Script](https://script.google.com/u/0/home/projects/1uiZ3d4LVTNFbNRKnyJhQCND28eVs8_MGYGydQZwJ9hLoZrlhgRDPk70T/edit) |

Esses links estão registrados como **acessos do cliente Lidera** no app Admin (`/dashboard/clientes/[id]`), na seção *Acessos e credenciais*, para acesso rápido pela equipe.

---

## Resumo

Planilha de gestão de estoque e lista de compras para restaurantes, desenvolvida no âmbito do Programa Lucro e Liberdade (PLL). Ecossistema automatizado em Google Sheets + Google Apps Script para gestão de suprimentos, cadastro de insumos, cotações e listas de compras por fornecedor.

---

# Relatório de Desenvolvimento e Implantação

**Projeto:** Sistema CEF (Compras, Estoque e Ficha) - Versão Premium  
**Nicho:** Food Service / Restaurantes (Padrão: Programa Lucro e Liberdade)  
**Plataforma:** Google Sheets & Google Apps Script

## 🎯 Objetivo do Projeto

Criar um ecossistema automatizado e relacional para gestão de suprimentos de restaurantes. A ferramenta visa eliminar o cálculo manual de cotações, centralizar o cadastro de insumos e gerar listas de compras dinâmicas segmentadas por fornecedor, reduzindo tempo e minimizando erros de compra.

## 🏗 Arquitetura do Sistema

O sistema foi estruturado no modelo de banco de dados relacional com 5 painéis principais:

1. **Instruções de Uso:** Dashboard inicial (estilo Landing Page) com o manual de operação e boas práticas.
2. **Cadastro de Insumos:** Banco de dados base (Data Entry). Calcula automaticamente o Custo por Unidade Base (KG, L, UN) utilizando ArrayFormulas imbutidas no cabeçalho.
3. **Estoque e Compras (Painel do Gestor):** Painel operacional semanal. Puxa metadados do cadastro via `VLOOKUP` matricial. Calcula a Necessidade e sugere Status (`COMPRAR` ou `OK`). Possui totalizadores de "Valor em Estoque" e "Total a Comprar".
4. **Lista de Compras (Impressão):** Relatório dinâmico gerado via `QUERY`. Filtra apenas itens com necessidade de compra e os agrupa automaticamente por fornecedor, pronto para PDF/Impressão.
5. **Configurações:** Tabela de apoio (Lookups) para alimentar as Validações de Dados (Menus Suspensos) de Grupos, Fornecedores e Unidades de Medida.

## ⚙️ Tecnologias e Soluções Aplicadas

- **Blindagem de Fórmulas:** Todas as lógicas dinâmicas (`ARRAYFORMULA`, `IFERROR`, `VLOOKUP`) foram incorporadas à linha de cabeçalho. Isso permite a ordenação alfabética (Sort A-Z) livre de quebras.
- **Consultas Dinâmicas (Query):** Utilização da linguagem de consulta nativa do Google (`QUERY`) para transformar dados brutos do estoque em um relatório limpo de compras.
- **Validação de Dados (Data Validation):** Restrição de input em Grupos e Fornecedores para garantir a padronização e evitar duplicidade no agrupamento de compras.
- **UI/UX Premium (Rebranding PLL):** Aplicação de identidade visual de alta performance (Preto Escuro, Dourado e Vermelho). Congelamento estratégico de colunas e linhas para rolagem infinita sem perda de contexto (Frozen Panes).

## 🤖 Automação via Google Apps Script (Macros)

Foi desenvolvido um script customizado operando nos bastidores (Backend):

- **Menu Superior Nativo:** Injeção do menu "⚙️ SISTEMA RESTAURANTE" na interface padrão (UI) do Google Sheets via gatilho `onOpen()`.
- **Função `limparCicloDeCompras()`:** Rotina que identifica as colunas de preenchimento manual ("Estoque Atual" e "Qtd a Pedir") e executa um `clearContent()` massivo, preparando o sistema para uma nova semana de cotações em 1 clique, com confirmação de segurança para evitar exclusões acidentais.

## ✅ Status Atual

Sistema 100% migrado com dados reais (115 insumos parametrizados). Arquitetura homologada e pronta para operação diária pelo cliente final.
