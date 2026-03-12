require('dotenv').config();
const axios = require('axios');
const fs = require('fs');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

async function createAgentWorkflow() {
  try {
    const rawData = fs.readFileSync('csuite_workflow.json', 'utf8');
    const workflow = JSON.parse(rawData);

    // 1. Limpar e renomear
    const cleanWorkflow = {
      name: "C-Suite Autonomous Loop - V3 (CTO Agent)",
      nodes: [],
      connections: {},
      settings: {}
    };

    // Filtros de nós que vamos manter e modificar
    let nodes = [...workflow.nodes];
    let connections = JSON.parse(JSON.stringify(workflow.connections));

    // 2. Aplicar as melhorias de contexto da V2
    const buildContextNode = nodes.find(n => n.name === 'Build Context');
    if (buildContextNode) {
      buildContextNode.parameters.jsCode = `const tasks = $('Fetch Tasks').all().map(i => i.json);
const ideias = $('Fetch Ideias').all().map(i => i.json);
const memories = $('Fetch Vector Memory').all().map(i => i.json);
const currentDate = new Date().toISOString();

let contextDocs = '';
try { contextDocs = $('Fetch Context Docs').first().json.text || ''; } catch (e) { contextDocs = ''; }
const docsSection = contextDocs ? \`\\n=== DOCS ===\\n\${contextDocs}\\n\\n\` : '';

const isTech = (t) => /(bug|dev|api|banco|sql|deploy|tech|codigo|codigo|app|web)/i.test(t.title + t.description);
const tasksTech = tasks.filter(isTech);

const formatTasks = (list) => list.length > 0 ? list.map(t => \`- [\${t.status || 'N/A'}] \${t.title}\`).join('\\n') : 'Nenhuma.';
const memText = memories.length > 0 ? memories.map(m => \`- \${m.content}\`).join('\\n') : 'Nenhuma.';

const baseContext = \`DATA: \${currentDate}\\n\${docsSection}=== MEMORIA C-SUITE ===\\n\${memText}\\n\`;
const contextCTO = baseContext + '\\n=== TAREFAS TECH ===\\n' + formatTasks(tasksTech);
const context = baseContext + '\\n=== RESUMO GERAL ===\\n' + formatTasks(tasks);

return [{ json: { context, contextCTO, runTimestamp: currentDate } }];`;
    }

    // 3. Remover o CTO Torvalds antigo
    nodes = nodes.filter(n => n.name !== 'CTO Torvalds');
    if (connections['CFO Buffett']) {
        connections['CFO Buffett'].main[0] = [{ node: 'CTO Agent Torvalds', type: 'main', index: 0 }];
    }
    delete connections['CTO Torvalds'];
    
    // Conectar o novo Agente ao COO Ohno
    connections['CTO Agent Torvalds'] = {
        main: [
            [{ node: 'COO Ohno', type: 'main', index: 0 }]
        ]
    };

    // Atualizar o compilador para pegar o texto do Agente
    const compileNode = nodes.find(n => n.name === 'Compile C-Level Reports');
    if (compileNode) {
        compileNode.parameters.jsCode = compileNode.parameters.jsCode.replace(
            "const ctoReport = extractGeminiText('CTO Torvalds');",
            "const ctoReport = $('CTO Agent Torvalds').first().json.output || 'Falha na geração do Agente CTO.';"
        );
    }

    // 4. Criar os Nós do Agente (Agent, Model, Tool)
    const agentNode = {
      parameters: {
        promptType: "define",
        text: "={{ $('Build Context').first().json.contextCTO }}",
        options: {
          systemMessage: "Você é Linus Torvalds, CTO da Adventure Labs. Analise o contexto de tarefas Tech. SE houver menção a bugs, pull requests ou necessidades de checar o código, USE a ferramenta do GitHub para buscar as issues recentes do repositório 'adventurelabsbrasil/admin' antes de responder. Formate sua resposta final listando: Análise Técnica, Débito Técnico e Prioridades de Engenharia."
        }
      },
      id: "agent-cto-1234",
      name: "CTO Agent Torvalds",
      type: "@n8n/n8n-nodes-langchain.agent",
      typeVersion: 1.6,
      position: [-1744, 48]
    };

    const geminiModelNode = {
      parameters: {
        model: "gemini-2.5-flash",
        options: {
          temperature: 0.3
        }
      },
      id: "model-gemini-1234",
      name: "Gemini Model (CTO)",
      type: "@n8n/n8n-nodes-langchain.lmChatGoogleGemini",
      typeVersion: 1,
      position: [-1800, 250],
      credentials: {
        googleApi: {
          id: "UliHZNvWivRleRny", // reaproveitando a sua credencial
          name: "x-goog-api-key"
        }
      }
    };

    const githubToolNode = {
      parameters: {
        name: "github_search_issues",
        description: "Busca issues e pull requests no repositorio do Admin. Use isso para ler o status e o conteudo de tarefas de desenvolvimento ou bugs.",
        url: "https://api.github.com/repos/adventurelabsbrasil/admin/issues?state={{ $fromAI('state', 'Estado das issues: open, closed ou all', 'string') }}",
        method: "GET",
        authentication: "predefinedCredentialType",
        nodeCredentialType: "githubApi"
      },
      id: "tool-github-1234",
      name: "GitHub API Tool",
      type: "@n8n/n8n-nodes-langchain.toolHttpRequest",
      typeVersion: 1.1,
      position: [-1600, 250],
      credentials: {
        githubApi: {
          id: "mnuRMGbA3asOq1yg", // reaproveitando a credencial de github que vc ja tem no n8n
          name: "GitHub adventurelabsbrasil/admin"
        }
      }
    };

    nodes.push(agentNode, geminiModelNode, githubToolNode);

    // Conexões internas de IA (Langchain)
    if (!connections['Gemini Model (CTO)']) connections['Gemini Model (CTO)'] = {};
    connections['Gemini Model (CTO)']['ai_languageModel'] = [
        [{ node: 'CTO Agent Torvalds', type: 'ai_languageModel', index: 0 }]
    ];

    if (!connections['GitHub API Tool']) connections['GitHub API Tool'] = {};
    connections['GitHub API Tool']['ai_tool'] = [
        [{ node: 'CTO Agent Torvalds', type: 'ai_tool', index: 0 }]
    ];

    cleanWorkflow.nodes = nodes;
    cleanWorkflow.connections = connections;

    // 5. Enviar para a API
    const response = await axios.post(`${n8nUrl}/api/v1/workflows`, cleanWorkflow, {
      headers: {
        'X-N8N-API-KEY': apiKey,
        'Content-Type': 'application/json'
      }
    });

    console.log(`✅ Workflow V3 criado com sucesso! Novo ID: ${response.data.id}`);
  } catch (error) {
    console.error('❌ Erro ao criar workflow V3:', error.response ? JSON.stringify(error.response.data, null, 2) : error.message);
  }
}

createAgentWorkflow();
