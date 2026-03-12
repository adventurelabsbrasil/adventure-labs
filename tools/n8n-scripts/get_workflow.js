require('dotenv').config();
const axios = require('axios');
const fs = require('fs');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;
const workflowId = 'gZWwZ1UbuHGR6w8u';

async function getWorkflow() {
  try {
    const response = await axios.get(`${n8nUrl}/api/v1/workflows/${workflowId}`, {
      headers: {
        'X-N8N-API-KEY': apiKey
      }
    });
    fs.writeFileSync('workflow.json', JSON.stringify(response.data, null, 2));
    console.log('✅ Workflow baixado e salvo em workflow.json');
  } catch (error) {
    console.error('❌ Erro ao buscar workflow:', error.response ? error.response.data : error.message);
  }
}

getWorkflow();
