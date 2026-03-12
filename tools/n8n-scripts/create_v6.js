require('dotenv').config();
const axios = require('axios');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;
const baseWorkflowName = 'C-Suite Autonomous Loop - V3 (CTO Agent)';
const newWorkflowName = 'C-Suite Autonomous Loop - V6 (CFO & CTO Agents)';

async function createV6Workflow() {
  try {
    // 1. Fetch the base workflow (V3)
    const listResponse = await axios.get(`${n8nUrl}/api/v1/workflows`, {
      headers: { 'X-N8N-API-KEY': apiKey }
    });
    
    const baseWorkflowInfo = listResponse.data.data.find(w => w.name === baseWorkflowName);
    
    if (!baseWorkflowInfo) {
      console.error(`❌ Workflow base "${baseWorkflowName}" não encontrado.`);
      return;
    }

    const workflowResponse = await axios.get(`${n8nUrl}/api/v1/workflows/${baseWorkflowInfo.id}`, {
      headers: { 'X-N8N-API-KEY': apiKey }
    });

    const workflow = workflowResponse.data;

    const cleanWorkflow = {
      name: newWorkflowName,
      nodes: [...workflow.nodes],
      connections: JSON.parse(JSON.stringify(workflow.connections)),
      settings: {}
    };

    let nodes = cleanWorkflow.nodes;
    let connections = cleanWorkflow.connections;

    // 2. Remover o CFO Buffett antigo
    nodes = nodes.filter(n => n.name !== 'CFO Buffett');
    
    // Arrumar as conexões de entrada do CFO (Build Context -> CFO Agent Buffett)
    if (connections['Build Context']) {
        connections['Build Context'].main[0] = [{ node: 'CFO Agent Buffett', type: 'main', index: 0 }];
    }
    delete connections['CFO Buffett'];

    // Conectar o novo CFO Agente ao CTO Agente
    connections['CFO Agent Buffett'] = {
        main: [
            [{ node: 'CTO Agent Torvalds', type: 'main', index: 0 }]
        ]
    };

    // 3. Atualizar o compilador para pegar o texto do Agente CFO
    const compileNode = nodes.find(n => n.name === 'Compile C-Level Reports');
    if (compileNode) {
        compileNode.parameters.jsCode = compileNode.parameters.jsCode.replace(
            "const cfoReport = extractGeminiText('CFO Buffett');",
            "const cfoReport = $('CFO Agent Buffett').first().json.output || 'Falha na geração do Agente CFO.';"
        );
    }

    // 4. Criar os Nós do novo Agente CFO (Agent, Model, Postgres Tool)
    const agentNode = {
      parameters: {
        promptType: "define",
        text: "={{ $('Build Context').first().json.contextCFO }}",
        options: {
          systemMessage: "Você é Warren Buffett, CFO da Adventure Labs. Analise o contexto financeiro e as tarefas. SE precisar de dados históricos ou detalhes sobre tarefas/projetos que não estão no contexto, USE a ferramenta do Banco de Dados Postgres (tabelas: adv_tasks, adv_projetos, adv_clientes) para buscar as informações. SEJA CÉTICO com gastos. Formate sua resposta listando: Análise Financeira, Riscos de Desperdício e Prioridade por ROI."
        }
      },
      id: "agent-cfo-1234",
      name: "CFO Agent Buffett",
      type: "@n8n/n8n-nodes-langchain.agent",
      typeVersion: 1.6,
      position: [-1968, 48]
    };

    const geminiModelNode = {
      parameters: {
        model: "gemini-2.5-flash",
        options: {
          temperature: 0.2
        }
      },
      id: "model-gemini-cfo-1234",
      name: "Gemini Model (CFO)",
      type: "@n8n/n8n-nodes-langchain.lmChatGoogleGemini",
      typeVersion: 1,
      position: [-2000, 250],
      credentials: {
        googleApi: {
          id: "UliHZNvWivRleRny",
          name: "x-goog-api-key"
        }
      }
    };

    const postgresToolNode = {
      parameters: {
        name: "banco_de_dados_adventure",
        description: "Permite executar consultas SQL (APENAS SELECT) no Supabase da Adventure Labs. Tabelas disponíveis: adv_tasks (id, title, status, project_id), adv_projects (id, nome, client_id), adv_clients (id, nome). Use para buscar histórico de tarefas de um cliente ou detalhes que não estão no contexto inicial.",
        operation: "executeQuery",
        query: "={{ $fromAI('query', 'A query SQL SELECT para executar no banco de dados', 'string') }}",
        options: {}
      },
      id: "tool-postgres-1234",
      name: "Postgres API Tool",
      type: "@n8n/n8n-nodes-langchain.toolPostgres",
      typeVersion: 1.3,
      position: [-1800, 250],
      credentials: {
        postgres: {
          id: "DSS8yTHRiCKbyy1V", // Credencial Supabase que ja existe no seu n8n
          name: "Postgres supabase pooler"
        }
      }
    };

    nodes.push(agentNode, geminiModelNode, postgresToolNode);

    // Conexões internas de IA do CFO (Langchain)
    if (!connections['Gemini Model (CFO)']) connections['Gemini Model (CFO)'] = {};
    connections['Gemini Model (CFO)']['ai_languageModel'] = [
        [{ node: 'CFO Agent Buffett', type: 'ai_languageModel', index: 0 }]
    ];

    if (!connections['Postgres API Tool']) connections['Postgres API Tool'] = {};
    connections['Postgres API Tool']['ai_tool'] = [
        [{ node: 'CFO Agent Buffett', type: 'ai_tool', index: 0 }]
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

    console.log(`✅ Workflow V6 criado com sucesso! Novo ID: ${response.data.id}`);
  } catch (error) {
    console.error('❌ Erro ao criar workflow V6:', error.response ? JSON.stringify(error.response.data, null, 2) : error.message);
  }
}

createV6Workflow();
