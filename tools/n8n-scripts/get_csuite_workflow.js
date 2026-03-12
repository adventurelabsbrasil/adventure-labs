require('dotenv').config();
const axios = require('axios');
const fs = require('fs');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;
const targetName = 'C-Suite Autonomous Loop - Adventure Labs';

async function fetchAndDownloadWorkflow() {
  try {
    // 1. Fetch all workflows
    const listResponse = await axios.get(`${n8nUrl}/api/v1/workflows`, {
      headers: {
        'X-N8N-API-KEY': apiKey
      }
    });
    
    const workflows = listResponse.data.data;
    const targetWorkflow = workflows.find(w => w.name === targetName);
    
    if (!targetWorkflow) {
      console.error(`❌ Workflow com nome "${targetName}" não encontrado.`);
      return;
    }
    
    console.log(`✅ Workflow encontrado! ID: ${targetWorkflow.id}`);
    
    // 2. Fetch the specific workflow details
    const workflowResponse = await axios.get(`${n8nUrl}/api/v1/workflows/${targetWorkflow.id}`, {
      headers: {
        'X-N8N-API-KEY': apiKey
      }
    });
    
    fs.writeFileSync('csuite_workflow.json', JSON.stringify(workflowResponse.data, null, 2));
    console.log('✅ Workflow baixado e salvo em csuite_workflow.json');
    
  } catch (error) {
    console.error('❌ Erro:', error.response ? error.response.data : error.message);
  }
}

fetchAndDownloadWorkflow();
