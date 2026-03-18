# Xtractor

Pipeline de processamento de emails com anexos: análise com Gemini, armazenamento no Drive, registro no Sheets e notificações via Google Chat.

## Fluxo

1. Poll Gmail a cada N minutos (emails não lidos com anexo)
2. Analisa documentos com Gemini (resumo, categoria, detecção de cobrança)
3. Faz upload dos anexos para uma pasta no Drive
4. Insere uma linha no Sheets (timestamp, remetente, assunto, categoria, resumo, link Drive, conexões)
5. Se detectar cobrança financeira, notifica no Google Chat
6. Semanalmente gera relatório consolidado

## Pré-requisitos

- Python 3.9+
- Conta Google (Gmail, Drive, Sheets)
- [Gemini API Key](https://aistudio.google.com/apikey)
- Google Chat webhook (opcional, para notificações)

## Setup

### 1. Clonar e instalar

```bash
cd Xtractor
python -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### 2. Google Cloud

1. [Google Cloud Console](https://console.cloud.google.com/) → criar projeto
2. Ativar APIs: **Gmail API**, **Google Drive API**, **Google Sheets API**
3. OAuth consent screen: tipo External
4. Credentials → Create OAuth client ID → Desktop app
5. Baixar JSON e salvar como `credentials.json` na raiz

### 3. Configuração

```bash
cp .env.example .env
# Editar .env com seus valores
```

Variáveis obrigatórias: `GOOGLE_DRIVE_FOLDER_ID`, `GOOGLE_SHEETS_ID`, `GEMINI_API_KEY`

### 4. Primeira execução

```bash
python -m xtractor run
```

O navegador abrirá para login no Google. Após autorizar, o `token.json` será criado.

## Uso

### Local (loop contínuo)

```bash
python -m xtractor run
```

### Docker

```bash
docker build -t xtractor .
docker run -v $(pwd)/credentials.json:/app/credentials.json \
           -v $(pwd)/token.json:/app/token.json \
           -v $(pwd)/.env:/app/.env \
           xtractor
```

### Vercel (cron)

O endpoint `/api/cron` pode ser invocado pelo cron do Vercel. Configurar variáveis de ambiente no dashboard e definir `CRON_SECRET`.

**Nota:** Cron no plano Hobby é limitado a 1x/dia. Para poll a cada 5 min, use plano Pro ou rode local/Docker. OAuth (token.json) precisa ser gerado localmente e adicionado como variável/base64 no Vercel.

## Teste

```bash
python scripts/test_gmail.py
```

## Estrutura

```
xtractor/
├── main.py         # Loop principal
├── gmail_client.py
├── drive_client.py
├── sheets_client.py
├── gemini_analyzer.py
├── chat_notifier.py
├── weekly_report.py
├── config.py
└── models.py
```
