# Processo: Relatório Founder → Organização Grove → Context + App

Documento oficial que define como o Founder (Rodrigo) entrega um "brain dump" ou relatório e o Grove (CEO Agent) organiza a informação, estrutura processos e reflete no contexto e no App Admin.

---

## 1. Objetivo

- **Entrada:** Um doc (Markdown ou texto) com tudo que está na sua cabeça: decisões, clientes, projetos, processos, ideias, pendências, métricas desejadas, etc.
- **Saída:** Informação estruturada no `/context` (taxonomia 00–99), processos documentados, e quando aplicável: dados ou fluxos refletidos no App Admin (clientes, projetos, Kanban, novas telas ou campos).

---

## 2. Onde colocar o relatório

| Opção | Uso |
|-------|-----|
| **App Admin → Relatório** | No painel, vá em **Relatório / Brain dump**, digite o texto ou envie um arquivo .md/.txt e clique em **Adicionar relatório**. Depois abra **Ver / Feedback** no relatório para colar o feedback do Grove. |
| **Arquivo em `context/99_ARQUIVO/`** | Crie um `.md` (ex.: `relatorio-YYYY-MM-DD.md` ou `brain-dump-[tema].md`) e referencie no chat com **@arquivo**. |
| **Colar no chat** | Cole o texto diretamente na conversa e peça: "Organize este relatório e estruture para o context e para o app." |
| **Google Docs / link** | Se o conteúdo estiver em link externo, copie e cole no chat ou exporte para .md e coloque em `99_ARQUIVO`. |

**Template sugerido:** Use `context/99_ARQUIVO/relatorio-founder-TEMPLATE.md` como ponto de partida (opcional; o doc pode ser livre).

---

## 3. O que o Grove faz com o relatório

1. **Leitura e classificação**  
   Identifica: processos, decisões, clientes, projetos, métricas, próximos passos, riscos, ideias.

2. **Estruturação no `/context`**  
   - **00_GESTAO_CORPORATIVA:** processos, pessoas, decisões, próximos passos.  
   - **01_COMERCIAL:** pipeline, propostas, CRM.  
   - **02_MARKETING:** campanhas, canais, KPIs.  
   - **03_PROJETOS_INTERNOS:** projetos internos, entregas.  
   - **04_PROJETOS_DE_CLIENTES:** por cliente, escopo, status.  
   - **05_LABORATORIO:** experimentos, testes.  
   - **06_CONHECIMENTO:** manuais, POPs, aprendizados.  
   - **99_ARQUIVO:** relatórios brutos arquivados (opcional).

3. **Reflexo no App**  
   - **Clientes / Projetos:** se o relatório trouxer nomes, status, etapas, o Grove pode propor SQL de seed, uso do script de import (CSV) ou instruções para cadastro manual.  
   - **Novos fluxos ou campos:** se surgir necessidade de novo tipo de dado, etapa no Kanban ou tela, o Grove propõe alterações (migrations, componentes) e implementa após sua confirmação (regra de sobrescrita).

4. **Resumo executivo**  
   O Grove devolve um resumo do que foi criado/atualizado (lista de arquivos, mudanças no app, ações sugeridas).

---

## 4. Regras (protocolo de IA)

- **Sem sobrescrita sem confirmação:** Se alguma informação do relatório conflitar com documento ou dado já existente, o Grove para, mostra o existente e pergunta: Substituir, Manter antiga ou Mesclar.  
- **Multitenant:** Qualquer dado que vá para o Supabase deve respeitar RLS e filtros por `tenant_id` / `client_id`.  
- **Rastreabilidade:** Novos arquivos em `/context` devem ter data (no nome ou no topo do doc) e, se relevante, referência ao relatório de origem.

---

## 5. Fluxo resumido

```
[Você] Redige o doc (livre ou pelo template)
    ↓
[Você] Envia no chat (cola ou @arquivo em 99_ARQUIVO)
    ↓
[Grove] Lê, classifica, estrutura
    ↓
[Grove] Cria/atualiza arquivos em /context (00–99)
    ↓
[Grove] Se aplicável: propõe/implementa mudanças no App (dados, migrations, UI)
    ↓
[Grove] Entrega resumo e próximas ações
```

---

## 6. Onde isso aparece no App

No painel Admin, a seção **Relatório / Brain dump** (Dashboard → Relatório) permite **digitar o relatório diretamente** ou **enviar um arquivo .md/.txt**; ao adicionar, o relatório fica salvo e você pode abrir **Ver / Feedback** para ver o conteúdo e colar o feedback do Grove após processar no Cursor. A mesma página explica o fluxo e aponta para o template e para este documento.

---

*Última atualização: 2025-03-02. Responsável: Grove (CEO Agent).*
