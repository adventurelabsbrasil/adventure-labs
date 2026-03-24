# 📘 Guia Completo - Google Apps Script para Firebase

## Visão Geral

Este script integra o Google Forms diretamente com o Firebase Firestore, enviando automaticamente os dados dos candidatos quando um formulário é preenchido.

**Projeto Firebase:** `talents-c856d`

## 🚀 Funcionalidades

1. **Gatilho Automático (`onFormSubmit`)**
   - Executa automaticamente quando um formulário é enviado
   - Processa e normaliza os dados
   - Verifica duplicatas antes de enviar
   - Envia diretamente para o Firebase Firestore

2. **Importação em Lotes (`importarEmLotes`)**
   - Importa dados históricos da planilha do Google Sheets
   - Processa em lotes de 400 registros
   - Verifica duplicatas automaticamente
   - Logs detalhados de progresso

3. **Verificação de Duplicatas**
   - Consulta Firebase por email antes de inserir
   - Evita duplicação de candidatos

4. **Normalização de Dados**
   - Cidades padronizadas (ex: "porto alegre" → "Porto Alegre/RS")
   - Fontes normalizadas (LinkedIn, Instagram, etc)
   - Áreas de interesse formatadas

## 📋 Pré-requisitos

1. Google Forms criado e configurado
2. Google Apps Script vinculado ao formulário
3. Service Account do Firebase configurado
4. Permissões do Service Account no Firebase IAM

## 🔧 Configuração Inicial

### Passo 1: Copiar Código para Apps Script

1. Abra o Google Forms
2. Clique em **Extensões** → **Apps Script**
3. Copie TODO o conteúdo de `assets/.APPSCRIPT.txt`
4. Cole no editor do Apps Script
5. Salve o projeto (Ctrl+S)

### Passo 2: Configurar Gatilho Automático

Execute a função `setupTriggers()` **UMA VEZ**:

1. No editor do Apps Script, selecione a função `setupTriggers`
2. Clique no botão ▶️ **Executar**
3. Autorize as permissões se solicitado
4. Verifique nos logs se o gatilho foi criado com sucesso

**Alternativa Manual:**
Se o gatilho automático não funcionar:

1. No editor do Apps Script, clique em **Editar** → **Gatilhos do projeto atual**
2. Clique em **Adicionar gatilho**
3. Configure:
   - **Função:** `onFormSubmit`
   - **Origem do evento:** `Do formulário`
   - **Tipo de evento:** `Ao enviar o formulário`
4. Salve

### Passo 3: Verificar Configuração do Firebase

O script já está configurado com:
- **Project ID:** `talents-c856d`
- **Service Account:** `firebase-adminsdk-fbsvc@talents-c856d.iam.gserviceaccount.com`

Se necessário alterar, edite as constantes no início do arquivo:
```javascript
const FIREBASE_CONFIG = {
  email: "seu-service-account@projeto.iam.gserviceaccount.com",
  key: "-----BEGIN PRIVATE KEY-----\n...",
  projectId: "seu-projeto-id"
};
```

### Passo 4: Configurar ID da Planilha (Para Importação)

Se você vai usar `importarEmLotes()`, atualize o ID da planilha:

```javascript
const SPREADSHEET_ID = "SEU_ID_DA_PLANILHA_AQUI";
```

**Como encontrar o ID:**
- Abra a planilha do Google Sheets
- Na URL, copie o ID (ex: `1DKJSelwLZkBag-1ORe-IXT2TVI0XpRpj-CIgR0oaIf0`)

## 📖 Uso das Funções

### 1. Envio Automático (Gatilho)

**O que faz:** Executa automaticamente quando um formulário é enviado

**Como usar:**
- Não precisa executar manualmente
- Funciona automaticamente após configurar o gatilho
- Cada novo envio do formulário será processado

**Logs:**
- Abra o editor do Apps Script
- Clique em **Execuções** (ícone do relógio)
- Veja os logs detalhados de cada envio

### 2. Importação em Lotes

**O que faz:** Importa todos os dados históricos da planilha para o Firebase

**Quando usar:**
- Para importar dados antigos que estão na planilha
- Quando quiser repovoar o Firebase com dados tratados

**Como executar:**
1. No editor do Apps Script, selecione a função `importarEmLotes`
2. Clique no botão ▶️ **Executar**
3. Aguarde o processamento (pode levar alguns minutos)
4. Acompanhe os logs para ver o progresso

**O que acontece:**
- Lê todas as linhas da planilha (exceto cabeçalho)
- Processa em lotes de 400 registros
- Verifica duplicatas por email antes de enviar
- Envia apenas candidatos novos
- Mostra resumo final: enviados, duplicatas, erros

**Tempo estimado:**
- ~1000 registros: ~3-5 minutos
- ~5000 registros: ~15-20 minutos

### 3. Teste de Envio

**O que faz:** Simula um envio de formulário para testar o código

**Como executar:**
1. Selecione a função `testeEnvio`
2. Clique em ▶️ **Executar**
3. Verifique os logs para ver se funcionou

**Útil para:**
- Verificar se as credenciais estão corretas
- Testar normalização de dados
- Verificar conexão com Firebase

## 🔍 Mapeamento de Campos

### Campos do Formulário → Firebase

| Campo do Form | Campo Firebase | Observações |
|--------------|----------------|-------------|
| Nome completo: | `fullName` | Obrigatório |
| E-mail principal: | `email` | Obrigatório, usado para duplicatas |
| Nº telefone celular / Whatsapp: | `phone` | |
| Cidade onde reside: | `city` | Normalizado (ex: "Porto Alegre/RS") |
| Data de Nascimento: | `birthDate` | Formatada como YYYY-MM-DD |
| Áreas de interesse profissional | `interestAreas` | String separada por vírgulas |
| Onde você nos encontrou? | `source` | Normalizado (LinkedIn, Instagram, etc) |
| Carimbo de data/hora | `original_timestamp` | Timestamp original do formulário |

### Campos Automáticos

| Campo | Valor | Descrição |
|-------|-------|-----------|
| `status` | `"Inscrito"` | Status inicial no pipeline |
| `createdAt` | ISO timestamp | Data de criação no Firebase |
| `tags` | `["Novo Inscrito"]` ou `["Importado CSV"]` | Tags para identificar origem |

## 🛠️ Normalizações Aplicadas

### Cidades

As seguintes variações são normalizadas para o formato padrão:

- `porto alegre`, `poa`, `porto alegre/rs` → `Porto Alegre/RS`
- `canoas`, `canoas/rs` → `Canoas/RS`
- `bagé`, `bage` → `Bagé/RS`
- `santo antônio da patrulha`, `sap` → `Santo Antônio da Patrulha/RS`
- E outras 10+ cidades principais

Cidades não listadas recebem `/RS` automaticamente se não tiverem estado.

### Fontes

- `linkedin`, `LinkedIn` → `LinkedIn`
- `instagram`, `Instagram` → `Instagram`
- `facebook`, `Facebook` → `Facebook`
- `site`, `website` → `Site`
- `indicacao`, `indicação` → `Indicação`
- Padrão: `Google Forms`

## 🐛 Resolução de Problemas

### Erro: "Função rodada manualmente"

**Causa:** A função `onFormSubmit` foi executada manualmente em vez de ser acionada pelo gatilho.

**Solução:** 
- Não execute `onFormSubmit` manualmente
- Use `testeEnvio()` para testar
- Verifique se o gatilho está configurado corretamente

### Erro: "Erro Token: ..."

**Causa:** Credenciais do Service Account incorretas ou sem permissões.

**Solução:**
1. Verifique se as credenciais no código estão corretas
2. No Firebase Console, vá em IAM & Admin → Service Accounts
3. Verifique se o Service Account tem permissão de "Editor" ou "Firebase Admin"

### Erro: "Erro Firebase (403): Permission denied"

**Causa:** Service Account sem permissão para escrever no Firestore.

**Solução:**
1. No Google Cloud Console, vá em IAM & Admin → IAM
2. Encontre o Service Account (`firebase-adminsdk-fbsvc@...`)
3. Adicione role: **Firebase Admin SDK Administrator Service Agent**

### Dados não aparecem no Firebase

**Possíveis causas:**
1. Gatilho não configurado
2. Erros silenciosos nos logs
3. Verificação de duplicatas bloqueando envio

**Solução:**
1. Verifique logs em **Execuções** do Apps Script
2. Procure por mensagens de erro
3. Execute `testeEnvio()` para verificar conexão

### Importação em Lotes muito lenta

**Causa:** Planilha muito grande ou muitos registros.

**Solução:**
- É normal levar alguns minutos
- Processa em lotes de 400 por vez
- Verifique logs para acompanhar progresso

## 📊 Estrutura dos Dados no Firebase

### Coleção: `candidates`

```javascript
{
  // Metadados
  id: "hash_gerado_automaticamente",
  createdAt: "2024-01-15T10:30:00.000Z",
  original_timestamp: "2024-01-15T10:30:00.000Z",
  external_id: "COD123",
  
  // Identificação
  fullName: "João Silva",
  email: "joao@example.com",
  phone: "(51) 99999-9999",
  
  // Localização
  city: "Porto Alegre/RS",
  
  // Status
  status: "Inscrito",
  tags: ["Novo Inscrito"]
  
  // ... outros campos do formulário
}
```

## ✅ Checklist de Configuração

- [ ] Código copiado para Apps Script
- [ ] Service Account configurado com permissões corretas
- [ ] Gatilho `onFormSubmit` configurado
- [ ] Testado com `testeEnvio()`
- [ ] Verificado logs de execução
- [ ] Dados aparecendo no Firebase
- [ ] Importação em lotes executada (se necessário)

## 📞 Suporte

Em caso de problemas:
1. Verifique os logs do Apps Script (Execuções)
2. Execute `testeEnvio()` para diagnóstico
3. Verifique permissões do Service Account no Firebase
4. Consulte a documentação do Firebase Firestore

---

**Última atualização:** Dezembro 2024
**Versão do Script:** 2.0 (Integração direta Forms → Firebase)
