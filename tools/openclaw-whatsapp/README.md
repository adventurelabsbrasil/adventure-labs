## OpenClaw + WhatsApp (Área de Testes)

Este diretório é o **sandbox** para testar o OpenClaw focado em organizar o seu WhatsApp pessoal, sem misturar nada com o restante do monorepo.

### 1. Pré‑requisitos

- Node.js instalado (>= 18 recomendado).
- `npm` disponível no terminal.
- Um celular com WhatsApp (idealmente um número dedicado para o assistente, mas é possível começar com o WhatsApp pessoal).

> **Importante:** nunca versionar chaves de API, tokens ou QR codes. Use sempre `.env.local` / `.env` fora do git ou variáveis de ambiente do sistema.

### 2. Instalar o OpenClaw (global)

No seu macOS:

```bash
npm install -g openclaw
```

Verifique se instalou corretamente:

```bash
openclaw --help
```

### 3. Onboarding inicial

Rode o assistente de onboarding:

```bash
openclaw onboard
```

Passos típicos:

1. Escolher o modelo de IA (pode começar com o padrão sugerido).
2. Definir idioma de trabalho → **pt-BR**.
3. Configurar canais de uso:
   - Habilite **WhatsApp** como canal principal.

Ao final do onboarding, rode:

```bash
openclaw start
```

Isso sobe o servidor local do OpenClaw e abre (ou informa) a interface de configuração onde você vai conectar o WhatsApp.

### 4. Conectar o WhatsApp

Na interface do OpenClaw:

1. Selecione o canal **WhatsApp**.
2. Siga as instruções para escanear o QR code com o seu WhatsApp.
3. Aguarde a confirmação de que o bot está online.

Recomendação:

- Se possível, use um **número separado** só para o assistente (ex.: outro chip ou WhatsApp Business). Assim você conversa com o assistente a partir do seu WhatsApp pessoal, sem poluir sua conta principal com automatizações.

### 5. Primeiros testes focados em organização

Sugestões práticas de testes (em pt‑BR):

1. **Organizar contatos importantes**
   - Envie para o OpenClaw:
   - "Quero organizar meus contatos importantes no WhatsApp. Me ajuda a criar uma lista das 10 pessoas com quem mais falo e como devo chamá‑las (apelido curto) daqui pra frente?"

2. **Criar rotinas de triagem diária**
   - Exemplo de prompt:
   - "Todo dia às 20h, quero que você me ajude a revisar as conversas não lidas de hoje, resumindo o que é urgente, o que é importante e o que posso responder amanhã."

3. **Limpar grupos e conversas antigas**
   - Exemplo de prompt:
   - "Me ajude a identificar grupos que não interajo há mais de 3 meses e sugerir quais posso silenciar ou arquivar, mantendo um resumo rápido do que é cada grupo."

4. **Geração de tarefas a partir de mensagens**
   - Encaminhe uma mensagem para o contato do OpenClaw e diga:
   - "Transforme essa mensagem em uma lista de tarefas com prazos sugeridos. Quero a resposta em formato de checklist."

**Configurar leitura de mensagens, contatos e grupos:**  
→ Ver **[CONFIG-LER-WHATSAPP.md](CONFIG-LER-WHATSAPP.md)** para ajustes em `~/.openclaw/openclaw.json` (DMs, grupos, allowlist) e comandos `openclaw config set`.

Use esta pasta (`tools/openclaw-whatsapp/`) para:

- Guardar **notas** de prompts que funcionaram bem (`prompts.md`).
- Anotar decisões de configuração (`config-notes.md`).
- Eventual código de integração futura (ex.: scripts que conversem com OpenClaw via API).

**Repositório OpenClaw (Vercel + subdomínio Railway):** no monorepo em **`tools/openclaw`** (submodule; [adventurelabsbrasil/openclaw](https://github.com/adventurelabsbrasil/openclaw)).  
**Rodar o OpenClaw no Railway:**  
→ Ver **[RAILWAY.md](RAILWAY.md)** para deploy one-click, Volume, variáveis e como vincular o serviço à Railway CLI do monorepo.

### 6. Próximos passos (quando os testes básicos estiverem ok)

Algumas ideias de evolução:

- Conectar o OpenClaw a fontes internas (ex.: base de conhecimento em `knowledge/` ou dados de projetos em `apps/admin`) para deixar o assistente mais "Adventure Labs".
- Criar playbooks de rotinas (ex.: rotina semanal de revisão de contatos, follow‑ups comerciais, saúde financeira pessoal, etc.).
- Explorar outros canais (Telegram, e‑mail) mas mantendo este diretório como **centro de documentação** das experiências com OpenClaw.

> Quando decidir automatizar algo mais profundo (scripts, API, integrações), crie subpastas aqui, por exemplo: `scripts/`, `notes/`, `playbooks/`.

