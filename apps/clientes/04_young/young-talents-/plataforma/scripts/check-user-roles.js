/**
 * Script para verificar roles de usuários no Supabase
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import { existsSync } from 'fs';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const envLocalPath = join(__dirname, '..', '.env.local');
if (existsSync(envLocalPath)) {
  dotenv.config({ path: envLocalPath });
}

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('❌ Variáveis de ambiente não configuradas');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey, {
  auth: {
    autoRefreshToken: false,
    persistSession: false
  }
});

async function checkRoles() {
  console.log('🔍 Verificando roles de usuários...\n');

  // Listar todos os usuários
  const { data: users, error: usersError } = await supabase.auth.admin.listUsers();
  
  if (usersError) {
    console.error('❌ Erro ao listar usuários:', usersError);
    return;
  }

  console.log(`📧 Total de usuários: ${users.users.length}\n`);

  // Tentar buscar roles sem schema específico
  console.log('Tentando buscar da tabela user_roles (schema public)...');
  const { data: rolesPublic, error: errorPublic } = await supabase
    .from('user_roles')
    .select('*');

  if (!errorPublic && rolesPublic) {
    console.log('✅ Encontrado no schema public:', rolesPublic.length, 'roles');
    console.log(rolesPublic);
  } else {
    console.log('❌ Erro no schema public:', errorPublic?.message);
  }

  // Tentar buscar roles com schema young_talents
  console.log('\nTentando buscar da tabela young_talents.user_roles...');
  const { data: rolesYoung, error: errorYoung } = await supabase
    .schema('young_talents')
    .from('user_roles')
    .select('*');

  if (!errorYoung && rolesYoung) {
    console.log('✅ Encontrado no schema young_talents:', rolesYoung.length, 'roles');
    console.log(rolesYoung);
  } else {
    console.log('❌ Erro no schema young_talents:', errorYoung?.message);
  }

  // Mostrar usuários sem role
  console.log('\n📋 Usuários cadastrados:');
  for (const user of users.users) {
    console.log(`\n- ${user.email}`);
    console.log(`  ID: ${user.id}`);
    console.log(`  Criado em: ${user.created_at}`);
  }

  process.exit(0);
}

checkRoles();
