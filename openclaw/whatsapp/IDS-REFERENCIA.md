# IDs de referência (OpenClaw / canais)

Usar em allowlist, groupAllowFrom, etc., quando for configurar quem pode falar com o bot.

## Telegram

| Conta     | User ID    | Uso |
|----------|------------|-----|
| Founder (Rodrigo) | `1069502175` | allowFrom / groupAllowFrom para DMs e grupos |
| Igor | `801477379` | groupAllowFrom para acionar o bot no grupo Comando Estelar |

Exemplo de config (CLI):

```bash
# Permitir só este ID em DMs Telegram
openclaw config set 'channels.telegram.allowFrom' '[1069502175]' --strict-json

# Permitir só este ID para acionar o bot em grupos
openclaw config set channels.telegram.groupPolicy allowlist
openclaw config set 'channels.telegram.groupAllowFrom' '[1069502175]' --strict-json
```

### Bot no grupo "Comando Estelar" (interagir com Igor)

Para o **@adv_openclaw_bot** poder participar do grupo "Comando Estelar" e responder quando o Igor (ou outros) mencionarem o bot:

1. **Adicionar o bot ao grupo**  
   Um admin do grupo "Comando Estelar" no Telegram deve **adicionar o @adv_openclaw_bot** ao grupo (Add Members → procurar por @adv_openclaw_bot).

2. **Configurar o OpenClaw para grupos**  
   No servidor onde o OpenClaw roda (local ou Railway), a config do canal Telegram precisa permitir grupos. Duas opções:
   - **Qualquer grupo, só quando mencionado:**  
     `groupPolicy: "open"` e `groups: { "*": { "requireMention": true } }` — o bot responde em qualquer grupo em que estiver quando for mencionado (@adv_openclaw_bot).
   - **Só pessoas da allowlist acionam em grupos:**  
     Manter `groupPolicy: "allowlist"` e incluir o **Telegram User ID do Igor** em `groupAllowFrom` (além do Rodrigo). Para descobrir o ID do Igor: ele pode mandar uma mensagem para [@userinfobot](https://t.me/userinfobot) no Telegram; o bot devolve o numeric ID.

3. **Onde editar**  
   - **Local:** `~/.openclaw/openclaw.json` → secção `channels.telegram`.  
   - **Railway:** a config fica no Volume em `/data/.openclaw/openclaw.json`; é preciso editar via backup/restore ou o que o template permitir.

Para permitir Rodrigo e Igor acionarem o bot em grupos:

```bash
openclaw config set 'channels.telegram.groupAllowFrom' '[1069502175, 801477379]' --strict-json
```

Reiniciar o gateway após alterar a config.

---

*Não incluir tokens ou senhas aqui; apenas IDs públicos.*
