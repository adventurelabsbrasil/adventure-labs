---
title: Benditta — contexto Linha Essencial (origem + campanhas)
domain: projetos_clientes
tags: [benditta, linha-essencial, meta, whatsapp, drive, rclone]
updated: 2026-03-24
---

# Benditta — contexto da Linha Essencial

Este ficheiro **regista a narrativa operacional** do arranque da **Linha Essencial** (tráfego Meta + criativos/editorial) e liga-se ao export das **conversas do grupo WhatsApp** no **Google Drive**.

## Auditoria de varredura

- **Última varredura:** 2026-03-24
- **Responsável pela síntese:** humano + agente (histórico do projeto)
- **Escopo da leitura:** export WhatsApp do grupo Adventure/Benditta e materiais relacionados no Drive
- **Método:** síntese operacional em markdown com higienização de PII, mantendo bruto fora do Git

## Contexto comercial da contratação

- **Origem da oportunidade:** indicação de **Guilherme Emerim** e **Charles Simon** (ex-sócios do Founder no Lidera).
- **Relação prévia:** a Benditta já conhecia o Founder antes da indicação.
- **Contrato vigente:** fee mensal de **R$ 2.000**.
- **Escopo contratado:** **teste de 3 meses** de tráfego no plano Essencial, com **Meta Ads + Google Ads**.

## Referências operacionais (preencher/manter)

- **Asana (projeto):** `[PREENCHER_URL_ASANA_BENDITTA]`
- **Drive (pasta principal):** `[PREENCHER_URL_DRIVE_BENDITTA]`
- **Google Ads (Customer ID):** `[PREENCHER_CUSTOMER_ID_GOOGLE]`
- **Meta Ads (Ad Account ID):** `[PREENCHER_AD_ACCOUNT_META]`

## Governança de dados

- Não registrar segredos/token em markdown do repo.
- **Infisical:** armazenar credenciais e variáveis sensíveis do projeto.
- **Supabase (registry):** usar para IDs/metadados operacionais quando houver necessidade de consulta estruturada por agentes.

## Fonte no Google Drive (conversas do grupo)

- **Caminho canónico (taxonomia `04_PROJETOS_DE_CLIENTES`):**  
  `05_BENDITTA/Wapp_Export/WhatsApp Chat - Adventure | Benditta 2/`  
  Ficheiro principal do texto: **`_chat.txt`** (anexos: vídeos, imagens, áudios na mesma pasta).

### Acesso via rclone (máquina com remote configurado)

Na raiz do Drive espelhada como `mydrive:` (ver [os-registry §13.1](../../06_CONHECIMENTO/os-registry/INDEX.md)):

```bash
rclone cat "mydrive:04_PROJETOS_DE_CLIENTES/05_BENDITTA/Wapp_Export/WhatsApp Chat - Adventure | Benditta 2/_chat.txt" | less
# Cópia local só em pasta ignorada pelo Git, ex.:
# rclone copy "mydrive:.../_chat.txt" "_internal/temp/benditta-wapp/"
```

**Segurança crítica:** nas **primeiras linhas** do export analisado (fev/2026) aparecem **credenciais de acesso ao WordPress** em texto claro. **Ação:** (1) **rotacionar password** e ativar 2FA se disponível; (2) **não** partilhar este export sem remover essas linhas; (3) **nunca** commitar `_chat.txt` bruto no Git.

**LGPD e Git:** não versionar export bruto de chats. Este documento contém apenas **síntese** operacional.

---

## Síntese do início do projeto (linha do tempo resumida)

| Período | O que aconteceu |
|---------|------------------|
| **Fev/2026** | Grupo **Adventure \| Benditta** criado; envio de PDFs (funil 3 etapas, persona, apresentação Linha Essencial, resumo reunião); Founder partilha pasta Drive para **criativos** (pedir acesso edição pelos emails corretos). |
| **27/02** | **Ellen (Benditta):** pedido explícito de materiais mais focados em **projeto técnico de marcenaria** para quem **ainda não tem projeto** (ex.: apartamento vazio, projeto + execução, vantagens Linha Essencial), sem medo do termo face a arquitetos parceiros; social media a iniciar produção. **Rodrigo:** concorda e antecipa saldo Meta. |
| **02–05/03** | **Lisa** acha scripts iniciais confusos para tráfego; entra análise longa (IA + roteiros topo/meio/fundo para quem **já tem projeto**); discussão alinhamento com estratégia Founder (**topo primeiro**, depois remarketing — produto novo). **Rodrigo** envia link **cronograma editorial** (Google Sheet) para análise. |
| **05–06/03** | **Ellen** devolve feedback visual (tipografia, espaçamento, logo no final). **Igor** edita vídeo; **001_v3** aprovado para veicular; CTA com **número comercial** (vcf no grupo). |
| **06/03** | Proposta de **mensagem automática WhatsApp** comercial (tom mais neutro e recolhido; pergunta orientada a **projeto**). **Orçamento:** cliente sugere início **R$ 500**; Founder gera **PIX**; meta **~15 dias** de veiculação, métrica chave a partir de **~7 dias**. |
| **07–10/03** | Questão **página Facebook** obrigatória no Meta (URL antiga indisponível; possível criação de página só para veiculação). **09/03** campanha a arrancar ~9h. **Lisa:** muitos pedidos de orçamento **pequenos/reformas** — desejo de **filtro** até WhatsApp; Founder explica parte pode ser **partilhas**, não só lead Ads; pedido de **2 dias** de dados para separar lead real de campanha. **10/03:** ~**5** conversas atribuíveis ao estilo Ads vs **13** leads totais — necessidade de **mais criativos** e testes. |
| **11/03** | Founder **não confiante** no criativo atual; sugere **cards antes/depois** + headlines; vídeo **muito rápido** — acordo em desacelerar; **pausa** campanha fraca. **Igor** entrega vídeo **mais calmo**; ajuste **final com logo branca**; aprovado; autorização uso em **stories**. |
| **11–12/03** | Novo ângulo **arquitetos:** copy acordada (“execução técnica de alto nível…”, CTA envio de projeto para análise); Reels Instagram referenciado; pedido **capa** e **legenda** segura para **1:1** (evitar sobreposição UI). Vários assets de capa (fundo claro preferido). |
| **16–17/03** | Objetivo **Alcance** num vídeo + plano **remarketing** (>50% view); mensagem para Whats comercial; Founder trabalha **dashboard** Benditta. **17/03:** 3 leads — qualidade mista (**reforma / móvel único / BNI**); **definição:** interesse = **projetos completos**, não pequenos complementos. |
| **19–20/03** | **Primeira fase** não performou ao esperado; **saldo esgotado** — campanhas **pausadas**; proposta **reunião de revisão** + relatório + demo dashboard (vídeo no grupo). **Reunião** agendada (**terça manhã**, ~9h, **presencial** com opção Meet — detalhes no calendário / WhatsApp, não duplicar aqui). |

---

## Síntese das conversas (grupo) — decisões e alinhamentos

- **Público-alvo (dois eixos):** (1) Cliente com **projeto pronto** / quer **menos decisões técnicas** / execução segura — núcleo Linha Essencial. (2) **Arquitetos** — execução técnica alto nível; CTA: enviar projeto para análise. (3) **Pedido Ellen:** conteúdo também para quem **ainda não tem projeto** (apartamento vazio) com foco **projeto técnico** — Founder comprometeu material; **alinhar** com criativos em produção.
- **Funil / criativo:** consenso em **não ir só fundo** no início; **topo + remarketing**; vídeos precisam **gancho 3s**, qualificação explícita, diferenciar **Linha Essencial ≠ barata/simples** = **inteligência + processo + padrão Benditta**.
- **Operação comercial:** mensagem automática WhatsApp **revisada**; leads Ads identificados por **formato de mensagem** (incl. variante **Região Metropolitana vs Litoral**).
- **Qualificação (Lisa):** **não** priorizar reforma pequena, móvel único, complemento; foco **projeto completo**.
- **Governança de testes:** preferir **A/B** (criativo, público, canal), evitar campanha isolada sem segundo criativo quando possível.
- **Limitações técnicas Meta:** dependência de **página Facebook** válida; URL antiga Facebook referida como indisponível — tratar no runbook de mídia.

### Pendências lado Benditta

- Novos **criativos** (foto antes/depois, variações de vídeo, peça arquitetos com capa/legenda 1:1 conforme combinado).
- **Gravações** adicionais (ex.: Lisa mencionou gravar na **quarta seguinte** em momento do chat — confirmar calendário atual).
- Participação na **reunião de revisão** pós-primeira fase e decisão sobre **nova carga** (PIX) para retomar testes.

### Pendências lado Adventure

- **Relatório** primeira leva + **dashboard** (apresentação combinada no grupo).
- **Otimização** de segmentação/formulário ou copy de anúncio para **reduzir** pedidos fora do ICP (reforma pequena), sem matar volume — a discutir na reunião.
- Entregar material **projeto técnico / sem projeto** pedido pela Ellen (alinhado a copy aprovada).
- Manter **rastreio** lead Ads vs orgânico/partilha.

### Tom e mensagens úteis para anúncios (do grupo)

- **Dor:** projeto pronto mas **não** querer novo processo infinito de decisões técnicas.
- **Benefício:** curadoria técnica, menos escolhas, mais **segurança e agilidade**, padrão Benditta.
- **Headlines de exemplo (Founder):** antes/depois — “Seu projeto executado sem surpresas e com clareza no investimento”; “Tem projeto pronto e precisa executar?”
- **Arquitetos:** “Execução Técnica de Alto Nível para seus projetos de marcenaria” + linha “EXCLUSIVO PARA ARQUITETOS” + CTA análise técnica.

---

## Checklist campanha (Linha Essencial) — estado

1. [x] Grupo operacional + pasta criativos Drive + acessos.
2. [x] Primeira leva vídeo Motion aprovada e ajustada (ritmo, logo).
3. [x] Mensagem automática WhatsApp comercial alinhada.
4. [x] Orçamento inicial Meta carregado (PIX R$ 500 — valor histórico do chat).
5. [ ] **Reunião de revisão** pós-teste e decisão de **nova verba** / estrutura de campanha.
6. [ ] **Mais criativos** em paralelo para A/B (incl. estático antes/depois e peça arquitetos finalizada).
7. [ ] **Filtro de qualificação** (landing, pergunta no formulário, ou copy mais restritiva) — desenhar na revisão.
8. [ ] Material explícito **projeto técnico / público sem projeto** (pedido Ellen) — produção/copy Adventure + aprovação Benditta.
9. [ ] Cronograma editorial (Sheet): manter **validação Founder** ↔ cliente em sincronia com [entregas-por-cliente](../entregas-por-cliente-2026-03.md).

Roadmap técnico (API Meta, Supabase): [benditta-github-project-e-issues.md](../benditta-github-project-e-issues.md).

**Roadmap produto (futuro) — WhatsApp → código / RAG:** projeto Asana [1213788734243886](https://app.asana.com/1/1213725900473628/project/1213788734243886) (`[Roadmap] WhatsApp → código: RAG & contexto operacional`); piloto Benditta como tarefa **8)** no quadro.

---

## Manutenção

- Após novos exports WhatsApp no Drive, **atualizar** secção “linha do tempo” / pendências se o estado mudar.
- **Nunca** colar no Git linhas com passwords, PIX completos ou dados pessoais desnecessários.
