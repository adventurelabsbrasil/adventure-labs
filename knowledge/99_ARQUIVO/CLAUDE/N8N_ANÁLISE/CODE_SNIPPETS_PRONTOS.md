# 💾 Code Snippets Prontos para Copiar/Colar

## 1️⃣ Build Context1 (ATUALIZAR)

```javascript
const tasks = $('Fetch Tasks1').all().map(i => i.json);
const ideias = $('Fetch Ideias1').all().map(i => i.json);
const memories = $('Fetch Vector Memory1').all().map(i => i.json);
const currentDate = new Date().toISOString();

let contextDocs = '';
try {
  const docData = $('Fetch Context Docs1').all();
  if (Array.isArray(docData) && docData.length > 0) {
    contextDocs = docData
      .map(d => `- ${d.json?.title || 'Doc'}: ${(d.json?.content || d.json?.text || '').substring(0, 200)}`)
      .join('\n');
  }
} catch (e) {
  console.error('Erro ao processar docs:', e.message);
  contextDocs = '[Docs indisponíveis nesta execução]';
}

const docsSection = contextDocs ? `\n=== DOCUMENTOS CONTEXTUAIS ===\n${contextDocs}\n\n` : '';

const isTech = (t) => /(bug|dev|api|banco|sql|deploy|tech|codigo|app|web)/i.test((t.title || '') + (t.description || ''));
const tasksTech = tasks.filter(isTech);

const formatTasks = (list) => list.length > 0 ? list.map(t => `- [${t.status || 'N/A'}] ${t.title}`).join('\n') : 'Nenhuma.';
const memText = memories.length > 0 ? memories.map(m => `- ${m.content}`).join('\n') : 'Nenhuma.';

const baseContext = `DATA: ${currentDate}${docsSection}=== MEMORIA C-SUITE ===\n${memText}\n`;
const contextCTO = baseContext + '\n=== TAREFAS TECH ===\n' + formatTasks(tasksTech);
const context = baseContext + '\n=== RESUMO GERAL ===\n' + formatTasks(tasks);

return [{ 
  json: { 
    context, 
    contextCTO, 
    runTimestamp: currentDate, 
    tasksCount: tasks.length, 
    ideasCount: ideias.length 
  } 
}];
```

---

## 2️⃣ Compile C-Level Reports1 (ATUALIZAR)

```javascript
function getGeminiText(nodeName) {
  try {
    const nodeData = $(nodeName).first().json;
    
    // Tenta múltiplos caminhos possíveis
    if (nodeData?.candidates?.[0]?.content?.parts?.[0]?.text) {
      return nodeData.candidates[0].content.parts[0].text;
    }
    if (nodeData?.text) return nodeData.text;
    if (nodeData?.output) return nodeData.output;
    if (nodeData?.body) return nodeData.body;
    if (typeof nodeData === 'string') return nodeData;
    
    return `[Aviso] Resposta de ${nodeName} indisponível.`;
  } catch (e) {
    return `[Erro em ${nodeName}] ${e.message}`;
  }
}

function getSafeOutput(nodeName) {
  try {
    const data = $(nodeName).first().json;
    return data?.output || data?.text || data?.body || JSON.stringify(data);
  } catch (e) {
    return `[Erro] ${nodeName}: ${e.message}`;
  }
}

const context = $('Build Context1').first().json.context;
const runTimestamp = $('Build Context1').first().json.runTimestamp;

const cfoReport = getSafeOutput('CFO Agent Buffett1');
const ctoReport = getSafeOutput('CTO Agent Torvalds1');
const cooReport = getGeminiText('COO Ohno1');
const cmoReport = getGeminiText('CMO Ogilvy1');
const cpoReport = getGeminiText('CPO Cagan1');

const compiledReport = [
  '=== RELATORIO CFO — Warren Buffett ===', cfoReport, '',
  '=== RELATORIO CTO — Linus Torvalds ===', ctoReport, '',
  '=== RELATORIO COO — Taiichi Ohno ===', cooReport, '',
  '=== RELATORIO CMO — David Ogilvy ===', cmoReport, '',
  '=== RELATORIO CPO — Marty Cagan ===', cpoReport
].join('\n');

if (!compiledReport || compiledReport.trim().length === 0) {
  throw new Error('Relatório compilado vazio! Verifique os agentes.');
}

return [{ 
  json: { 
    compiledReport, 
    context, 
    runTimestamp, 
    cfoReport, 
    ctoReport, 
    cooReport, 
    cmoReport, 
    cpoReport,
    reportGenerated: true
  } 
}];
```

---

## 3️⃣ Prepare CEO Request1 (NOVO - CRIAR)

**Tipo:** Code node
**Conectar de:** Compile C-Level Reports1
**Conectar para:** CEO Grove Synthesis1

```javascript
const compiledData = $('Compile C-Level Reports1').first().json;
const runTimestamp = compiledData.runTimestamp;

const ceoRequestBody = {
  contents: [{
    role: 'user',
    parts: [{
      text: `RELATORIO COMPILADO DOS EXECUTIVES (${new Date(runTimestamp).toLocaleString('pt-BR')}):\n\n${compiledData.compiledReport}\n\nComo CEO, sintetize estes insights e forneça 3 prioridades estratégicas em JSON.`
    }]
  }],
  systemInstruction: {
    parts: [{
      text: 'Você é Andy Grove, CEO da Adventure Labs. Sintetize insights de todos C-Levels (CFO, CTO, COO, CMO, CPO) e defina 3 prioridades estratégicas claras. Responda OBRIGATORIAMENTE em JSON válido com as chaves: sintese (string), prioridades (array com 3 objetos contendo: prioridade, por_quem, impacto_esperado), proximos_passos (array).'
    }]
  },
  generationConfig: {
    temperature: 0.2,
    maxOutputTokens: 1500,
    responseMimeType: 'application/json'
  }
};

return [{ 
  json: { 
    ceoRequestBody, 
    compiledReport: compiledData.compiledReport, 
    runTimestamp 
  } 
}];
```

---

## 4️⃣ Parse CEO Decision1 (NOVO - CRIAR)

**Tipo:** Code node
**Conectar de:** CEO Grove Synthesis1
**Conectar para:** Push Report to GitHub1 + Store Memory pgvector1

```javascript
const ceoOutput = $('CEO Grove Synthesis1').first().json;
const compiledReport = $('Prepare CEO Request1').first().json.compiledReport;
const runTimestamp = $('Prepare CEO Request1').first().json.runTimestamp;

let ceoBestDecision = '';
if (ceoOutput?.candidates?.[0]?.content?.parts?.[0]?.text) {
  ceoBestDecision = ceoOutput.candidates[0].content.parts[0].text;
} else if (ceoOutput?.text) {
  ceoBestDecision = ceoOutput.text;
} else if (ceoOutput?.output) {
  ceoBestDecision = ceoOutput.output;
} else {
  ceoBestDecision = JSON.stringify(ceoOutput);
}

if (!ceoBestDecision || ceoBestDecision.trim().length === 0) {
  throw new Error('CEO Decision vazia! Verifique a resposta do Gemini.');
}

const finalReport = `
=== DECISAO ESTRATEGICA DO CEO ===
${ceoBestDecision}

=== CONTEXTO COMPLETO ===
${compiledReport}
`;

return [{
  json: {
    ceoBestDecision,
    finalReport,
    runTimestamp,
    readyForGitHub: true
  }
}];
```

---

## 5️⃣ Push Report to GitHub1 (NOVO - CRIAR)

**Tipo:** HTTP Request node
**Method:** POST
**URL:** `https://api.github.com/repos/{OWNER}/{REPO}/issues`
**Authentication:** HTTP Header Auth
**Body Type:** JSON

### Configuração do Body:

```javascript
{
  "title": "C-Suite Report - " + new Date($json.runTimestamp).toLocaleDateString('pt-BR'),
  "body": $json.finalReport,
  "labels": ["c-suite-report", "autonomous-loop"],
  "state": "open"
}
```

### Alternativa com mais detalhes:

```javascript
{
  "title": "📊 C-Suite Report - " + new Date($json.runTimestamp).toLocaleDateString('pt-BR', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' }),
  "body": `## 🤖 Autonomous Loop Report\n\n**Timestamp:** ${new Date($json.runTimestamp).toISOString()}\n\n${$json.finalReport}\n\n---\n**Status:** Auto-generated by n8n Autonomous Loop\n**Source:** C-Suite Analysis Engine`,
  "labels": ["c-suite-report", "autonomous-loop", "ai-generated"],
  "assignees": ["your-github-username"],
  "state": "open"
}
```

---

## 6️⃣ Store Memory pgvector1 (ATUALIZAR - Adicionar validação)

Se este nó não existe, crie um novo **Code** node:

```javascript
const ceoBestDecision = $('Parse CEO Decision1').first().json.ceoBestDecision;
const runTimestamp = $('Parse CEO Decision1').first().json.runTimestamp;

if (!ceoBestDecision || ceoBestDecision.length === 0) {
  throw new Error('Não há decisão do CEO para armazenar!');
}

const memoryPayload = {
  content: ceoBestDecision,
  metadata: {
    type: 'ceo_decision',
    timestamp: runTimestamp,
    source: 'autonomous_loop',
    stored_at: new Date().toISOString()
  }
};

return [{ json: memoryPayload }];
```

---

## 🔧 EXTRAS - Snippets Opcionais

### Validar Outputs (após Compile C-Level Reports1)

```javascript
function validateJSON(str) {
  if (!str || str.trim() === '') return null;
  try {
    JSON.parse(str);
    return true;
  } catch {
    return false;
  }
}

const outputs = {
  cfo: validateJSON($('CFO Agent Buffett1').first().json.output),
  cto: validateJSON($('CTO Agent Torvalds1').first().json.output),
  coo: validateJSON($('COO Ohno1').first().json?.candidates?.[0]?.content?.parts?.[0]?.text),
  cmo: validateJSON($('CMO Ogilvy1').first().json?.candidates?.[0]?.content?.parts?.[0]?.text),
  cpo: validateJSON($('CPO Cagan1').first().json?.candidates?.[0]?.content?.parts?.[0]?.text),
};

const validCount = Object.values(outputs).filter(o => o === true).length;
console.log(`✅ Validação: ${validCount}/5 outputs são JSON válido`);

if (validCount < 3) {
  console.warn('⚠️ Aviso: Menos de 3 outputs válidos. Continuando com fallbacks...');
}

return [{ json: { outputs, validCount } }];
```

### Audit Log (antes de Push to GitHub)

```javascript
const auditLog = {
  timestamp: new Date().toISOString(),
  status: 'success',
  workflow: 'C-Suite Autonomous Loop V7',
  execution: {
    startedAt: $('Build Context1').first().json.runTimestamp,
    completedAt: new Date().toISOString(),
    duration_ms: new Date() - new Date($('Build Context1').first().json.runTimestamp)
  },
  dataPoints: {
    tasksAnalyzed: $('Build Context1').first().json.tasksCount || 0,
    ideasAnalyzed: $('Build Context1').first().json.ideasCount || 0,
    memoryItemsFetched: $('Fetch Vector Memory1').all().length || 0
  },
  outputs: {
    ceoDecisionGenerated: $json.ceoBestDecision?.length > 0,
    reportLength: $json.finalReport?.length || 0,
    githubIssuePending: true
  }
};

return [{ json: { auditLog, ...($json) } }];
```

### Retry com Exponential Backoff (envolver chamadas HTTP)

```javascript
async function callWithRetry(url, options, maxRetries = 3) {
  for (let attempt = 1; attempt <= maxRetries; attempt++) {
    try {
      console.log(`Tentativa ${attempt}/${maxRetries} para ${url}`);
      
      const response = await fetch(url, options);
      if (response.ok || attempt === maxRetries) {
        return response;
      }
      
      const delay = Math.pow(2, attempt) * 1000; // exponential backoff
      console.log(`Falha. Aguardando ${delay}ms...`);
      await new Promise(r => setTimeout(r, delay));
    } catch (e) {
      if (attempt === maxRetries) throw e;
      const delay = Math.pow(2, attempt) * 1000;
      console.log(`Erro: ${e.message}. Aguardando ${delay}ms...`);
      await new Promise(r => setTimeout(r, delay));
    }
  }
}
```

---

## ✅ Checklist de Cópia

- [ ] Copiei Build Context1
- [ ] Copiei Compile C-Level Reports1
- [ ] Criei Prepare CEO Request1
- [ ] Criei Parse CEO Decision1
- [ ] Criei Push Report to GitHub1
- [ ] Atualizei Store Memory pgvector1
- [ ] Configurei credencial GitHub no n8n
- [ ] Testei execução manual
- [ ] Verifiquei Issue no GitHub
- [ ] Verifiquei Memory no Supabase

---

## 🎯 Ordem de Implementação Rápida

1. Atualize **Build Context1** (5 min)
2. Atualize **Compile C-Level Reports1** (5 min)
3. Crie **Prepare CEO Request1** (3 min)
4. Crie **Parse CEO Decision1** (3 min)
5. Crie **Push Report to GitHub1** (5 min)
6. Teste tudo (10 min)

**Total: ~30 minutos para corrigir o bug principal!**

