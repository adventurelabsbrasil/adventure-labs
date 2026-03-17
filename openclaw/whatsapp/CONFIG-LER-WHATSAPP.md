# Configurar OpenClaw para ler mensagens, contatos e grupos do WhatsApp

Este guia define as alterações em `~/.openclaw/openclaw.json` para o OpenClaw conseguir **ler** mensagens (DMs), contatos e grupos do seu WhatsApp.

---

## 1. Onde fica a configuração

- **Arquivo:** `~/.openclaw/openclaw.json`
- **Backup:** antes de editar, copie o arquivo (ex.: `openclaw.json.bak`).
- Depois de alterar, **reinicie** o gateway e o TUI (`openclaw tui` ou o processo que você usa).

---

## 2. O que adicionar/ajustar

Merge o bloco abaixo na raiz do seu `openclaw.json` (dentro de `channels.whatsapp`). Se já existir `channels.whatsapp`, mescle apenas as chaves que faltam.

### 2.1 Ler DMs (mensagens diretas)

- **`dmPolicy`:** controla quem pode enviar mensagens ao bot e, na prática, quais DMs o OpenClaw “vê”.
  - `"pairing"` (padrão): só quem passou pelo pareamento (código) pode falar.
  - `"allowlist"`: só números em `allowFrom`.
  - `"open"`: qualquer um (exige `allowFrom: ["*"]`).
- **`allowFrom`:** lista de números no formato E.164 (ex.: `"+5551999999999"`). Inclua **seu número** para você mesmo poder falar com o bot e para o agente “ver” suas conversas quando aplicável.

Para **poder ler e responder às suas mensagens** no WhatsApp pessoal, use allowlist com seu número:

```json
"channels": {
  "whatsapp": {
    "dmPolicy": "allowlist",
    "allowFrom": ["+5551999999999"]
  }
}
```

Substitua `+5551999999999` pelo seu número com DDI (ex.: +55 51 98730-488 → `"+555198730488"`).

### 2.2 Ler grupos

- **`groupPolicy`:** define se o OpenClaw aceita mensagens de grupos.
  - `"disabled"`: não lê grupos.
  - `"allowlist"`: só grupos (ou remetentes) na allowlist.
  - `"open"`: lê todos os grupos (com respeito a `groups`, ex.: só responder quando mencionado).
- **`groups`:** permite todos os grupos com acionamento por menção (recomendado para não poluir grupos).

Exemplo para **ler todos os grupos** e só responder quando for mencionado:

```json
"channels": {
  "whatsapp": {
    "groupPolicy": "open",
    "groups": {
      "*": { "requireMention": true }
    }
  }
}
```

- `"*"`: todos os grupos.
- `requireMention: true`: o agente só responde quando for mencionado (ex.: @openclaw ou o nome do bot no grupo).

### 2.3 Restringir quem pode acionar o bot em grupos (opcional)

Se quiser que **só você** (ou números específicos) possam acionar o bot em grupos:

```json
"channels": {
  "whatsapp": {
    "groupPolicy": "allowlist",
    "groupAllowFrom": ["+5551999999999"],
    "groups": {
      "*": { "requireMention": true }
    }
  }
}
```

Substitua pelo seu número em E.164.

### 2.4 Contatos

Com o canal WhatsApp **linkado** (QR já escaneado), o bridge do OpenClaw já tem acesso à lista de contatos que o WhatsApp Web expõe. Não é necessário configurar nada extra para “ler contatos”; o agente usa esse contexto quando processa mensagens (remetente, nome, etc.).

---

## 3. Exemplo completo (DMs + grupos + seu número)

Merge no seu `openclaw.json` (ajuste o número):

```json
{
  "channels": {
    "whatsapp": {
      "dmPolicy": "allowlist",
      "allowFrom": ["+555198730488"],
      "groupPolicy": "open",
      "groups": {
        "*": { "requireMention": true }
      }
    }
  }
}
```

- **DMs:** só o número em `allowFrom` pode falar com o bot (e o bot “lê” essas mensagens).
- **Grupos:** o bot lê todos os grupos e só responde quando for **mencionado** (`@openclaw` ou nome do contato do bot no grupo).
- **Contatos:** continuam acessíveis via canal linkado, sem config extra.

---

## 4. Comandos CLI (alternativa)

Se preferir usar o CLI em vez de editar o JSON à mão:

```bash
# Permitir seu número nas DMs (troque pelo seu E.164)
openclaw config set channels.whatsapp.dmPolicy "allowlist"
openclaw config set 'channels.whatsapp.allowFrom' '["+555198730488"]' --strict-json

# Grupos: aceitar todos, responder só quando mencionado
openclaw config set channels.whatsapp.groupPolicy "open"
openclaw config set 'channels.whatsapp.groups' '{"*":{"requireMention":true}}' --strict-json
```

Reinicie o gateway/TUI depois.

---

## 5. Verificação

1. **DM:** envie uma mensagem para o número do OpenClaw no WhatsApp; o agente deve receber e poder responder.
2. **Grupo:** adicione o número do OpenClaw a um grupo, escreva algo como `@openclaw oi`; o agente deve responder nesse grupo.
3. **Contatos:** pergunte ao agente no DM algo como “quem está na minha lista de contatos?” ou use um prompt que dependa do contexto de remetente; ele deve usar as informações disponíveis do canal.

---

## 6. Referências

- [Group Messages (OpenClaw)](https://docs.openclaw.ai/channels/group-messages)
- [Configuration Reference](https://docs.openclaw.ai/gateway/configuration-reference)
- Config local do OpenClaw: `~/.openclaw/openclaw.json`
