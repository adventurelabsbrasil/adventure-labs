# Google Workspace Advisor — Workflow Mensal (n8n)

Esse workflow dispara mensalmente (dia 1, 08:30) o endpoint do **Admin**:

- `POST /api/csuite/google-workspace-advisor-inspect`

Ele lê a planilha de inventário (aba `Índice`, colunas A:H, `fileId` na coluna F) e preenche colunas **I:L** com:

- `Resumo Advisor`
- `Flags de Qualidade`
- `Melhorias Sugeridas`
- `Inspecionado em`

## Importar no n8n

1. Importar o arquivo:
   - [`google-workspace-advisor-monthly-v1.json`](./google-workspace-advisor-monthly-v1.json)
2. No nó HTTP Request `Run Google Workspace Advisor (Admin API)`, configurar:
   - Credencial **HTTP Header Auth** com header `x-admin-key`
   - Valor: o mesmo `CRON_SECRET` configurado no Vercel do Admin (apps/core/admin).
3. Ativar o workflow.

## Pré-requisitos no Admin (Vercel)

O endpoint usa **Service Account** para ler/escrever no Google Sheets:

- `GOOGLE_CLIENT_EMAIL`
- `GOOGLE_PRIVATE_KEY`
- `GOOGLE_WORKSPACE_ADVISOR_INVENTORY_SPREADSHEET_ID`

A Service Account precisa ter permissão de acesso à planilha de inventário e, para inspeção, também às planilhas listadas.

## Observações

- O script presume que a aba de controle se chama `Índice` (como gerado por `tools/drive-sheets-inventory`).
- Para evitar apagar enriquecimentos: o inventário foi ajustado para não limpar colunas além de `H`.

