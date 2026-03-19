# Google Workspace Inspector (CLI)

Inspeciona arquivos no **Google Drive** (somente leitura): Google Docs, Sheets, Slides, CSV, Excel (xlsx/xls), OFX. Saida: resumo, estrutura detectada, alertas e sugestoes.

## Setup

```bash
cd tools/google-workspace-inspector
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env
# Coloque credentials.json (OAuth Desktop) na pasta
```

No Google Cloud Console: ative **Drive API**, **Google Sheets API**, **Google Slides API**. Escopos usados: `drive.readonly`, `spreadsheets.readonly`, `presentations.readonly`.

## Uso

```bash
python -m google_workspace_inspector inspect --file-id <DRIVE_FILE_ID> --json
```

Opcoes: `--max-rows`, `--max-sheets`, `--max-slides`.

## Seguranca

Nao versionar `credentials.json` nem `token.json`.
