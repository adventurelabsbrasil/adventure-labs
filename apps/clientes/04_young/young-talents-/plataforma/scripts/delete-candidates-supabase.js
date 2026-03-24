/**
 * Exclui TODOS os candidatos de young_talents.candidates no Supabase.
 * Usado para sincronizar com CSV: delete + import (Opção A).
 *
 * Uso:
 *   node scripts/delete-candidates-supabase.js
 *   node scripts/delete-candidates-supabase.js --confirm
 *
 * Requisitos:
 *   - .env.local ou .env com VITE_SUPABASE_URL e SUPABASE_SERVICE_ROLE_KEY
 *
 * ATENÇÃO: IRREVERSÍVEL. applications será excluída em cascade (ON DELETE CASCADE).
 * Faça backup se precisar dos dados.
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import dotenv from 'dotenv';
import { createClient } from '@supabase/supabase-js';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const PROJECT_ROOT = path.resolve(__dirname, '..');

// Carrega variáveis de ambiente
const envLocalPath = path.join(PROJECT_ROOT, '.env.local');
const envPath = path.join(PROJECT_ROOT, '.env');
if (fs.existsSync(envLocalPath)) {
  dotenv.config({ path: envLocalPath });
} else if (fs.existsSync(envPath)) {
  dotenv.config({ path: envPath });
} else {
  dotenv.config();
}

const SUPABASE_URL = process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL;
const SUPABASE_SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

const BATCH_SIZE = 500;

function parseArgs() {
  const args = process.argv.slice(2);
  return { confirm: args.includes('--confirm') };
}

async function main() {
  const { confirm } = parseArgs();

  if (!SUPABASE_URL || !SUPABASE_SERVICE_ROLE_KEY) {
    console.error('Defina SUPABASE_URL (ou VITE_SUPABASE_URL) e SUPABASE_SERVICE_ROLE_KEY em .env.local ou .env');
    process.exit(1);
  }

  if (!confirm) {
    console.log('ATENÇÃO: Este script exclui TODOS os candidatos do Supabase.');
    console.log('A tabela applications será afetada (ON DELETE CASCADE).');
    console.log('');
    console.log('Para executar sem confirmação, use: node scripts/delete-candidates-supabase.js --confirm');
    process.exit(1);
  }

  const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY, {
    auth: { autoRefreshToken: false, persistSession: false }
  });

  let totalDeleted = 0;
  let hasMore = true;

  console.log('Excluindo candidatos do Supabase...');

  while (hasMore) {
    const { data: rows, error: fetchError } = await supabase
      .schema('young_talents')
      .from('candidates')
      .select('id')
      .limit(BATCH_SIZE);

    if (fetchError) {
      console.error('Erro ao buscar candidatos:', fetchError.message);
      process.exit(1);
    }

    if (!rows || rows.length === 0) {
      hasMore = false;
      break;
    }

    const ids = rows.map((r) => r.id);
    const { error: deleteError } = await supabase
      .schema('young_talents')
      .from('candidates')
      .delete()
      .in('id', ids);

    if (deleteError) {
      console.error('Erro ao excluir:', deleteError.message);
      process.exit(1);
    }

    totalDeleted += ids.length;
    console.log(`  Excluídos ${totalDeleted} candidato(s)...`);
  }

  console.log(`Concluído. Total excluído: ${totalDeleted}`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
