---
title: Young Talents — Exportação de candidatos filtrados (CSV, XLS, PDF)
domain: conhecimento
tags: [relatorio, young-talents, export, c-suite, cliente]
updated: 2025-03-10
---

# Exportação de candidatos filtrados (CSV, XLS, PDF) — Young Talents

**Data:** 10/03/2025  
**Escopo:** Young Talents — Banco de Talentos e Relatórios  
**Cliente:** Young (projeto em `clients/04_young/young-talents`).

Este documento descreve a entrega de hoje para o app Young Talents. É incluído na base de conhecimento para visibilidade do C-Suite (API `context-docs` e relatório diário).

---

## Resumo

Foi implementada a funcionalidade de **exportar a lista de candidatos filtrados** em três formatos: **CSV**, **XLS (Excel)** e **PDF**. O usuário escolhe o formato e as colunas que deseja no arquivo; a exportação usa sempre a lista já filtrada (filtros da sidebar, filtros salvos e, no Banco de Talentos, busca e ordenação locais).

---

## O que foi feito

### 1. Exportação a partir de filtros

- **Banco de Talentos:** botão **"Exportar CSV"** na barra de ações (ao lado de "Filtros"). Exporta a lista exibida na tela (`processedData`: candidatos após filtros globais + busca local + filtro por data + ordenação).
- **Relatórios:** botão **"Exportar candidatos (CSV)"** ao lado de "Exportar Excel". Exporta os candidatos do período selecionado no relatório (`filteredByPeriod`).
- Os **filtros salvos** (presets) continuam funcionando como antes: ao aplicar um preset na sidebar, a lista em Banco de Talentos ou Relatórios já fica filtrada; o novo botão exporta essa mesma lista.

### 2. Modal de exportação

- Ao clicar em "Exportar CSV" ou "Exportar candidatos (CSV)", abre um **modal** onde o usuário:
  - **Escolhe o formato:** CSV, XLS/Excel ou PDF.
  - **Seleciona as colunas** a serem incluídas no arquivo (checkboxes por campo, agrupados por categoria: pessoal, profissional, processo, etapas, etc.).
  - Pode usar atalhos: **Apenas contato**, **Padrão** (nome, email, telefone, cidade, status), **Selecionar todos**, **Desmarcar todos**.
- Validação: é obrigatório ter pelo menos uma coluna selecionada; o botão de exportar fica desabilitado se não houver colunas ou candidatos.

### 3. Formatos de arquivo

| Formato | Extensão | Descrição |
|--------|----------|-----------|
| **CSV** | `.csv` | Texto separado por vírgulas, UTF-8 com BOM (abre bem no Excel em pt-BR). |
| **XLS / Excel** | `.xlsx` | Planilha Excel com aba "Candidatos". |
| **PDF** | `.pdf` | Documento em paisagem com tabela (uma página por vez, quebra automática). |

### 4. Formatação dos dados

- Datas e datas/hora são formatadas em pt-BR (dd/mm/yyyy e dd/mm/yyyy, hh:mm).
- Campos booleanos saem como "Sim" / "Não".
- Tags (array) saem como texto separado por vírgula.
- Campos de candidato seguem as mesmas regras de exibição do app (ex.: filhos, idade calculada quando necessário).

---

## Arquivos criados e alterados

### Novos arquivos

- **`src/utils/csvExport.js`** — Funções de geração e download: `buildCsvFromCandidates`, `downloadCsv`, `getExportData`, `downloadXls`, `downloadPdf`, `defaultExportFilename(ext)`.
- **`src/components/modals/ExportCandidatesCsvModal.jsx`** — Modal com seletor de formato (CSV/XLS/PDF), lista de campos por categoria e atalhos de colunas.

### Arquivos alterados

- **`package.json`** — Dependências: `jspdf`, `jspdf-autotable` (PDF).
- **`src/components/TalentBankView.jsx`** — Botão "Exportar CSV" e modal com `processedData`.
- **`src/components/ReportsPage.jsx`** — Botão "Exportar candidatos (CSV)" e modal com `filteredByPeriod`.

---

## Fluxo para o usuário

1. (Opcional) Aplicar filtros na sidebar ou um **filtro salvo**.
2. Ir em **Banco de Talentos** ou **Relatórios** (e, em Relatórios, escolher o período se quiser).
3. Clicar em **Exportar CSV** (Banco de Talentos) ou **Exportar candidatos (CSV)** (Relatórios).
4. No modal: escolher **CSV**, **XLS/Excel** ou **PDF**, marcar as colunas desejadas e clicar em Exportar.
5. O navegador baixa o arquivo (ex.: `candidatos_export_2025-03-10_14-30.csv` ou `.xlsx` / `.pdf`).

---

## Referência no repositório

- Documento detalhado no projeto: `clients/04_young/young-talents/docs/EXPORT_CANDIDATOS_FILTRADOS.md`.
