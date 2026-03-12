require('dotenv').config();
const axios = require('axios');
const fs = require('fs');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

async function createOptimizedWorkflow() {
  try {
    const rawData = fs.readFileSync('csuite_workflow.json', 'utf8');
    const workflow = JSON.parse(rawData);

    // 1. Reset IDs and name to create a new workflow
    const cleanWorkflow = {
      name: "C-Suite Autonomous Loop - V2 (Optimized)",
      nodes: workflow.nodes,
      connections: workflow.connections,
      settings: {}
    };
    
    // 2. Update 'Build Context' to separate context by domain
    const buildContextNode = cleanWorkflow.nodes.find(n => n.name === 'Build Context');
    if (buildContextNode) {
      buildContextNode.parameters.jsCode = `const tasks = $('Fetch Tasks').all().map(i => i.json);
const ideias = $('Fetch Ideias').all().map(i => i.json);
const memories = $('Fetch Vector Memory').all().map(i => i.json);
const currentDate = new Date().toISOString();

// Base de conhecimento
let contextDocs = '';
try { contextDocs = $('Fetch Context Docs').first().json.text || ''; } catch (e) { contextDocs = ''; }
const docsSection = contextDocs ? \`\\n=== DOCS ===\\n\${contextDocs}\\n\\n\` : '';

// Separando tarefas por domínio (Exemplo simples baseado em palavras-chave no título/descrição)
const isTech = (t) => /(bug|dev|api|banco|sql|deploy|tech|codigo|codigo|app|web)/i.test(t.title + t.description);
const isMkt = (t) => /(ads|campanha|marketing|copy|criativo|lead|conversao|roas)/i.test(t.title + t.description);
const isOps = (t) => /(processo|cliente|reuniao|onboarding|sla|atraso|gargalo)/i.test(t.title + t.description);

const tasksTech = tasks.filter(isTech);
const tasksMkt = tasks.filter(isMkt);
const tasksOps = tasks.filter(isOps);

const formatTasks = (list) => list.length > 0 
  ? list.map(t => \`- [\${t.status || 'N/A'}] \${t.title}\`).join('\\n') 
  : 'Nenhuma.';

const memText = memories.length > 0 ? memories.map(m => \`- \${m.content}\`).join('\\n') : 'Nenhuma.';

const baseContext = \`DATA: \${currentDate}\\n\${docsSection}=== MEMORIA C-SUITE ===\\n\${memText}\\n\`;

const contextCFO = baseContext + '\\n=== TODAS AS TAREFAS (Visão Financeira) ===\\n' + formatTasks(tasks);
const contextCTO = baseContext + '\\n=== TAREFAS TECH ===\\n' + formatTasks(tasksTech);
const contextCMO = baseContext + '\\n=== TAREFAS MKT ===\\n' + formatTasks(tasksMkt);
const contextCOO = baseContext + '\\n=== TAREFAS OPS ===\\n' + formatTasks(tasksOps);
const contextCPO = baseContext + '\\n=== BACKLOG / IDEIAS (Visão Produto) ===\\n' + (ideias.length > 0 ? ideias.map(i => \`- \${i.titulo}\`).join('\\n') : 'Nenhuma.');

// Mantendo o context original para o CEO
const context = baseContext + '\\n=== RESUMO GERAL ===\\n' + formatTasks(tasks);

return [{ json: { context, contextCFO, contextCTO, contextCMO, contextCOO, contextCPO, runTimestamp: currentDate } }];`;
    }

    // 3. Helper to inject JSON Schema and update prompt variable
    const updateCLevelNode = (nodeName, contextVar, schemaProperties) => {
      const node = cleanWorkflow.nodes.find(n => n.name === nodeName);
      if (node) {
        let jsonBody = node.parameters.jsonBody;
        // Mudar a variavel de contexto apontada
        jsonBody = jsonBody.replace("$('Build Context').first().json.context", `$('Build Context').first().json.${contextVar}`);
        
        // Injetar o responseSchema no generationConfig
        const schemaString = `responseSchema: { type: 'object', properties: ${JSON.stringify(schemaProperties)} }`;
        jsonBody = jsonBody.replace("responseMimeType: 'application/json'", `responseMimeType: 'application/json', ${schemaString}`);
        
        node.parameters.jsonBody = jsonBody;
      }
    };

    updateCLevelNode('CFO Buffett', 'contextCFO', {
      analise: { type: 'string' },
      riscos: { type: 'array', items: { type: 'string' } },
      recomendacoes: { type: 'array', items: { type: 'string' } },
      prioridade_roi: { type: 'array', items: { type: 'object', properties: { tarefa: { type: 'string' }, justificativa: { type: 'string' } } } }
    });

    updateCLevelNode('CTO Torvalds', 'contextCTO', {
      analise: { type: 'string' },
      debito_tecnico: { type: 'array', items: { type: 'string' } },
      recomendacoes_tecnicas: { type: 'array', items: { type: 'string' } },
      prioridades_dev: { type: 'array', items: { type: 'object', properties: { tarefa: { type: 'string' }, justificativa_tecnica: { type: 'string' } } } }
    });

    updateCLevelNode('COO Ohno', 'contextCOO', {
      analise: { type: 'string' },
      gargalos: { type: 'array', items: { type: 'string' } },
      tarefas_em_risco: { type: 'array', items: { type: 'string' } },
      recomendacoes_operacionais: { type: 'array', items: { type: 'string' } }
    });

    updateCLevelNode('CMO Ogilvy', 'contextCMO', {
      analise: { type: 'string' },
      kpis_em_risco: { type: 'array', items: { type: 'string' } },
      oportunidades: { type: 'array', items: { type: 'string' } },
      recomendacoes_marketing: { type: 'array', items: { type: 'string' } }
    });

    updateCLevelNode('CPO Cagan', 'contextCPO', {
      analise: { type: 'string' },
      experiencia_cliente: { type: 'string' },
      ideias_prioritarias: { type: 'array', items: { type: 'object', properties: { ideia: { type: 'string' }, impacto: { type: 'string' } } } },
      recomendacoes_produto: { type: 'array', items: { type: 'string' } }
    });

    // 4. Update CEO Grove Node to use Structured Output as well
    const ceoNode = cleanWorkflow.nodes.find(n => n.name === 'Fields'); // This builds the body for CEO
    if (ceoNode) {
        let code = ceoNode.parameters.jsCode;
        const schemaObj = {
            resumo_executivo: { type: 'string' },
            decisoes: { type: 'array', items: { type: 'object', properties: { acao: { type: 'string' }, responsavel: { type: 'string' }, prazo: { type: 'string' }, motivo: { type: 'string' } } } },
            titulo_issue_github: { type: 'string' },
            descricao_issue_github: { type: 'string' },
            mensagem_google_chat: { type: 'string' }
        };
        const schemaString = `responseSchema: { type: 'object', properties: ${JSON.stringify(schemaObj)} }`;
        code = code.replace("responseMimeType: 'application/json'", `responseMimeType: 'application/json', ${schemaString}`);
        ceoNode.parameters.jsCode = code;
    }

    // 5. Upgrade Embeddings to 004
    const embedNode = cleanWorkflow.nodes.find(n => n.name === 'Generate Embeddings');
    if (embedNode) {
      let url = embedNode.parameters.url;
      let body = embedNode.parameters.jsonBody;
      
      embedNode.parameters.url = url.replace('gemini-embedding-001', 'text-embedding-004');
      embedNode.parameters.jsonBody = body.replace('models/text-embedding-001', 'models/text-embedding-004');
    }

    // 6. POST to n8n API to create the new workflow
    const response = await axios.post(`${n8nUrl}/api/v1/workflows`, cleanWorkflow, {
      headers: {
        'X-N8N-API-KEY': apiKey,
        'Content-Type': 'application/json'
      }
    });

    console.log(`✅ Workflow V2 criado com sucesso! Novo ID: ${response.data.id}`);
  } catch (error) {
    console.error('❌ Erro ao criar workflow:', error.response ? JSON.stringify(error.response.data, null, 2) : error.message);
  }
}

createOptimizedWorkflow();
