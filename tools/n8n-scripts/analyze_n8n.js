require('dotenv').config();
const axios = require('axios');
const fs = require('fs');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

async function analyzeAllWorkflows() {
  try {
    const listResponse = await axios.get(`${n8nUrl}/api/v1/workflows`, {
      headers: { 'X-N8N-API-KEY': apiKey }
    });
    
    const workflows = listResponse.data.data;
    console.log(`Encontrados ${workflows.length} workflows. Baixando detalhes...`);
    
    const detailedWorkflows = [];
    for (const w of workflows) {
      try {
        const detailResponse = await axios.get(`${n8nUrl}/api/v1/workflows/${w.id}`, {
          headers: { 'X-N8N-API-KEY': apiKey }
        });
        detailedWorkflows.push(detailResponse.data);
      } catch (e) {
        console.error(`Erro ao baixar workflow ${w.id}: ${e.message}`);
      }
    }
    
    fs.writeFileSync('all_workflows_dump.json', JSON.stringify(detailedWorkflows, null, 2));
    console.log('✅ Todos os workflows foram baixados e salvos para análise.');
  } catch (error) {
    console.error('❌ Erro:', error.response ? error.response.data : error.message);
  }
}

analyzeAllWorkflows();
