/**
 * Script para criar usuários iniciais no Supabase Authentication
 *
 * Execute: node scripts/setup-supabase-users.js
 *
 * Requisitos:
 * - Variáveis de ambiente: SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY
 * - Arquivo scripts/users-setup.local.json com a lista de usuários (não versionado)
 *   Copie de: scripts/users-setup.example.json
 *
 * NOTA: A service role key e o arquivo .local não devem ser commitados.
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import { existsSync, readFileSync } from 'fs';

// Obter diretório atual (ES modules)
const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Carrega variáveis de ambiente - tenta .env.local primeiro, depois .env
const envLocalPath = join(__dirname, '..', '.env.local');
const envPath = join(__dirname, '..', '.env');

if (existsSync(envLocalPath)) {
  dotenv.config({ path: envLocalPath });
  console.log('📁 Carregando variáveis de .env.local');
} else if (existsSync(envPath)) {
  dotenv.config({ path: envPath });
  console.log('📁 Carregando variáveis de .env');
} else {
  dotenv.config(); // Tenta carregar do padrão
  console.log('📁 Tentando carregar variáveis de ambiente padrão');
}

const supabaseUrl = process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('❌ Erro: Variáveis de ambiente não configuradas.');
  console.error('Configure SUPABASE_URL e SUPABASE_SERVICE_ROLE_KEY no arquivo .env');
  process.exit(1);
}

// Arquivo local com usuários (não versionado - não commitar credenciais)
const usersSetupPath = join(__dirname, 'users-setup.local.json');
if (!existsSync(usersSetupPath)) {
  console.error('❌ Arquivo de usuários não encontrado: scripts/users-setup.local.json');
  console.error('');
  console.error('Crie o arquivo a partir do exemplo:');
  console.error('  cp scripts/users-setup.example.json scripts/users-setup.local.json');
  console.error('');
  console.error('Edite users-setup.local.json com os emails, senhas e roles desejados.');
  console.error('O arquivo .local não é versionado (está no .gitignore).');
  process.exit(1);
}

let users;
try {
  const raw = readFileSync(usersSetupPath, 'utf8');
  const config = JSON.parse(raw);
  users = Array.isArray(config.users) ? config.users : [];
} catch (err) {
  console.error('❌ Erro ao ler users-setup.local.json:', err.message);
  process.exit(1);
}

if (users.length === 0) {
  console.error('❌ Nenhum usuário definido em users-setup.local.json (array "users" vazio).');
  process.exit(1);
}

// Criar cliente Supabase com service role (tem permissões de admin)
const supabaseAdmin = createClient(supabaseUrl, supabaseServiceKey, {
  auth: {
    autoRefreshToken: false,
    persistSession: false
  },
  db: {
    schema: 'young_talents' // Define o schema padrão
  }
});

async function createUser(userData) {
  try {
    console.log(`\n📧 Criando usuário: ${userData.email}...`);
    
    // Criar usuário no Supabase Auth
    const { data: authData, error: authError } = await supabaseAdmin.auth.admin.createUser({
      email: userData.email,
      password: userData.password,
      email_confirm: true, // Confirmar email automaticamente
      user_metadata: {
        name: userData.name
      }
    });

    if (authError) {
      // Verificar se é erro de usuário já existente
      const isAlreadyRegistered = authError.message?.includes('already registered') || 
                                  authError.message?.includes('already been registered') ||
                                  authError.status === 422;
      
      if (isAlreadyRegistered) {
        console.log(`⚠️  Usuário ${userData.email} já existe. Verificando role...`);
        
        // Buscar usuário existente
        const { data: existingUsersData, error: listError } = await supabaseAdmin.auth.admin.listUsers();
        
        if (listError) {
          throw new Error(`Erro ao listar usuários: ${listError.message}`);
        }
        
        const existingUser = existingUsersData?.users?.find(u => u.email === userData.email);
        
        if (!existingUser) {
          throw new Error('Usuário existe mas não foi encontrado na lista');
        }

        console.log(`   Encontrado usuário ID: ${existingUser.id}`);

        // Verificar se role já existe usando schema explícito
        const { data: existingRole, error: roleFetchError } = await supabaseAdmin
          .schema('young_talents')
          .from('user_roles')
          .select('*')
          .eq('user_id', existingUser.id)
          .maybeSingle();
        
        if (roleFetchError && roleFetchError.code !== 'PGRST116') { // PGRST116 = no rows returned
          console.error(`   Erro ao buscar role: ${roleFetchError.message}`);
          throw roleFetchError;
        }
        
        // Continuar com a lógica de criar/atualizar role abaixo
        let roleProcessed = false;

        if (existingRole) {
          // Atualizar role existente
          const { error: updateError } = await supabaseAdmin
            .schema('young_talents')
            .from('user_roles')
            .update({
              role: userData.role,
              name: userData.name,
              updated_at: new Date().toISOString()
            })
            .eq('id', existingRole.id);

          if (updateError) throw updateError;
          console.log(`✅ Role atualizada para ${userData.role}`);
          return; // Sucesso - role atualizada
        } else {
          // Criar role se não existir
          const { error: insertError } = await supabaseAdmin
            .schema('young_talents')
            .from('user_roles')
            .insert([{
              user_id: existingUser.id,
              email: userData.email,
              name: userData.name,
              role: userData.role,
              created_at: new Date().toISOString()
            }]);

          if (insertError) throw insertError;
          console.log(`✅ Role ${userData.role} criada`);
          return; // Sucesso - role criada
        }
      }
      // Se não for erro de usuário já existente, lançar o erro
      throw authError;
    }

    if (!authData.user) {
      throw new Error('Usuário não foi criado');
    }

    console.log(`✅ Usuário criado: ${authData.user.id}`);

    // Criar role na tabela user_roles
    const { error: roleError } = await supabaseAdmin
      .schema('young_talents')
      .from('user_roles')
      .insert([{
        user_id: authData.user.id,
        email: userData.email,
        name: userData.name,
        role: userData.role,
        created_at: new Date().toISOString()
      }]);

    if (roleError) {
      // Se role já existe, atualizar
      if (roleError.code === '23505') { // Unique violation
        console.log('⚠️  Role já existe. Atualizando...');
        const { error: updateError } = await supabaseAdmin
          .schema('young_talents')
          .from('user_roles')
          .update({
            role: userData.role,
            name: userData.name,
            updated_at: new Date().toISOString()
          })
          .eq('user_id', authData.user.id);

        if (updateError) throw updateError;
        console.log('✅ Role atualizada');
      } else {
        throw roleError;
      }
    } else {
      console.log(`✅ Role ${userData.role} configurada`);
    }

  } catch (error) {
    console.error(`❌ Erro ao criar usuário ${userData.email}:`, error.message);
    throw error;
  }
}

async function setupUsers() {
  console.log('🚀 Iniciando setup de usuários no Supabase...\n');
  console.log('⚠️  IMPORTANTE: Certifique-se de que:');
  console.log('   1. O schema young_talents existe');
  console.log('   2. A tabela young_talents.user_roles existe');
  console.log('   3. As migrations foram executadas\n');

  const results = {
    success: [],
    failed: []
  };

  for (const user of users) {
    try {
      await createUser(user);
      results.success.push(user.email);
    } catch (error) {
      console.error(`Falha ao criar ${user.email}:`, error.message);
      results.failed.push({ email: user.email, error: error.message });
    }
  }

  console.log('\n📊 Resumo:');
  console.log(`✅ Sucesso: ${results.success.length} usuários`);
  console.log(`❌ Falhas: ${results.failed.length} usuários`);
  
  if (results.failed.length > 0) {
    console.log('\n❌ Usuários com falha:');
    results.failed.forEach(f => {
      console.log(`   - ${f.email}: ${f.error}`);
    });
  }

  console.log('\n🎉 Setup concluído!');
  console.log('\n⚠️  LEMBRE-SE: Oriente os usuários a alterar a senha no primeiro login e use fluxo de redefinição na aplicação.');
  
  process.exit(results.failed.length > 0 ? 1 : 0);
}

setupUsers();
