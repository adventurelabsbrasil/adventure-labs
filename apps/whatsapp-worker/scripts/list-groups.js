#!/usr/bin/env node
/**
 * Lista os nomes (e IDs) dos grupos do WhatsApp.
 * O worker precisa estar rodando e conectado (ready).
 *
 * Uso:
 *   node scripts/list-groups.js
 *   node scripts/list-groups.js http://localhost:3333
 *   WORKER_URL=https://adv-zazu.railway.app node scripts/list-groups.js
 */
const base = process.env.WORKER_URL || process.argv[2] || "http://localhost:3333";
const url = `${base.replace(/\/$/, "")}/groups`;

async function main() {
  try {
    const res = await fetch(url);
    const data = await res.json();

    if (!res.ok) {
      console.error("Erro:", data.error || res.statusText);
      process.exit(1);
    }

    const groups = data.groups || [];
    if (groups.length === 0) {
      console.log("Nenhum grupo encontrado.");
      return;
    }

    console.log("\nGrupos disponíveis:\n");
    groups.forEach((g, i) => {
      console.log(`${i + 1}. ${g.name}`);
      console.log(`   ID: ${g.id}\n`);
    });
    console.log("---");
    console.log("Para filtrar no .env, use WHATSAPP_GROUP_NAMES ou WHATSAPP_GROUP_IDS.");
    console.log("Exemplo: WHATSAPP_GROUP_NAMES=\"Adventure Young,Adventure Rose\"\n");
  } catch (err) {
    console.error("Falha ao chamar o worker:", err.message);
    console.error("Confira se o worker está rodando e conectado (npm start) e se a URL está correta:", url);
    process.exit(1);
  }
}

main();
