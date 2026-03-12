require('dotenv').config();
const axios = require('axios');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

// Workflows que NÃO QUEREMOS apagar de jeito nenhum (Nomes Exatos)
const PROTECTED_WORKFLOWS = [
  "C-Suite Autonomous Loop - V6 (CFO & CTO Agents)",
  "C-Suite Memory Cleanup (Poda Sináptica)",
  "C-Suite Idea Engine (Geração de Backlog)",
  "Fetch Context",
  "Board Meet",
  "Admin: tarefa concluída → email" // Vou manter um, depois filtramos melhor
];

async function cleanupN8n() {
  try {
    const listResponse = await axios.get(`${n8nUrl}/api/v1/workflows`, {
      headers: { 'X-N8N-API-KEY': apiKey }
    });
    
    const workflows = listResponse.data.data;
    console.log(`🧹 Iniciando limpeza. Encontrados ${workflows.length} workflows.`);
    
    let emailWorkflowCount = 0;

    for (const w of workflows) {
      // Regra especial para duplicatas do email
      if (w.name === "Admin: tarefa concluída → email") {
        emailWorkflowCount++;
        if (emailWorkflowCount > 1) {
           console.log(`🗑️ Deletando duplicata de Email: ${w.id}`);
           await axios.delete(`${n8nUrl}/api/v1/workflows/${w.id}`, { headers: { 'X-N8N-API-KEY': apiKey } });
           continue;
        }
      }

      if (!PROTECTED_WORKFLOWS.includes(w.name)) {
        console.log(`🗑️ Deletando workflow inativo/antigo: ${w.name} (${w.id})`);
        await axios.delete(`${n8nUrl}/api/v1/workflows/${w.id}`, { headers: { 'X-N8N-API-KEY': apiKey } });
      } else {
        // Se for um dos workflows principais novos, vamos ATIVAR eles.
        if (w.name.includes('V6') || w.name.includes('Memory Cleanup') || w.name.includes('Idea Engine')) {
          console.log(`🟢 Ativando Workflow Oficial: ${w.name}`);
          
          // Pra ativar via API, precisamos pegar o workflow atual e mandar um PUT com active: true
          const wDetail = await axios.get(`${n8nUrl}/api/v1/workflows/${w.id}`, { headers: { 'X-N8N-API-KEY': apiKey } });
          const updatedW = wDetail.data;
          updatedW.active = true;
          
          await axios.put(`${n8nUrl}/api/v1/workflows/${w.id}`, updatedW, { headers: { 'X-N8N-API-KEY': apiKey } });
        }
      }
    }
    
    console.log('✨ Limpeza concluída com sucesso!');
  } catch (error) {
    console.error('❌ Erro durante a limpeza:', error.response ? JSON.stringify(error.response.data, null, 2) : error.message);
  }
}

cleanupN8n();
