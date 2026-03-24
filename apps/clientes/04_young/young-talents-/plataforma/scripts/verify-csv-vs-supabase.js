/**
 * Verifica se os dados do CSV (banco de talentos original) estão iguais aos do
 * Supabase young_talents.candidates. Identifica quais registros e campos diferem.
 *
 * Uso:
 *   node scripts/verify-csv-vs-supabase.js --mode raw
 *   node scripts/verify-csv-vs-supabase.js --mode expected
 *   node scripts/verify-csv-vs-supabase.js --mode raw --output-json
 *
 * Modos:
 *   raw      - Compara valor bruto do CSV com Supabase (mostra normalizações)
 *   expected - Aplica transformações do import ao CSV e compara (valida import)
 *
 * Env: VITE_SUPABASE_URL, VITE_SUPABASE_ANON_KEY (ou SUPABASE_URL, SUPABASE_ANON_KEY)
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { parse } from 'csv-parse';
import dotenv from 'dotenv';
import { createClient } from '@supabase/supabase-js';
import { normalizeCity } from '../src/utils/cityNormalizer.js';
import { normalizeSource } from '../src/utils/sourceNormalizer.js';
import { normalizeInterestAreasString } from '../src/utils/interestAreaNormalizer.js';
import { normalizeChildrenForStorage } from '../src/utils/childrenNormalizer.js';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const PROJECT_ROOT = path.resolve(__dirname, '..');
const CSV_PATH = path.join(PROJECT_ROOT, 'assets', 'candidates', 'candidates.csv');
const OUTPUT_DIR = path.join(PROJECT_ROOT, 'scripts', 'output');

// Carrega variáveis de ambiente - .env.local primeiro, depois .env
const envLocalPath = path.join(PROJECT_ROOT, '.env.local');
const envPath = path.join(PROJECT_ROOT, '.env');
if (fs.existsSync(envLocalPath)) {
  dotenv.config({ path: envLocalPath });
} else if (fs.existsSync(envPath)) {
  dotenv.config({ path: envPath });
} else {
  dotenv.config();
}

const normalizers = {
  normalizeCity,
  normalizeSource,
  normalizeInterestAreasString,
  normalizeChildrenForStorage
};

const SUPABASE_URL = process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL;
const SUPABASE_KEY = process.env.SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_ANON_KEY;

// Mapa: cabeçalho CSV (exato) -> coluna DB (snake_case)
const CSV_TO_DB = {
  'Carimbo de data/hora': 'original_timestamp',
  COD: null,
  'Nome completo:': 'full_name',
  'Nos envie uma foto atual que você goste:': 'photo_url',
  'Data de Nascimento:': 'birth_date',
  Idade: 'age',
  'E-mail principal:': 'email',
  'Nº telefone celular / Whatsapp:': 'phone',
  'Cidade onde reside:': 'city',
  'Áreas de interesse profissional': 'interest_areas',
  'Formação:': 'education',
  'Experiências anteriores:': 'experience',
  'Cursos e certificações profissionais.': 'courses',
  'Campo Livre, SEJA VOCÊ!': 'free_field',
  'Nível de escolaridade:': 'schooling_level',
  'Estado civil:': 'marital_status',
  'Você possui CNH tipo B?': 'has_license',
  'Instituição de ensino:': 'institution',
  'Onde você nos encontrou?': 'source',
  'Você está se candidatando a uma vaga específica ou apenas quer se inscrever no banco de talentos?': 'type_of_app',
  'Referências profissionais:': 'professional_references',
  'Certificações profissionais:': 'certifications',
  'Anexar currículo:': 'cv_url',
  'Portfólio de trabalho:': 'portfolio_url',
  'Data de formatura:': 'graduation_date',
  'Teria disponibilidade para mudança de cidade?': 'can_relocate',
  'Em caso de curso superior, está cursando neste momento?': 'is_studying',
  'Qual seria sua expectativa salarial?': 'salary_expectation',
  'Endereço de e-mail': 'email_secondary',
  'Se tem filhos, quantos?': 'children_count',
  'Você foi indicado por algum colaborador da Young? Se sim, quem?': 'referral',
  'Cópia de data': null,
  'Não quer ser contatado': null
};

// Campos que a importação normaliza (diferenças esperadas no modo raw)
const NORMALIZED_FIELDS = new Set([
  'city',
  'source',
  'interest_areas',
  'children_count',
  'photo_url',
  'birth_date',
  'graduation_date',
  'original_timestamp',
  'age'
]);

function driveLinkToDirect(url) {
  if (!url || typeof url !== 'string') return url;
  const m =
    url.match(/drive\.google\.com\/open\?id=([^&\s]+)/i) ||
    url.match(/drive\.google\.com\/file\/d\/([^/]+)/i);
  if (m) return `https://drive.google.com/uc?export=view&id=${m[1]}`;
  return url;
}

function parseDDMMYYYY(str) {
  if (!str) return null;
  const s = String(str).trim();
  const m = s.match(/^(\d{1,2})[\/\-.](\d{1,2})[\/\-.](\d{2,4})$/);
  if (m) {
    const day = parseInt(m[1], 10);
    const month = parseInt(m[2], 10) - 1;
    let year = parseInt(m[3], 10);
    if (year < 100) year += 2000;
    const d = new Date(year, month, day);
    if (!isNaN(d.getTime())) return d;
  }
  return null;
}

function parseDDMMYYYYHHMM(str) {
  if (!str) return null;
  const s = String(str).trim();
  const m = s.match(/^(\d{1,2})[\/\-.](\d{1,2})[\/\-.](\d{2,4})\s+(\d{1,2}):(\d{2})/);
  if (m) {
    const day = parseInt(m[1], 10);
    const month = parseInt(m[2], 10) - 1;
    let year = parseInt(m[3], 10);
    if (year < 100) year += 2000;
    const h = parseInt(m[4], 10);
    const min = parseInt(m[5], 10);
    const d = new Date(year, month, day, h, min);
    if (!isNaN(d.getTime())) return d;
  }
  return parseDDMMYYYY(s);
}

function parseInteger(str) {
  if (str == null || str === '') return null;
  const n = parseInt(String(str).replace(/,/, '.'), 10);
  return isNaN(n) ? null : n;
}

/** Extrai valores brutos do CSV (sem normalização) para modo raw */
function toRawRow(record) {
  const row = {};
  for (const [csvHeader, dbCol] of Object.entries(CSV_TO_DB)) {
    if (!dbCol) continue;
    let value = record[csvHeader];
    if (value !== undefined && value !== null) value = String(value).trim();
    if (value === '') value = null;
    row[dbCol] = value;
  }
  return row;
}

/** Aplica as mesmas transformações do import (para modo expected) */
function toExpectedRow(record) {
  const row = {};
  for (const [csvHeader, dbCol] of Object.entries(CSV_TO_DB)) {
    if (!dbCol) continue;
    let value = record[csvHeader];
    if (value !== undefined && value !== null) value = String(value).trim();
    if (value === '') value = null;

    if (value == null) {
      row[dbCol] = null;
      continue;
    }

    switch (dbCol) {
      case 'city':
        row[dbCol] = normalizers.normalizeCity(value) || value;
        break;
      case 'source':
        row[dbCol] = normalizers.normalizeSource(value) || value;
        break;
      case 'interest_areas':
        row[dbCol] = normalizers.normalizeInterestAreasString(value) || value;
        break;
      case 'children_count': {
        const n = normalizers.normalizeChildrenForStorage(value);
        row[dbCol] = n != null ? String(n) : null;
        break;
      }
      case 'photo_url':
        row[dbCol] = driveLinkToDirect(value);
        break;
      case 'original_timestamp': {
        const d = parseDDMMYYYYHHMM(value);
        row[dbCol] = d ? d.toISOString() : null;
        break;
      }
      case 'birth_date':
      case 'graduation_date': {
        const d = parseDDMMYYYY(value);
        row[dbCol] = d ? d.toISOString().slice(0, 10) : null;
        break;
      }
      case 'age':
        row[dbCol] = parseInteger(value);
        break;
      default:
        row[dbCol] = value;
    }
  }
  // Tabela exige phone NOT NULL
  if (row.phone == null || row.phone === '') row.phone = '';
  return row;
}

function readCsvRows() {
  return new Promise((resolve, reject) => {
    const rows = [];
    const parser = parse({
      columns: true,
      skip_empty_lines: true,
      relax_column_count: true,
      trim: true
    });
    parser.on('readable', function () {
      let r;
      while ((r = parser.read()) !== null) rows.push(r);
    });
    parser.on('error', reject);
    parser.on('end', () => resolve(rows));
    const stream = fs.createReadStream(CSV_PATH);
    stream.on('error', reject);
    stream.pipe(parser);
  });
}

function normalizeForCompare(val) {
  if (val == null) return null;
  if (typeof val === 'number') return val;
  const s = String(val).trim();
  return s === '' ? null : s;
}

function valuesEqual(csvVal, sbVal, field) {
  const c = normalizeForCompare(csvVal);
  const s = normalizeForCompare(sbVal);

  if (c === s) return true;
  if (c == null && s == null) return true;
  if (c == null || s == null) return false;

  // age: 32 vs "32"
  if (field === 'age') {
    const cn = parseInt(String(c), 10);
    const sn = typeof s === 'number' ? s : parseInt(String(s), 10);
    if (!isNaN(cn) && !isNaN(sn) && cn === sn) return true;
  }

  // datas: aceitar pequenas variações de timezone em timestamps
  if (field === 'original_timestamp' && c && s) {
    const cDate = new Date(c).getTime();
    const sDate = new Date(s).getTime();
    if (!isNaN(cDate) && !isNaN(sDate) && Math.abs(cDate - sDate) < 60000) return true;
  }

  return false;
}

async function fetchAllCandidates(supabase) {
  const PAGE_SIZE = 1000;
  let all = [];
  let offset = 0;
  let hasMore = true;

  while (hasMore) {
    const { data, error } = await supabase
      .from('candidates')
      .select('*')
      .range(offset, offset + PAGE_SIZE - 1)
      .is('deleted_at', null);

    if (error) throw new Error(`Supabase: ${error.message}`);
    all = all.concat(data || []);
    hasMore = (data?.length || 0) === PAGE_SIZE;
    offset += PAGE_SIZE;
  }

  return all;
}

const COMPARABLE_FIELDS = [
  'full_name',
  'email',
  'email_secondary',
  'phone',
  'birth_date',
  'age',
  'marital_status',
  'children_count',
  'has_license',
  'city',
  'photo_url',
  'education',
  'schooling_level',
  'institution',
  'graduation_date',
  'is_studying',
  'experience',
  'courses',
  'certifications',
  'interest_areas',
  'cv_url',
  'portfolio_url',
  'source',
  'referral',
  'salary_expectation',
  'can_relocate',
  'professional_references',
  'type_of_app',
  'free_field',
  'original_timestamp'
];

function compareRows(csvRow, sbRow, mode) {
  const diffs = [];
  for (const field of COMPARABLE_FIELDS) {
    const csvVal = csvRow[field];
    const sbVal = sbRow[field];

    if (!valuesEqual(csvVal, sbVal, field)) {
      const isExpected = mode === 'raw' && NORMALIZED_FIELDS.has(field);
      diffs.push({
        field,
        csv: csvVal,
        supabase: sbVal,
        expectedNormalization: isExpected
      });
    }
  }
  return diffs;
}

function parseArgs() {
  const args = process.argv.slice(2);
  let mode = 'raw';
  let outputJson = false;

  for (let i = 0; i < args.length; i++) {
    if (args[i] === '--mode' && args[i + 1]) {
      mode = args[i + 1];
      i++;
    } else if (args[i] === '--output-json') {
      outputJson = true;
    }
  }

  if (mode !== 'raw' && mode !== 'expected') {
    console.error('--mode deve ser "raw" ou "expected"');
    process.exit(1);
  }

  return { mode, outputJson };
}

async function main() {
  const { mode, outputJson } = parseArgs();

  if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error('Defina VITE_SUPABASE_URL e VITE_SUPABASE_ANON_KEY (ou SUPABASE_URL e SUPABASE_ANON_KEY).');
    process.exit(1);
  }
  if (!fs.existsSync(CSV_PATH)) {
    console.error('Arquivo não encontrado:', CSV_PATH);
    process.exit(1);
  }

  const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

  console.log('Lendo CSV...');
  const csvRecords = await readCsvRows();
  const csvByEmail = new Map();
  for (const r of csvRecords) {
    const email = r['E-mail principal:']?.trim();
    if (email) csvByEmail.set(email.toLowerCase(), r);
  }

  console.log('Buscando candidatos no Supabase...');
  const sbRows = await fetchAllCandidates(supabase);
  const sbByEmail = new Map();
  for (const r of sbRows) {
    if (r.email) sbByEmail.set(r.email.toLowerCase(), r);
  }

  const csvEmails = new Set(csvByEmail.keys());
  const sbEmails = new Set(sbByEmail.keys());

  const onlyInCsv = [...csvEmails].filter((e) => !sbEmails.has(e));
  const onlyInSupabase = [...sbEmails].filter((e) => !csvEmails.has(e));
  const commonEmails = [...csvEmails].filter((e) => sbEmails.has(e));

  const toRow = mode === 'raw' ? toRawRow : toExpectedRow;

  const results = [];
  const fieldCounts = {};

  for (const email of commonEmails) {
    const csvRecord = csvByEmail.get(email);
    const sbRow = sbByEmail.get(email);
    const csvRow = toRow(csvRecord);

    const diffs = compareRows(csvRow, sbRow, mode);
    if (diffs.length > 0) {
      results.push({ email, diffs });
      for (const d of diffs) {
        fieldCounts[d.field] = (fieldCounts[d.field] || 0) + 1;
      }
    }
  }

  const timestamp = new Date().toISOString().replace(/[:.]/g, '-').slice(0, 19);
  const reportPath = path.join(OUTPUT_DIR, `verify-report-${timestamp}.txt`);

  const lines = [];
  lines.push('--- Resumo ---');
  lines.push(`Total no CSV: ${csvRecords.length}`);
  lines.push(`Total no Supabase: ${sbRows.length}`);
  lines.push(`Só no CSV (não importados): ${onlyInCsv.length}`);
  lines.push(`Só no Supabase (não vêm do CSV): ${onlyInSupabase.length}`);
  lines.push(`Registros com diferenças: ${results.length}`);
  lines.push(`Modo: ${mode}`);
  lines.push('');

  lines.push('--- Campos com mais divergências ---');
  const sortedFields = Object.entries(fieldCounts).sort((a, b) => b[1] - a[1]);
  for (const [f, c] of sortedFields) {
    lines.push(`${f}: ${c}`);
  }
  if (sortedFields.length === 0) lines.push('(nenhuma)');
  lines.push('');

  lines.push('--- Detalhes por email ---');
  for (const { email, diffs } of results.slice(0, 100)) {
    lines.push(`${email}:`);
    for (const d of diffs) {
      const tag = mode === 'raw' && d.expectedNormalization ? ' [normalização esperada]' : '';
      const csvStr = d.csv == null ? 'null' : String(d.csv).slice(0, 80);
      const sbStr = d.supabase == null ? 'null' : String(d.supabase).slice(0, 80);
      lines.push(`  - ${d.field}${tag}: CSV="${csvStr}" | Supabase="${sbStr}"`);
    }
    lines.push('');
  }
  if (results.length > 100) {
    lines.push(`... e mais ${results.length - 100} registros com diferenças.`);
  }

  fs.mkdirSync(OUTPUT_DIR, { recursive: true });
  fs.writeFileSync(reportPath, lines.join('\n'), 'utf-8');
  console.log('Relatório salvo em:', reportPath);

  if (outputJson) {
    const jsonPath = path.join(OUTPUT_DIR, `verify-report-${timestamp}.json`);
    const json = {
      mode,
      summary: {
        totalCsv: csvRecords.length,
        totalSupabase: sbRows.length,
        onlyInCsv: onlyInCsv.length,
        onlyInSupabase: onlyInSupabase.length,
        recordsWithDiffs: results.length
      },
      fieldCounts,
      onlyInCsv: onlyInCsv.slice(0, 500),
      onlyInSupabase: onlyInSupabase.slice(0, 500),
      diffs: results.slice(0, 500)
    };
    fs.writeFileSync(jsonPath, JSON.stringify(json, null, 2), 'utf-8');
    console.log('JSON salvo em:', jsonPath);
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
