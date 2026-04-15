# scripts/meta-ads

Scripts de criação e gestão de campanhas Meta Ads via Marketing API.
Rodam na VPS da Adventure Labs, onde o token de sistema já está configurado no Infisical.

## Pré-requisitos (VPS)

```bash
pip3 install requests
# rclone com remote gdrive-adventure: já configurado
```

## Scripts disponíveis

| Script | O que faz |
|--------|-----------|
| `create_campaign_benditta_fase2.py` | Cria campanha completa Benditta Linha Essencial Fase 2 (Abr/2026) |
| `monitor_meta_insights.py` _(em construção)_ | Coleta insights semanais + envia relatório ao AM |

---

## create_campaign_benditta_fase2.py

### Setup do token

```bash
# Na VPS, exportar token do Infisical:
export META_SYSTEM_USER_TOKEN=$(infisical secrets get META_SYSTEM_USER_TOKEN --plain)

# Ou se o token tem outro nome no Infisical, ajustar:
export META_SYSTEM_USER_TOKEN=$(infisical secrets get META_ACCESS_TOKEN --plain)
```

### Rodar

```bash
# 1. Verificar config sem chamar API:
python3 create_campaign_benditta_fase2.py --dry-run

# 2. Criar só os formulários (para revisar no Gerenciador antes):
python3 create_campaign_benditta_fase2.py --only-forms

# 3. Criar campanha completa:
python3 create_campaign_benditta_fase2.py

# 4. Helper: buscar city keys para geo targeting:
python3 create_campaign_benditta_fase2.py --search-geo "Porto Alegre"
python3 create_campaign_benditta_fase2.py --search-geo "Torres"
python3 create_campaign_benditta_fase2.py --search-geo "Tramandai"
```

### O que cria

```
Campanha CBO (PAUSED)
├── Ad Set: Cliente Final (Vídeo 4, formulário com filtro de orçamento)
│   └── Geo: Porto Alegre +40km + Torres +50km | Idade: 30-45
└── Ad Set: Arquitetos (Vídeo 3, formulário com ticket médio)
    └── Geo: Porto Alegre +40km + Torres +50km | Idade: 30-45

Formulários Lead Ads (2x):
  - Cliente Final: nome, email, tel, tem projeto?, quantos ambientes?, orçamento?
  - Arquitetos: nome, email, tel, projetos/ano?, ticket médio?
  (após envio → abre WhatsApp com mensagem pré-preenchida para Laís Lima)
```

### Após rodar

1. Revisar no Gerenciador de Anúncios
2. Verificar preview dos formulários
3. Checar geo targeting no preview
4. **Ativar manualmente** — o script deixa tudo PAUSED propositalmente

### IDs gerados

Salvos automaticamente em `benditta_campaign_ids.json` (gitignored).

---

## ⚠️ Notas de segurança

- `benditta_campaign_ids.json` → gitignored (IDs de campanha não são segredos, mas evita exposição desnecessária)
- Nunca hardcodar o access token no script — usar env var / Infisical
- O token de sistema Meta deve ter escopos: `ads_management`, `ads_read`, `leads_retrieval`
