require('dotenv').config();
const axios = require('axios');

const n8nUrl = process.env.N8N_HOST_URL;
const apiKey = process.env.N8N_API_KEY;

async function testConnection() {
  try {
    const response = await axios.get(`${n8nUrl}/api/v1/workflows`, {
      headers: {
        'X-N8N-API-KEY': apiKey
      }
    });
    console.log('✅ Conexão bem-sucedida!');
    console.log(`Total de workflows encontrados: ${response.data.data.length}`);
  } catch (error) {
    console.error('❌ Erro ao conectar:', error.response ? error.response.data : error.message);
  }
}

testConnection();
