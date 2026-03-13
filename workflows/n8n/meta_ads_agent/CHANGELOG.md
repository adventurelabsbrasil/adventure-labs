# Changelog — Lara (Meta Ads Agent)

## [1.0.0] - 2026-03-11

### Added

- Workflow inicial: sync diário Meta Ads para Supabase.
- Gatilhos: Schedule (cron) e Webhook para disparo manual.
- Listagem de contas (`GET /api/meta/accounts`) e mapeamento (`GET /api/meta/mapping`).
- Insights por conta (`GET /api/meta/accounts/:id/insights?date_preset=yesterday`).
- Persistência em `adv_meta_ads_daily` via `POST /api/meta/daily` com `owner_type` (cliente | adventure).
