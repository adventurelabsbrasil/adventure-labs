---
title: Processo — Email em HTML para cliente (padrão Adventure Labs)
domain: gestao_corporativa
tags: [processo, email, cliente, comunicacao, html, gmail, apps-script]
updated: 2025-03-10
---

# Processo: Email em HTML para cliente (padrão Adventure Labs)

Documento oficial que define como criar, editar e enviar emails em HTML no padrão visual da Adventure Labs para comunicação com clientes (novas features, entregas, avisos). **Uso interno.** Futuramente pode virar automação a cada nova feature; por enquanto o fluxo é manual.

---

## 1. Objetivo

- **Entrada:** Conteúdo da mensagem (nova feature, entrega, etc.) e destinatário (cliente).
- **Saída:** Email em HTML estilizado (padrão Adventure Labs) enviado ao cliente via Gmail.
- **Restrição:** Gmail não permite colar HTML no corpo do email; usa-se **Google Apps Script** para enviar o HTML.

---

## 2. Ferramenta padrão — Google Apps Script

O projeto de Apps Script usado pela empresa para enviar esses emails em HTML é:

**Link do projeto (editar e executar):**  
[https://script.google.com/home/projects/1aSbBLJ6yReala70CkJpKcfLqrybLUd4Rr39uI6o9Fmy3FMz-naq0hfey/edit?hl=pt-br](https://script.google.com/home/projects/1aSbBLJ6yReala70CkJpKcfLqrybLUd4Rr39uI6o9Fmy3FMz-naq0hfey/edit?hl=pt-br)

- Quem for enviar precisa de **acesso ao projeto** (compartilhe o script com a conta que vai rodar).
- No script há uma variável com o **HTML do email** e constantes para **assunto** e **destinatário**.
- **Fluxo recomendado:** alterar o HTML (e opcionalmente assunto/destinatário) no script → executar a função `enviarParaMim` → abrir o Gmail, abrir o email recebido → **Encaminhar** para o cliente (o HTML é preservado).

---

## 3. Padrão visual Adventure Labs (HTML)

Para manter consistência, os emails para cliente devem seguir:

| Elemento | Padrão |
|----------|--------|
| **Largura máxima** | ~560px (tabela centralizada) |
| **Fundo geral** | `#f1f5f9` (cinza claro) |
| **Fundo do bloco principal** | `#ffffff` (branco) |
| **Fonte** | `Segoe UI`, system-ui, sans-serif |
| **Cor de destaque / CTA** | `#3b82f6` (azul) — bordas, títulos de caixa |
| **Títulos** | `#0f172a`, negrito, ~22px |
| **Texto corpo** | `#334155` ou `#475569`, ~14–15px |
| **Texto secundário** | `#64748b` |
| **Caixas de destaque** | Fundo `#f8fafc`, borda esquerda `4px solid #3b82f6`, `border-radius: 10px` |
| **“Pills” (formato, opções)** | Fundo `#f1f5f9`, `border-radius: 8px` |
| **Rodapé** | Borda superior `1px solid #e2e8f0`; assinatura “Equipe Adventure Labs” |

Estrutura sugerida do HTML (tabelas para compatibilidade com clientes de email):

- Tabela externa (100% width, fundo cinza).
- Tabela interna (max-width 560px, margin auto, fundo branco).
- Cabeçalho: label “Young Talents” / “Adventure Labs” + título + subtítulo.
- Corpo: parágrafos, uma tabela/caixa para “Onde usar” ou destaque, lista ou pills para opções, passos numerados.
- Rodapé: texto de fechamento + “Um abraço, Equipe Adventure Labs”.

---

## 4. Onde ficam os templates e a documentação

| Recurso | Local |
|---------|--------|
| **Processo (este doc)** | `knowledge/00_GESTAO_CORPORATIVA/processos/email-html-cliente-adventure-labs.md` |
| **Apps Script (código + HTML)** | [Projeto Apps Script](https://script.google.com/home/projects/1aSbBLJ6yReala70CkJpKcfLqrybLUd4Rr39uI6o9Fmy3FMz-naq0hfey/edit?hl=pt-br) — fonte canônica para “enviar agora”. |
| **Exemplo por cliente/projeto** | No repositório do cliente, em `docs/`: ex. `clients/04_young/young-talents/docs/email-cliente-export-candidatos.html` e `gmail-draft-html.js` (cópia do script com o HTML daquela feature). |
| **Instruções Gmail** | No projeto: `clients/04_young/young-talents/docs/gmail-enviar-html-email.md` (como enviar HTML pelo Gmail; referência reutilizável). |

Para **nova feature / novo cliente:** pode-se criar um novo `.html` em `clients/NN_cliente/projeto/docs/` no padrão acima e, no Apps Script da empresa, **substituir** a variável `HTML_DO_EMAIL` pelo conteúdo desse `.html` (ou manter um script por cliente/feature no repo e copiar o trecho HTML para o projeto compartilhado).

---

## 5. Passo a passo (resumo)

1. **Editar o email**
   - Abra o [projeto Apps Script](https://script.google.com/home/projects/1aSbBLJ6yReala70CkJpKcfLqrybLUd4Rr39uI6o9Fmy3FMz-naq0hfey/edit?hl=pt-br).
   - Ajuste a constante `ASSUNTO` (e, se for enviar direto, `DESTINATARIO`).
   - Substitua o conteúdo de `HTML_DO_EMAIL` pelo HTML desejado (use o padrão visual acima; pode partir de um `.html` em `clients/.../docs/`).

2. **Enviar para você mesmo**
   - Execute a função **`enviarParaMim`**.
   - Autorize o Gmail na primeira vez, se pedido.

3. **Encaminhar ao cliente**
   - Abra o Gmail → email recebido → **Encaminhar** → coloque o email do cliente → envie.

**Alternativa (envio direto):** defina `DESTINATARIO` no script e execute **`enviarParaCliente`** (recomendado só quando assunto e destinatário estiverem definidos).

---

## 6. Evolução futura (automação)

- **Hoje:** processo interno, manual (editar script → executar → encaminhar).
- **Futuro:** pode virar automação (ex.: a cada nova feature em um repo, gerar um rascunho ou email em HTML e notificar responsável para revisar e enviar). Quando houver automação, este processo será atualizado com o fluxo e as ferramentas (ex.: GitHub Actions, n8n, ou outro).

---

## 7. Referências rápidas

- **Exemplo completo (Young Talents — exportação de candidatos):**  
  `clients/04_young/young-talents/docs/email-cliente-export-candidatos.html`  
  `clients/04_young/young-talents/docs/gmail-draft-html.js`  
  `clients/04_young/young-talents/docs/gmail-enviar-html-email.md`

- **Apps Script (projeto compartilhado):**  
  [script.google.com — projeto Adventure Labs email HTML](https://script.google.com/home/projects/1aSbBLJ6yReala70CkJpKcfLqrybLUd4Rr39uI6o9Fmy3FMz-naq0hfey/edit?hl=pt-br)
