require('dotenv').config();
const axios = require('axios');
const fs = require('fs');
const path = require('path');

/** Base URL sem barra final (evita //api/v1/... e confusão com trailing slash). */
function normalizeN8nBaseUrl(raw) {
  if (!raw || typeof raw !== 'string') return '';
  return raw.replace(/\/+$/, '').trim();
}

const n8nUrl = normalizeN8nBaseUrl(process.env.N8N_HOST_URL || process.env.N8N_API_URL);
const apiKey = process.env.N8N_API_KEY || process.env.N8N_API_TOKEN;

/**
 * POST /api/v1/workflows aceita só um subconjunto do JSON exportado pela UI.
 * Campos como active, pinData, meta, versionId geram 400 ("additional properties", "active is read-only").
 */
function toCreateWorkflowPayload(exported) {
  const payload = {
    name: exported.name,
    nodes: exported.nodes,
    connections: exported.connections || {},
    settings: exported.settings || {}
  };
  if (exported.staticData != null) {
    payload.staticData = exported.staticData;
  }
  return payload;
}

async function uploadWorkflow() {
  const filePath = process.argv[2];

  if (!n8nUrl || !apiKey) {
    console.error('❌ Erro: variáveis de ambiente do n8n ausentes.');
    console.error('Defina N8N_HOST_URL + N8N_API_KEY ou N8N_API_URL + N8N_API_TOKEN.');
    process.exit(1);
  }

  if (!filePath) {
    console.error('❌ Erro: Você precisa fornecer o caminho para o arquivo JSON.');
    console.log('💡 Uso: node upload_workflow.js <caminho/para/arquivo.json>');
    process.exit(1);
  }

  const resolvedPath = path.resolve(filePath);

  if (!fs.existsSync(resolvedPath)) {
    console.error(`❌ Erro: Arquivo não encontrado em ${resolvedPath}`);
    process.exit(1);
  }

  try {
    const fileContent = fs.readFileSync(resolvedPath, 'utf8');
    const exported = JSON.parse(fileContent);
    const workflowData = toCreateWorkflowPayload(exported);

    // Se quiser garantir que ele suba como um "novo" para não dar conflito de nome, 
    // comente a linha abaixo. Aqui adicionamos um [CLI] para marcar.
    // workflowData.name = `${workflowData.name} [Importado CLI]`;

    console.log(`🚀 Iniciando upload de: "${workflowData.name}" para ${n8nUrl}...`);

    const response = await axios.post(`${n8nUrl}/api/v1/workflows`, workflowData, {
      headers: {
        'X-N8N-API-KEY': apiKey,
        'Content-Type': 'application/json'
      }
    });

    console.log('✅ Sucesso! Workflow criado na instância n8n.');
    console.log(`🆔 Novo ID: ${response.data.id}`);
    console.log(`🔗 Link: ${n8nUrl}/workflow/${response.data.id}`);

  } catch (error) {
    console.error('❌ Falha ao enviar para o n8n:');
    if (error.response) {
      console.error(`Status: ${error.response.status}`);
      console.error(JSON.stringify(error.response.data, null, 2));
      const status = error.response.status;
      const body = error.response.data;
      const msg = typeof body === 'object' && body && body.message ? String(body.message) : '';
      if (status === 404 && (msg.includes('Application not found') || msg.includes('not found'))) {
        console.error(
          '\n💡 Dica: `N8N_API_URL` no Infisical aponta para um host inválido ou desligado (ex.: URL antiga do Railway).'
        );
        console.error(
          '   Atualize no Infisical (path `/admin`): `N8N_API_URL` = URL base da instância ativa (ex.: https://n8n.adventurelabs.com.br) e `N8N_API_TOKEN` = API key dessa mesma instância.'
        );
      }
      if (status === 401) {
        console.error(
          '\n💡 Dica: 401 = token da Public API inválido para essa URL. Gere nova API key em Settings → API no n8n dessa instância e atualize `N8N_API_TOKEN` no Infisical.'
        );
      }
    } else {
      console.error(error.message);
    }
  }
}

uploadWorkflow();
