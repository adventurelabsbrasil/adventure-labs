# ACORE — Validação E2E SDR Wizard (anon + authenticated)

Objetivo: fechar o P0 de validação ponta a ponta do fluxo SDR com evidências rastreáveis em Asana/Backlog.

## Escopo técnico validado neste roteiro

- Função Edge: `apps/core/adventure/supabase/functions/sdr-wizard-submit/index.ts`
- Tabela e RLS: `supabase/migrations/20260324140000_sdr_wizard_leads.sql`
- Ajuste de insert autenticado: `supabase/migrations/20260325095141_conversion_forms_authenticated_insert.sql`

## Critério de pronto (DOD)

- [ ] Cenário `anon` retorna `200` com `{ ok: true, id }`.
- [ ] Cenário `authenticated` retorna `200` com `{ ok: true, id }`.
- [ ] Lead inserido em `sdr_wizard_leads` com `tenant_id`, `score`, `qualification_tier` e UTM esperados.
- [ ] Sem erro de RLS para leitura operacional do tenant.
- [ ] Evidências anexadas no Asana (payload mascarado + response + query de conferência).

## Payload de referência (mascarado)

```json
{
  "tenant_id": "00000000-0000-0000-0000-000000000000",
  "source_page": "landing_martech_sdr",
  "name": "Lead Teste",
  "email": "lead.teste@example.com",
  "phone": "+55 51 99999-9999",
  "role": "Founder",
  "monthly_revenue": "100k_300k",
  "current_challenge": "Escalar aquisição com previsibilidade",
  "company_website": "https://example.com",
  "data_consent": true,
  "score": 87,
  "qualification_tier": "A",
  "qualification_label": "Alta aderência",
  "tags": ["icp", "martech", "sdr"],
  "conversation_log": { "steps": 6, "channel": "web" },
  "landing_path": "/landing/martech",
  "page_referrer": "https://google.com",
  "utm_source": "google",
  "utm_medium": "cpc",
  "utm_campaign": "acore_sdr_e2e",
  "utm_content": "ad_01",
  "utm_term": "martech sdr"
}
```

## Execução sugerida

1. Rodar POST no endpoint da função com payload acima (ajustar apenas `tenant_id` e endpoint do ambiente).
2. Repetir teste em sessão autenticada.
3. Conferir insert no banco (`sdr_wizard_leads`) e consistência de campos.
4. Anexar evidências no card Asana e atualizar `docs/BACKLOG.md`.

## Evidências mínimas

- Response HTTP (status + body) dos 2 cenários.
- ID dos registros inseridos.
- Print/trecho de query confirmando `tenant_id` e `created_at`.
- Link do card Asana atualizado com conclusão da validação.

## Observações

- Não versionar token/chaves/PII nas evidências.
- Em falha, registrar erro literal da função (`Falha ao salvar lead`, `Campos obrigatórios ausentes`, etc.) e abrir ação corretiva no Asana.
