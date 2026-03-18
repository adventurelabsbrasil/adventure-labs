# Inventário de planilhas (Google Drive → Sheets)

Lista **todas** as Google Sheets da conta (My Drive) e grava uma **planilha de controle** com link clicável, descrição, datas e origem (próprio vs compartilhado comigo).

## Pré-requisitos

- Python 3.9+
- Projeto no [Google Cloud Console](https://console.cloud.google.com/) com:
  - **Google Drive API** e **Google Sheets API** ativadas
  - Tela de consentimento OAuth com escopos:
    - `https://www.googleapis.com/auth/drive.metadata.readonly`
    - `https://www.googleapis.com/auth/spreadsheets`
  - Credenciais **OAuth client ID** tipo **Desktop app** → JSON baixado (não commitar)

## Setup

```bash
cd tools/drive-sheets-inventory
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
cp .env.example .env
# Coloque credentials.json na pasta (ou aponte GOOGLE_CREDENTIALS_PATH)
```

## Primeira execução

1. Abra o navegador no fluxo OAuth e faça login como **contato@adventurelabs.com.br**.
2. Aceite as permissões. Será gerado `token.json` (não commitar).

```bash
cd tools/drive-sheets-inventory
source .venv/bin/activate
python -m drive_sheets_inventory
```

Na primeira vez **cria** uma nova planilha e imprime o link. Guarde o ID:

```bash
export DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID=<id_da_planilha>
```

Próximas execuções **atualizam** a mesma planilha (aba **Índice**), substituindo os dados.

### Descrições com Gemini (recomendado)

1. Crie uma chave em [Google AI Studio](https://aistudio.google.com/apikey) (`GEMINI_API_KEY`).
2. Rode com a planilha de controle já fixada (para não gastar chamadas resumindo o próprio inventário):

```bash
export DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID=<id>
export GEMINI_API_KEY=<sua_chave>
python -m drive_sheets_inventory --gemini-descriptions
```

- Uma chamada à API por planilha listada (pode levar vários minutos).
- A planilha de inventário (mesmo ID que `DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID`) é **ignorada** no resumo.
- Se o modelo `gemini-2.0-flash` não estiver disponível na sua conta, use `--gemini-model gemini-1.5-flash` (ou outro listado na documentação da API).
- **Privacidade:** o trecho de cada planilha (nomes das abas + amostra de células) é enviado ao Gemini para gerar o texto.

## Colunas geradas

| Coluna | Conteúdo |
|--------|------------|
| Título | `HYPERLINK` com ícone 📊 + nome |
| Descrição | Por padrão só o **campo descrição do Drive** (quase sempre vazio em Sheets). Com `--gemini-descriptions`, vira **resumo em português** gerado pela IA a partir do nome, abas e amostra de células (A1:H25 da 1ª aba). |
| Criado em / Modificado em | Horário America/Sao_Paulo (snapshot) |
| Origem | `Próprio` ou `Compartilhado comigo` |
| ID | ID do arquivo (útil para scripts) |
| Proprietário(s) | E-mails retornados pela API |
| Sincronizado em | Momento da última execução do CLI |

**Fase 1:** `--phase owned` — só planilhas em que você é dono.  
**Fase 2 (junto):** `--phase all` (padrão) — inclui também `sharedWithMe`.

## Opções CLI

```text
--phase all|owned|shared   # padrão: all
--spreadsheet-id ID        # atualizar planilha existente
--title "..."              # título ao criar nova planilha
--include-shared-drives    # tenta incluir Team Drives (veja limites abaixo)
--gemini-descriptions      # preenche Descrição com resumo via Gemini (GEMINI_API_KEY)
--gemini-model NOME        # ex.: gemini-1.5-flash (default: gemini-2.0-flash)
--keep-descriptions        # sem Gemini: reusa Descrição da planilha pelo ID (novas ficam vazias)
--credentials PATH
--token PATH
```

Variáveis de ambiente: `GOOGLE_CREDENTIALS_PATH`, `GOOGLE_TOKEN_PATH`, `DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID`, `GEMINI_API_KEY`, `GEMINI_MODEL`.

## Limites

- Planilhas só em **drives compartilhados** podem não aparecer sem `--include-shared-drives` e permissões adequadas.
- **Última modificação** é valor na hora da sincronização; não há fórmula nativa que atualize sozinha para outros arquivos do Drive — rode o CLI de novo quando quiser atualizar.

## Agendamento mensal (macOS)

O Cursor **não** roda cron. Use **launchd** no seu Mac — scripts em [`schedule/`](schedule/README.md):

1. `cp schedule/.env.schedule.example schedule/.env.schedule` e preencha o ID da planilha.
2. `./schedule/install-launchd.sh` — executa **todo dia 1 às 08:30** (ajustável no template).
3. O Mac precisa estar ligado nesse horário (ou mude o horário).

## Segurança

Não versionar `credentials.json`, `token.json`, `.env` nem `schedule/.env.schedule`. O inventário pode expor nomes de arquivos; rode em ambiente confiável.
