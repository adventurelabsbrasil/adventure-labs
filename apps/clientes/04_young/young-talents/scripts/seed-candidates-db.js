/**
 * Apaga todo o conteúdo de young_talents.candidates e reaplica os seeds
 * a partir dos arquivos scripts/output/seed-candidates-part-*.sql.
 *
 * Requer: SUPABASE_DB_URL no .env (Connection string do Supabase → Settings → Database → URI)
 * Uso: npm run seed-candidates-db
 *
 * Antes: gere os .sql com npm run generate-candidates-sql (a partir do CSV).
 */

import 'dotenv/config';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import pg from 'pg';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUTPUT_DIR = path.join(__dirname, 'output');

const DB_URL = process.env.SUPABASE_DB_URL || process.env.DATABASE_URL;

async function main() {
  if (!DB_URL) {
    console.error(
      'Defina SUPABASE_DB_URL (ou DATABASE_URL) no .env com a connection string do Supabase.\n' +
      'Obtenha em: Dashboard → Project Settings → Database → Connection string → URI'
    );
    process.exit(1);
  }

  const client = new pg.Client({
    connectionString: DB_URL,
    ssl: DB_URL.includes('supabase.com') ? { rejectUnauthorized: false } : undefined
  });

  try {
    await client.connect();
    console.log('Conectado ao Supabase.\n');

    console.log('Truncando young_talents.candidates (CASCADE)...');
    await client.query('TRUNCATE young_talents.candidates RESTART IDENTITY CASCADE;');
    console.log('Tabela limpa.\n');

    const partFiles = fs.readdirSync(OUTPUT_DIR)
      .filter(f => f.startsWith('seed-candidates-part-') && f.endsWith('.sql'))
      .sort();

    if (partFiles.length === 0) {
      console.warn('Nenhum arquivo seed-candidates-part-*.sql em scripts/output/.');
      console.warn('Rode antes: npm run generate-candidates-sql');
      process.exit(1);
    }

    for (const file of partFiles) {
      const filePath = path.join(OUTPUT_DIR, file);
      const sql = fs.readFileSync(filePath, 'utf8');
      await client.query(sql);
      console.log('  OK', file);
    }

    const { rows } = await client.query('SELECT COUNT(*) AS n FROM young_talents.candidates');
    console.log('\nConcluído. Total de registros em young_talents.candidates:', rows[0].n);
  } catch (err) {
    console.error('Erro:', err.message);
    process.exit(1);
  } finally {
    await client.end();
  }
}

main();
