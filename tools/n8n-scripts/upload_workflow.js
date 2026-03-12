require('dotenv').config();
const axios = require('axios');
const fs = require('fs');
const path = require('path');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

async function uploadWorkflow() {
  const filePath = process.argv[2];

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
    const workflowData = JSON.parse(fileContent);

    // Remove propriedades que o n8n bloqueia ao importar/criar um novo
    delete workflowData.id;
    delete workflowData.createdAt;
    delete workflowData.updatedAt;
    
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

    console.log('✅ Sucesso! Workflow criado no Railway.');
    console.log(`🆔 Novo ID: ${response.data.id}`);
    console.log(`🔗 Link: ${n8nUrl}/workflow/${response.data.id}`);

  } catch (error) {
    console.error('❌ Falha ao enviar para o n8n:');
    if (error.response) {
      console.error(`Status: ${error.response.status}`);
      console.error(JSON.stringify(error.response.data, null, 2));
    } else {
      console.error(error.message);
    }
  }
}

uploadWorkflow();
