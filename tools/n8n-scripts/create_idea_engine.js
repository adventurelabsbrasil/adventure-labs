require('dotenv').config();
const axios = require('axios');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

const workflow = {
  name: "C-Suite Idea Engine (Geração de Backlog)",
  nodes: [
    {
      parameters: {
        rule: {
          interval: [
            {
              field: "cronExpression",
              expression: "0 17 * * 5" // Toda sexta-feira às 17:00
            }
          ]
        }
      },
      id: "trigger-ideas",
      name: "Schedule (Friday 5PM)",
      type: "n8n-nodes-base.scheduleTrigger",
      typeVersion: 1.2,
      position: [0, 0]
    },
    {
      parameters: {
        operation: "executeQuery",
        query: "SELECT title, description, status FROM adv_tasks WHERE updated_at > NOW() - INTERVAL '7 days' LIMIT 50;",
        options: {}
      },
      id: "fetch-weekly-tasks",
      name: "Fetch Weekly Tasks",
      type: "n8n-nodes-base.postgres",
      typeVersion: 2.5,
      position: [200, -100],
      credentials: {
        postgres: {
          id: "DSS8yTHRiCKbyy1V",
          name: "Postgres supabase pooler"
        }
      }
    },
    {
      parameters: {
        operation: "executeQuery",
        query: "SELECT content FROM adv_csuite_memory WHERE created_at > NOW() - INTERVAL '7 days' AND metadata->>'type' = 'csuite_meeting' ORDER BY created_at ASC LIMIT 10;",
        options: {}
      },
      id: "fetch-weekly-reports",
      name: "Fetch CEO Reports",
      type: "n8n-nodes-base.postgres",
      typeVersion: 2.5,
      position: [200, 100],
      credentials: {
        postgres: {
          id: "DSS8yTHRiCKbyy1V",
          name: "Postgres supabase pooler"
        }
      }
    },
    {
      parameters: {
        jsCode: "const tasks = $('Fetch Weekly Tasks').all().map(i => i.json);\nconst reports = $('Fetch CEO Reports').all().map(i => i.json);\n\nconst tasksText = tasks.length > 0 \n  ? tasks.map(t => `- [${t.status}] ${t.title}: ${(t.description || '').substring(0,100)}`).join('\\n')\n  : 'Nenhuma tarefa recente.';\n\nconst reportsText = reports.length > 0\n  ? reports.map((r, idx) => `--- RELATÓRIO DIÁRIO ${idx + 1} ---\\n${r.content}`).join('\\n\\n')\n  : 'Nenhum relatório gerado nesta semana.';\n\nreturn [{ json: { tasksText, reportsText } }];"
      },
      id: "combine-context",
      name: "Merge Contexts",
      type: "n8n-nodes-base.code",
      typeVersion: 2,
      position: [460, 0]
    },
    {
      parameters: {
        method: "POST",
        url: "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-pro:generateContent",
        authentication: "genericCredentialType",
        genericAuthType: "httpHeaderAuth",
        "sendBody": true,
        specifyBody: "json",
        jsonBody: "={{ JSON.stringify({ contents: [{ role: 'user', parts: [{ text: 'RESUMOS ESTRATÉGICOS DA SEMANA (C-Suite):\\n' + $json.reportsText + '\\n\\nTAREFAS DA EQUIPE NA SEMANA:\\n' + $json.tasksText }] }], systemInstruction: { parts: [{ text: 'Você atua como um comitê de Inovação da Adventure Labs. Sua missão é ler as diretrizes que a diretoria (C-Suite) traçou ao longo desta semana e cruzar com as tarefas que a equipe executou. Com base nos gargalos resolvidos, no direcionamento do CEO e nos padrões que você notar, gere de 3 a 5 IDEIAS PRÁTICAS para a próxima semana. Podem ser melhorias de processos internos, novos produtos/features para clientes, ou automações. Foque em alto ROI e redução de atrito. Responda em JSON válido seguindo a estrutura fornecida.' }] }, generationConfig: { temperature: 0.6, responseMimeType: 'application/json', responseSchema: { type: 'object', properties: { ideias: { type: 'array', items: { type: 'object', properties: { titulo: { type: 'string' }, descricao: { type: 'string' } } } } } } } }) }}",
        options: {}
      },
      id: "gemini-generate-ideas",
      name: "Generate Ideas (Gemini Pro)",
      type: "n8n-nodes-base.httpRequest",
      typeVersion: 4.2,
      position: [680, 0],
      credentials: {
        httpHeaderAuth: {
          id: "UliHZNvWivRleRny",
          name: "x-goog-api-key"
        }
      }
    },
    {
      parameters: {
        fieldToSplitOut: "ideias",
        options: {}
      },
      id: "split-ideas",
      name: "Split In Batches (Item Lists)",
      type: "n8n-nodes-base.itemLists",
      typeVersion: 3,
      position: [900, 0]
    },
    {
      parameters: {
        operation: "executeQuery",
        query: "INSERT INTO adv_ideias (titulo, descricao, status, created_at, updated_at)\nVALUES (\n  '{{ String($json.titulo || \"\").replace(/'/g, \"''\") }}',\n  '{{ String($json.descricao || \"\").replace(/'/g, \"''\") }}',\n  'Backlog',\n  NOW(),\n  NOW()\n);",
        options: {}
      },
      id: "insert-ideas",
      name: "Insert into Supabase",
      type: "n8n-nodes-base.postgres",
      typeVersion: 2.5,
      position: [1120, 0],
      credentials: {
        postgres: {
          id: "DSS8yTHRiCKbyy1V",
          name: "Postgres supabase pooler"
        }
      }
    }
  ],
  "connections": {
    "Schedule (Friday 5PM)": {
      "main": [
        [
          { "node": "Fetch Weekly Tasks", "type": "main", "index": 0 },
          { "node": "Fetch CEO Reports", "type": "main", "index": 0 }
        ]
      ]
    },
    "Fetch Weekly Tasks": {
      "main": [
        [
          { "node": "Merge Contexts", "type": "main", "index": 0 }
        ]
      ]
    },
    "Fetch CEO Reports": {
      "main": [
        [
          { "node": "Merge Contexts", "type": "main", "index": 0 }
        ]
      ]
    },
    "Merge Contexts": {
      "main": [
        [
          { "node": "Generate Ideas (Gemini Pro)", "type": "main", "index": 0 }
        ]
      ]
    },
    "Generate Ideas (Gemini Pro)": {
      "main": [
        [
          { "node": "Split In Batches (Item Lists)", "type": "main", "index": 0 }
        ]
      ]
    },
    "Split In Batches (Item Lists)": {
      "main": [
        [
          { "node": "Insert into Supabase", "type": "main", "index": 0 }
        ]
      ]
    }
  },
  "settings": {}
};

async function createIdeaEngine() {
  try {
    const response = await axios.post(`${n8nUrl}/api/v1/workflows`, workflow, {
      headers: {
        'X-N8N-API-KEY': apiKey,
        'Content-Type': 'application/json'
      }
    });
    console.log(`✅ Motor de Ideias criado com sucesso! Novo ID: ${response.data.id}`);
  } catch (error) {
    console.error('❌ Erro:', error.response ? JSON.stringify(error.response.data, null, 2) : error.message);
  }
}

createIdeaEngine();
