# Decisões registradas — OpenClaw híbrido (Fase 0)

**Data:** 2026-03-17  
**Escopo:** execução do plano em [ARQUITETURA_OPENCLAW_HIBRIDO.md](./ARQUITETURA_OPENCLAW_HIBRIDO.md).

## 1. Gateway no Railway (repo vs template)

| Opção | Descrição |
|-------|-----------|
| **A** | Repo minimalista `openclaw-gateway-runner` só com `npm start` → `openclaw gateway start`. |
| **B** | Template oficial **OpenClaw — Complete Setup** no Railway + Volume `/data`. |

**Decisão adotada:** **B como padrão.** O template já entrega gateway 24/7, `/healthz`, Control UI e persistência. Ver [tools/openclaw/RAILWAY.md](../tools/openclaw/RAILWAY.md).

**Quando usar A:** se no futuro for necessário imagem própria, Nixpacks a partir do monorepo ou CI dedicado — ver runner de referência em [tools/openclaw/openclaw-gateway-railway/README.md](../tools/openclaw/openclaw-gateway-railway/README.md).

## 2. `adv_founder_reports` ↔ `adv_csuite_memory`

| Fonte | Papel |
|-------|--------|
| `adv_founder_reports` | Continua **canônica** para Diário da Equipe (`/dashboard/relatorio`) e para o nó **Fetch Founder Reports** do C-Suite (últimos 7 dias). |
| `adv_csuite_memory` | Recebe espelho **opcional** com `metadata.type = founder_csuite_daily` quando o caller envia `csuite_memory` no POST `/api/csuite/founder-report` (ex.: Zazu). |

**Decisão:** **dual-write seletivo** — apenas fluxos que enviam `csuite_memory` gravam também na memória vetorial/histórica. Lara e outros relatórios podem continuar só em `adv_founder_reports` até haver necessidade de unificar.

## 3. Governança (Grove)

- Demandas de TI desta iniciativa: registrar em **adv_tasks** (tipo Desenvolvimento) e **issue no GitHub** com vínculo na tarefa.
- Sugestão de título da issue: `OpenClaw híbrido — gateway Railway + memória diária Zazu`.

## 4. Referências

- Contrato JSON de `metadata`: [ADV_CSUITE_MEMORY_METADATA.md](./ADV_CSUITE_MEMORY_METADATA.md)
- Escopo Supabase para processos cloud: [SUPABASE_ROLES_MATRIZ_ACESSOS.md](./SUPABASE_ROLES_MATRIZ_ACESSOS.md) (seção OpenClaw cloud)
