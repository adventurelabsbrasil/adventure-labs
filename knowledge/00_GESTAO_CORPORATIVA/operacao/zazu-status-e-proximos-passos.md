# Zazu — Status da ferramenta e próximos passos

**Domínio:** 00_GESTAO_CORPORATIVA | **Ferramenta:** adv_zazu (Zazu / Worker WhatsApp)  
**Última atualização:** 2026-03

Este documento registra **o que foi feito** na implementação do Zazu e **o que falta fazer** para uso completo (n8n + founder reports).

---

## O que foi feito

### Worker (adv-zazu-whatsapp-worker)

- [x] Repositório próprio no GitHub: **adventurelabsbrasil/adv-zazu-whatsapp-worker**
- [x] Localmente no monorepo como submodule: `01_ADVENTURE_LABS/apps/whatsapp-worker`
- [x] Deploy no Railway como serviço separado (Dockerfile com dependências Chromium)
- [x] Variáveis: `SESSION_PATH=/data`, volume persistente para sessão WhatsApp
- [x] **Porta:** Configuração no Railway ajustada para **8080** (porta injetada pelo Railway); evita 502 Bad Gateway
- [x] Primeiro login: QR escaneado (via URL do worker `/qr` ou dashboard Admin)
- [x] WhatsApp **conectado** em produção (sessão persistida no volume)
- [x] API do worker: `GET /`, `/health`, `/qr`, `/qr.json`, `/groups`, `/daily-messages?date=YYYY-MM-DD`
- [x] Em produção não imprime QR em ANSI nos logs; redireciona para GET /qr ou dashboard Admin
- [x] Resposta pequena em `/qr.json` (retorna `qrUrl: "/qr"`) para evitar 502 por payload grande no proxy
- [x] Try/catch em rotas críticas e `server.on("error")` no listen

### Admin (Vercel)

- [x] Variável **WHATSAPP_WORKER_URL** configurada (URL pública do worker no Railway)
- [x] Página **Dashboard → Zazu (WhatsApp)** com:
  - Status de conexão (conectado / aguardando QR / erro)
  - Exibição do QR: API extrai data URL da página `/qr` do worker e devolve em `qr` para o frontend exibir a imagem
  - Seção **Grupos para leitura diária**: listar grupos, marcar, copiar IDs
- [x] Rotas de API:
  - `GET /api/admin/zazu-qr` — proxy para status e QR do worker (timeout 30s)
  - `GET /api/admin/zazu-qr-page` — proxy da página HTML do QR (para iframe fallback)
  - `GET /api/admin/zazu-groups` — proxy para `GET /groups` do worker (timeout 45s)
- [x] Documentação: `apps/admin/docs/SETUP_ZAZU_RAILWAY_E_N8N.md` (guia passo a passo, incluindo nota sobre porta 8080)

### Registro e conhecimento

- [x] Registro do agente: `apps/admin/context/00_GESTAO/registro-adv-zazu-2026-03.md`
- [x] Processo: `knowledge/00_GESTAO_CORPORATIVA/processos/whatsapp-grupos-resumo-diario-cpo.md`
- [x] Este documento de status: `knowledge/00_GESTAO_CORPORATIVA/operacao/zazu-status-e-proximos-passos.md`

---

## O que falta fazer

### 1. Definir grupos no worker (Railway)

- [ ] No **Admin** → Dashboard → Zazu: usar a lista de grupos, marcar os desejados e **Copiar IDs**
- [ ] No **Railway** → serviço **adv-zazu-whatsapp-worker** → **Variables**: criar/editar **WHATSAPP_GROUP_IDS** (ou **WHATSAPP_GROUP_NAMES**) com os IDs/nomes copiados
- [ ] Redeploy do worker se necessário para aplicar variáveis

Referência de grupos desejados no registro: `apps/admin/context/00_GESTAO/registro-adv-zazu-2026-03.md` (sec. Grupos no fluxo).

### 2. n8n (Railway)

- [ ] Variável **WHATSAPP_WORKER_URL** no n8n = URL do worker (ex.: `https://adv-zazu-whatsapp-worker-production.up.railway.app`)
- [ ] Credencial **Header Auth** para o Admin: nome ex. "Admin CRON (Zazu)", header `x-admin-key`, valor = **CRON_SECRET** do Admin (Vercel)
- [ ] Importar workflow Zazu: `apps/admin/n8n_workflows/whatsapp_groups_agent/whatsapp-groups-daily-v1.json` (via script `./apps/admin/scripts/n8n/import-to-railway.sh` ou import manual)
- [ ] No workflow: associar a credencial ao nó que faz **POST Founder Report**
- [ ] **Ativar** o workflow (toggle Active)

### 3. Teste de ponta a ponta

- [ ] No n8n: **Execute Workflow** manual no fluxo Zazu
- [ ] Verificar no **Admin** (área de founder reports / relatórios) se aparece um novo relatório do tipo "WhatsApp Grupos — resumo DD/MM/YYYY"
- [ ] Confirmar que o Cagan (CPO) e o C-Suite passam a ter acesso a esse resumo no contexto

### 4. Opcional

- [ ] Arquivamento em `adv_whatsapp_daily` (se quiser histórico por grupo/data): ver `apps/admin/n8n_workflows/whatsapp_groups_agent/README.md` e endpoint `POST /api/cron/whatsapp-daily`
- [ ] Atualizar `registro-adv-zazu-2026-03.md` com a URL final do worker em produção na linha `WHATSAPP_WORKER_URL=` (se ainda não preenchida)

---

## Referências rápidas

| Item | Local |
|------|--------|
| Guia de setup | `apps/admin/docs/SETUP_ZAZU_RAILWAY_E_N8N.md` |
| Registro do agente | `apps/admin/context/00_GESTAO/registro-adv-zazu-2026-03.md` |
| Processo (Cagan/CPO) | `knowledge/00_GESTAO_CORPORATIVA/processos/whatsapp-grupos-resumo-diario-cpo.md` |
| Worker (repo) | [adventurelabsbrasil/adv-zazu-whatsapp-worker](https://github.com/adventurelabsbrasil/adv-zazu-whatsapp-worker) |
| Worker (local) | `01_ADVENTURE_LABS/apps/whatsapp-worker` (submodule) |
| Workflow n8n | `apps/admin/n8n_workflows/whatsapp_groups_agent/whatsapp-groups-daily-v1.json` |
