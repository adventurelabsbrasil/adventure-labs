/**
 * Gera arquivos .sql a partir do CSV para rodar no SQL Editor do Supabase.
 * Este script NÃO executa SQL no Supabase — apenas gera os .sql em scripts/output/.
 * No SQL Editor do Supabase, use os arquivos seed-candidates-part-01.sql, part-02.sql, etc.
 *
 * Uso: node scripts/generate-candidates-sql.js  (ou: npm run generate-candidates-sql)
 * Saída: scripts/output/seed-candidates-part-01.sql, part-02.sql, ...
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { parse } from 'csv-parse';
import { normalizeCity } from '../src/utils/cityNormalizer.js';
import { normalizeSource } from '../src/utils/sourceNormalizer.js';
import { normalizeInterestAreasString } from '../src/utils/interestAreaNormalizer.js';
import { normalizeChildrenForStorage } from '../src/utils/childrenNormalizer.js';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const PROJECT_ROOT = path.resolve(__dirname, '..');
const CSV_PATH = path.join(PROJECT_ROOT, 'assets', 'candidates', 'candidates.csv');
const OUTPUT_DIR = path.join(__dirname, 'output');
// Limite por arquivo para caber no SQL Editor do Supabase (~1MB). ~300 linhas por arquivo = seguro.
const ROWS_PER_FILE = 300;

const normalizers = { normalizeCity, normalizeSource, normalizeInterestAreasString, normalizeChildrenForStorage };

// Mesmo mapa do import-candidates-from-csv.js
const CSV_TO_DB = {
  'Carimbo de data/hora': 'original_timestamp',
  'COD': null,
  'Nome completo:': 'full_name',
  'Nos envie uma foto atual que você goste:': 'photo_url',
  'Data de Nascimento:': 'birth_date',
  'Idade': 'age',
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

function driveLinkToDirect(url) {
  if (!url || typeof url !== 'string') return url;
  const m = url.match(/drive\.google\.com\/open\?id=([^&\s]+)/i) || url.match(/drive\.google\.com\/file\/d\/([^/]+)/i);
  return m ? `https://drive.google.com/uc?export=view&id=${m[1]}` : url;
}

function parseDDMMYYYY(str) {
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

function parseTimestamp(str) {
  if (!str) return null;
  const d = parseDDMMYYYYHHMM(str);
  return d ? d.toISOString() : null;
}

function parseDate(str) {
  if (!str) return null;
  const d = parseDDMMYYYY(str);
  return d ? d.toISOString().slice(0, 10) : null;
}

function parseInteger(str) {
  if (str == null || str === '') return null;
  const n = parseInt(String(str).replace(/,/, '.'), 10);
  return isNaN(n) ? null : n;
}

function toDbRow(record, normalizers) {
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
      case 'original_timestamp':
        row[dbCol] = parseTimestamp(value);
        break;
      case 'birth_date':
      case 'graduation_date':
        row[dbCol] = parseDate(value);
        break;
      case 'age':
        row[dbCol] = parseInteger(value);
        break;
      default:
        row[dbCol] = value;
    }
  }
  row.status = row.status || 'Inscrito';
  row.origin = row.origin || 'csv_import';
  row.created_by = row.created_by || 'Importação CSV';
  if (row.phone == null || row.phone === '') row.phone = '';
  return row;
}

function readCsvRows() {
  return new Promise((resolve, reject) => {
    const rows = [];
    const parser = parse({ columns: true, skip_empty_lines: true, relax_column_count: true, trim: true });
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

function sqlEscape(val) {
  if (val === null || val === undefined) return 'NULL';
  if (Array.isArray(val)) {
    const escaped = val.map(v => '"' + String(v).replace(/\\/g, '\\\\').replace(/"/g, '\\"') + '"');
    return "ARRAY[" + val.map(v => "'" + String(v).replace(/'/g, "''") + "'") + "]::text[]";
  }
  return "'" + String(val).replace(/'/g, "''").replace(/\\/g, '\\\\') + "'";
}

const COLS = [
  'full_name', 'email', 'email_secondary', 'phone', 'birth_date', 'age',
  'marital_status', 'children_count', 'has_license', 'city', 'photo_url',
  'education', 'schooling_level', 'institution', 'graduation_date', 'is_studying',
  'experience', 'courses', 'certifications', 'interest_areas', 'cv_url', 'portfolio_url',
  'source', 'referral', 'salary_expectation', 'can_relocate', 'professional_references',
  'type_of_app', 'free_field', 'status', 'tags', 'origin', 'created_by', 'original_timestamp'
];

function rowToValues(row) {
  const tags = Array.isArray(row.tags) ? row.tags : (row.tags ? [row.tags] : []);
  const parts = COLS.map(c => {
    const v = row[c];
    if (c === 'tags') return sqlEscape(tags.length ? tags : []);
    if (v === null || v === undefined) return 'NULL';
    if (c === 'birth_date' || c === 'graduation_date') return sqlEscape(v);
    if (c === 'original_timestamp') return v ? sqlEscape(v) + '::timestamptz' : 'NULL';
    if (c === 'age' && typeof v === 'number') return String(v);
    return sqlEscape(v);
  });
  return '(' + parts.join(',') + ')';
}

async function main() {
  if (!fs.existsSync(CSV_PATH)) {
    console.error('Arquivo não encontrado:', CSV_PATH);
    process.exit(1);
  }

  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true });
  }
  // Remove partes antigas para não deixar sobras
  const existing = fs.readdirSync(OUTPUT_DIR).filter(f => f.startsWith('seed-candidates-part-') && f.endsWith('.sql'));
  existing.forEach(f => fs.unlinkSync(path.join(OUTPUT_DIR, f)));

  console.log('Lendo CSV...');
  const records = await readCsvRows();
  const rows = records
    .map(r => toDbRow(r, normalizers))
    .filter(r => r.email);
  console.log('Linhas válidas (com email):', rows.length);

  const BATCH = 80;
  const filePaths = [];
  let partIndex = 1;

  for (let start = 0; start < rows.length; start += ROWS_PER_FILE) {
    const partRows = rows.slice(start, start + ROWS_PER_FILE);
    const lines = [
      `-- Parte ${partIndex} de ${Math.ceil(rows.length / ROWS_PER_FILE)} (até ${ROWS_PER_FILE} linhas por arquivo para caber no SQL Editor)`,
      '-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.',
      '-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).',
      ''
    ];

    for (let i = 0; i < partRows.length; i += BATCH) {
      const chunk = partRows.slice(i, i + BATCH);
      const valuesList = chunk.map(rowToValues).join(',\n  ');
      lines.push(
        `INSERT INTO young_talents.candidates (${COLS.join(', ')})`,
        `VALUES\n  ${valuesList}`,
        ';',
        ''
      );
    }

    const partFile = path.join(OUTPUT_DIR, `seed-candidates-part-${String(partIndex).padStart(2, '0')}.sql`);
    fs.writeFileSync(partFile, lines.join('\n'), 'utf8');
    filePaths.push(partFile);
    partIndex++;
  }

  console.log('Arquivos gerados em', OUTPUT_DIR + ':');
  filePaths.forEach(p => console.log('  ', path.basename(p)));
  console.log('\nPróximo passo: no Supabase → SQL Editor, execute cada arquivo em ordem (part-01, part-02, ...).');
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});
