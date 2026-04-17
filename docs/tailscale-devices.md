# Tailscale Devices - Adventure Labs
**Atualizado em:** 2026-04-17
**Gerenciado por:** Buzz (OpenClaw)

---

## 📋 Devices Ativos

| Hostname                  | IP Tailscale      | Tipo               | Status | Uso Recomendado                     |
|---------------------------|-------------------|--------------------|--------|-------------------------------------|
| macbook-air-de-rodrigo    | 100.100.135.7     | MacBook Air        | ✅     | Desenvolvimento local, SSH tunnels  |
| asus-vivobook-mkt-young   | 100.88.53.20      | Notebook ASUS      | ✅     | Operações Young, acesso interno     |
| beelinkt4-pro-young       | 100.69.141.1      | Mini PC Beelink    | ✅     | N8n, Evolution API, serviços locais |
| hostinger                 | 100.122.165.119   | VPS (Hostinger)    | ✅     | **Produção**: OpenClaw, Hivemind    |
| iphone-15-pro-max         | 100.114.25.102    | iPhone 15 Pro Max  | ✅     | Acesso móvel, alertas               |
| moto-g52                  | 100.114.67.1      | Moto G52           | ✅     | WhatsApp Business (Evolution API)   |

---

## 🔐 Regras de Segurança
1. **Acesso SSH**:
   - Somente via Tailscale (IPs 100.x.y.z).
   - Exemplo: `ssh root@100.122.165.119` (hostinger).
2. **Portas expostas**:
   - Nenhuma porta da VPS deve ser exposta publicamente.
   - Use `tailscale serve` ou `tailscale funnel` para serviços web.
3. **Autenticação**:
   - Todos os devices devem usar autenticação por e-mail (Adventure Labs) ou chave SSH.

---

## 🛠 Comandos Úteis
```bash
# Listar devices conectados
tailscale status

# Verificar rotas
tailscale debug routes

# Reiniciar Tailscale
sudo systemctl restart tailscaled
```

---

## 📌 Pendências
- [ ] Adicionar `moto-g52` ao Evolution API (WhatsApp Business).
- [ ] Configurar `tailscale funnel` para o Metabase (bi.adventurelabs.com.br).
- [ ] Documentar processo de onboarding para novos devices.