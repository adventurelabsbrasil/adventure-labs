require('dotenv').config();
const axios = require('axios');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

const workflow = {
  name: "C-Suite Memory Cleanup (Poda Sináptica)",
  nodes: [
    {
      parameters: {
        rule: {
          interval: [
            {
              field: "cronExpression",
              expression: "0 3 * * 0" // Todo domingo às 03:00 AM
            }
          ]
        }
      },
      id: "trigger-cleanup",
      name: "Schedule (Sunday 3AM)",
      type: "n8n-nodes-base.scheduleTrigger",
      typeVersion: 1.2,
      position: [0, 0]
    },
    {
      parameters: {
        operation: "executeQuery",
        query: "SELECT id, content, created_at, metadata FROM adv_csuite_memory WHERE created_at < NOW() - INTERVAL '30 days' AND (metadata->>'type' IS NULL OR metadata->>'type' != 'consolidated_summary') ORDER BY created_at ASC LIMIT 50;",
        options: {}
      },
      id: "fetch-old-memories",
      name: "Fetch Old Memories",
      type: "n8n-nodes-base.postgres",
      typeVersion: 2.5,
      position: [200, 0],
      credentials: {
        postgres: {
          id: "DSS8yTHRiCKbyy1V", // ID do seu Supabase pooler
          name: "Postgres supabase pooler"
        }
      }
    },
    {
      parameters: {
        conditions: {
          options: {
            caseSensitive: true,
            leftValue: "",
            typeValidation: "strict"
          },
          conditions: [
            {
              id: "97cdfe36-1e6a-4d2b-937b-91d1e6e0d3cb",
              leftValue: "={{ $input.all().length }}",
              rightValue: 0,
              operator: {
                type: "number",
                operation: "larger"
              }
            }
          ],
          combinator: "and"
        },
        options: {}
      },
      id: "check-if-empty",
      name: "IF Memories Exist",
      type: "n8n-nodes-base.if",
      typeVersion: 3.2,
      position: [400, 0]
    },
    {
      parameters: {
        jsCode: "const items = $input.all();\nconst ids = items.map(i => i.json.id);\nconst texts = items.map(i => `[${(i.json.created_at || '').substring(0,10)}] ${i.json.content}`).join('\\n\\n');\n\nreturn [{ json: { idsToErase: ids, combinedText: texts, count: items.length } }];"
      },
      id: "prepare-summary",
      name: "Combine Texts",
      type: "n8n-nodes-base.code",
      typeVersion: 2,
      position: [620, -20]
    },
    {
      parameters: {
        method: "POST",
        url: "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent",
        authentication: "genericCredentialType",
        genericAuthType: "httpHeaderAuth",
        "sendBody": true,
        specifyBody: "json",
        jsonBody: "={{ JSON.stringify({ contents: [{ role: 'user', parts: [{ text: 'MEMÓRIAS ANTIGAS PARA CONSOLIDAÇÃO:\\n\\n' + $json.combinedText }] }], systemInstruction: { parts: [{ text: 'Você é o arquivista-chefe da Adventure Labs. Sua tarefa é ler este lote de memórias operacionais e decisões executivas de mais de 30 dias atrás e criar um ÚNICO RESUMO CONSOLIDADO de alto valor. Descarte detalhes triviais, ruídos diários, bugs já resolvidos que não afetam a arquitetura e conversas irrelevantes. Mantenha APENAS os aprendizados definitivos, regras de negócios criadas, mudanças de rota estratégicas e contexto histórico importante para o futuro da empresa. Responda APENAS com o texto do resumo, estruturado em tópicos curtos se necessário.' }] }, generationConfig: { temperature: 0.2, maxOutputTokens: 1024 } }) }}",
        options: {}
      },
      id: "gemini-summarize",
      name: "Gemini Summarize",
      type: "n8n-nodes-base.httpRequest",
      typeVersion: 4.2,
      position: [840, -20],
      credentials: {
        httpHeaderAuth: {
          id: "UliHZNvWivRleRny",
          name: "x-goog-api-key"
        }
      }
    },
    {
      parameters: {
        jsCode: "const summaryText = $json.candidates[0].content.parts[0].text;\nconst idsToErase = $('Combine Texts').first().json.idsToErase;\nconst count = $('Combine Texts').first().json.count;\n\nreturn [{ json: { summaryText, idsToErase, count, timestamp: new Date().toISOString() } }];"
      },
      id: "extract-summary",
      name: "Extract Summary",
      type: "n8n-nodes-base.code",
      typeVersion: 2,
      position: [1060, -20]
    },
    {
      parameters: {
        method: "POST",
        url: "https://generativelanguage.googleapis.com/v1beta/models/text-embedding-004:embedContent",
        authentication: "genericCredentialType",
        genericAuthType: "httpHeaderAuth",
        "sendBody": true,
        specifyBody: "json",
        jsonBody: "={{ JSON.stringify({ model: 'models/text-embedding-004', content: { parts: [{ text: ('CONSOLIDAÇÃO HISTÓRICA (' + $json.count + ' eventos antigos):\\n' + $json.summaryText).substring(0, 8000) }] }, taskType: 'RETRIEVAL_DOCUMENT' }) }}",
        options: {}
      },
      id: "generate-embedding",
      name: "Generate Embedding",
      type: "n8n-nodes-base.httpRequest",
      typeVersion: 4.2,
      position: [1260, -20],
      credentials: {
        httpHeaderAuth: {
          id: "UliHZNvWivRleRny",
          name: "x-goog-api-key"
        }
      }
    },
    {
      parameters: {
        jsCode: "const embedJson = $json;\nconst prevData = $('Extract Summary').first().json;\n\nconst embeddingValues = embedJson?.embedding?.values || [];\nif (embeddingValues.length === 0) throw new Error('Embedding vazio.');\n\nconst embeddingStr = '[' + embeddingValues.join(',') + ']';\nconst content = 'RESUMO HISTÓRICO CONSOLIDADO:\\n' + prevData.summaryText;\n\nconst metadata = {\n  type: 'consolidated_summary',\n  originalEventCount: prevData.count,\n  consolidationDate: prevData.timestamp\n};\n\nconst idsList = prevData.idsToErase.join(',');\n\nreturn [{ json: { content, metadata: JSON.stringify(metadata), embeddingStr, idsList } }];"
      },
      id: "prepare-db-update",
      name: "Prepare DB Update",
      type: "n8n-nodes-base.code",
      typeVersion: 2,
      position: [1480, -20]
    },
    {
      parameters: {
        operation: "executeQuery",
        query: "INSERT INTO adv_csuite_memory (content, metadata, embedding, created_at)\nVALUES (\n  '{{ String($json.content || \"\").replace(/'/g, \"''\") }}',\n  '{{ String($json.metadata || \"{}\").replace(/'/g, \"''\") }}'::jsonb,\n  '{{ $json.embeddingStr }}'::vector,\n  NOW()\n);",
        options: {}
      },
      id: "insert-summary",
      name: "Insert New Summary",
      type: "n8n-nodes-base.postgres",
      typeVersion: 2.5,
      position: [1680, -20],
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
        query: "DELETE FROM adv_csuite_memory WHERE id IN ({{ $('Prepare DB Update').first().json.idsList }});",
        options: {}
      },
      id: "delete-old-memories",
      name: "Delete Old Memories",
      type: "n8n-nodes-base.postgres",
      typeVersion: 2.5,
      position: [1880, -20],
      credentials: {
        postgres: {
          id: "DSS8yTHRiCKbyy1V",
          name: "Postgres supabase pooler"
        }
      }
    }
  ],
  "connections": {
    "Schedule (Sunday 3AM)": {
      "main": [
        [
          { "node": "Fetch Old Memories", "type": "main", "index": 0 }
        ]
      ]
    },
    "Fetch Old Memories": {
      "main": [
        [
          { "node": "IF Memories Exist", "type": "main", "index": 0 }
        ]
      ]
    },
    "IF Memories Exist": {
      "main": [
        [
          { "node": "Combine Texts", "type": "main", "index": 0 }
        ]
      ]
    },
    "Combine Texts": {
      "main": [
        [
          { "node": "Gemini Summarize", "type": "main", "index": 0 }
        ]
      ]
    },
    "Gemini Summarize": {
      "main": [
        [
          { "node": "Extract Summary", "type": "main", "index": 0 }
        ]
      ]
    },
    "Extract Summary": {
      "main": [
        [
          { "node": "Generate Embedding", "type": "main", "index": 0 }
        ]
      ]
    },
    "Generate Embedding": {
      "main": [
        [
          { "node": "Prepare DB Update", "type": "main", "index": 0 }
        ]
      ]
    },
    "Prepare DB Update": {
      "main": [
        [
          { "node": "Insert New Summary", "type": "main", "index": 0 }
        ]
      ]
    },
    "Insert New Summary": {
      "main": [
        [
          { "node": "Delete Old Memories", "type": "main", "index": 0 }
        ]
      ]
    }
  },
  "settings": {}
};

async function createCleanupWorkflow() {
  try {
    const response = await axios.post(`${n8nUrl}/api/v1/workflows`, workflow, {
      headers: {
        'X-N8N-API-KEY': apiKey,
        'Content-Type': 'application/json'
      }
    });
    console.log(`✅ Workflow de Limpeza criado com sucesso! Novo ID: ${response.data.id}`);
  } catch (error) {
    console.error('❌ Erro:', error.response ? JSON.stringify(error.response.data, null, 2) : error.message);
  }
}

createCleanupWorkflow();
