# Briefing — Criar Anúncios Manualmente | Benditta Fase 2 | Abr 2026

**Para:** Igor / Mateus Scopel
**Data:** 15/04/2026
**Prazo:** ativar até 17/04/2026

---

## Contexto

Campanha, conjuntos de anúncios e formulários **já foram criados via API**.
Faltam apenas os 2 anúncios finais — fazer diretamente no Gerenciador.

---

## Acesso

```
https://adsmanager.facebook.com/adsmanager/manage/campaigns?act=763660518134498
```

---

## Estrutura já criada (não recriar)

| O quê | Nome | ID |
|-------|------|----|
| Campanha | Benditta \| Linha Essencial \| Fase 2 \| Abr2026 — 0415202123 | `120241798663620353` |
| Conjunto — Cliente Final | Benditta LE \| Cliente Final \| RMPA+Litoral — 0415202123 | `120241798663800353` |
| Conjunto — Arquitetos | Benditta LE \| Arquitetos \| RMPA+Litoral — 0415202123 | `120241798664090353` |
| Formulário — Cliente Final | Benditta LE — Cliente Final — Abr2026 — 0415202123 | `1428224111958811` |
| Formulário — Arquitetos | Benditta LE — Arquitetos — Abr2026 — 0415202123 | `1537753711101879` |

**Budget:** R$50/dia total (R$25 por conjunto) · Período: 17/04 → 30/04/2026

---

## O que falta criar: 2 anúncios

---

### Anúncio 1 — Cliente Final

**Onde criar:** conjunto `Benditta LE | Cliente Final | RMPA+Litoral — 0415202123`

**Nome do anúncio:**
```
BEN | LE | VD04 | Cliente Final | Abr2026
```

**Formato:** Vídeo único

**Vídeo:** `BEN_VD_04 - Quando voce comeca um projeto completo.mov`
→ Selecionar na Biblioteca de Mídia (já está carregado na conta)

**Texto principal (primary text):**
```
Cansou de reforma que vira projeto sem fim?
A Linha Essencial Benditta foi criada para quem quer qualidade, prazo previsível e investimento claro desde o início.
Curadoria inteligente · escolhas técnicas validadas · sem retrabalho.
📍 Região Metropolitana de Porto Alegre e Litoral RS
```

**Título (headline):**
```
O essencial bem feito
```

**Descrição (opcional — aparece em alguns posicionamentos):**
```
Solicite sua análise de ambiente sem compromisso.
```

**CTA:** `Cadastrar-se`

**Destino:** Formulário instantâneo → selecionar **"Benditta LE — Cliente Final — Abr2026 — 0415202123"**

**Posicionamentos:** Instagram apenas → Feed, Reels, Stories

**Status ao salvar:** Pausado ⏸

---

### Anúncio 2 — Arquitetos

**Onde criar:** conjunto `Benditta LE | Arquitetos | RMPA+Litoral — 0415202123`

**Nome do anúncio:**
```
BEN | LE | VD03 | Arquitetos | Abr2026
```

**Formato:** Vídeo único

**Vídeo:** `BEN_VD_03 - Quando o projeto e bem pensando.mov`
→ Selecionar na Biblioteca de Mídia (já está carregado na conta)

**Texto principal (primary text):**
```
Fidelidade técnica. Entrega previsível. Parceria sem improviso.
A Benditta executa exatamente o que foi projetado — sem alterar conceito, sem surpresa no prazo.
Linha Essencial · exclusivo para arquitetos e designers de interiores.
📍 Região Metropolitana de Porto Alegre e Litoral RS
```

**Título (headline):**
```
Execução que respeita o seu projeto
```

**Descrição (opcional):**
```
Envie seu projeto para análise técnica gratuita.
```

**CTA:** `Saiba mais`

**Destino:** Formulário instantâneo → selecionar **"Benditta LE — Arquitetos — Abr2026 — 0415202123"**

**Posicionamentos:** Instagram apenas → Feed, Reels, Stories

**Status ao salvar:** Pausado ⏸

---

## UTM e rastreamento

Esta campanha usa **formulário nativo do Instagram** — não há URL de destino, então UTMs convencionais (na URL) não se aplicam.

O rastreamento é feito pelo próprio Meta Ads Manager:
- Relatório → filtrar por Campanha → Ad Set → Anúncio
- Ao baixar os leads (CSV): colunas `ad_name` e `adset_name` identificam a origem de cada lead
- Futuramente podemos adicionar campos ocultos no formulário com `utm_campaign`, `utm_content` etc.

**Para este ciclo:** ao receber leads no CRM/planilha, basta filtrar pelo nome do formulário para saber o público.

---

## Checklist antes de ativar

- [ ] Preview Anúncio 1 (Cliente Final): vídeo carregando + formulário abrindo + campos corretos
- [ ] Preview Anúncio 2 (Arquitetos): vídeo carregando + formulário abrindo + campos corretos
- [ ] Posicionamentos: somente Instagram (Feed, Reels, Stories)
- [ ] Geo: Porto Alegre +40km + Torres +50km
- [ ] Idade: 30–45 anos
- [ ] Budget: R$25/dia por conjunto (R$50/dia total)
- [ ] Período: 17/04/2026 → 30/04/2026
- [ ] **Ativar** os 2 anúncios e os 2 conjuntos após aprovação do Rodrigo

---

## Se os vídeos não aparecerem na biblioteca

Os vídeos estão carregados na conta com IDs:
- VD03 (Arquitetos): `1483771220427043`
- VD04 (Cliente Final): `962407639593956`

Se não aparecerem na busca da biblioteca, os originais estão no Drive:
> Pasta Drive ID: `128YsEU3UrbBfM4v-7IMnlOD0_AI969BO`
