/**
 * Cria usuário admin padrão no Supabase Auth e em young_talents.user_roles.
 * Uso: SUPABASE_URL=... SUPABASE_SERVICE_ROLE_KEY=... node scripts/create-admin-user.js
 *
 * Credenciais: admin@youngtalents.com.br / adventurelabs
 */

const SUPABASE_URL = process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL;
const SUPABASE_SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

const ADMIN_EMAIL = 'admin@youngtalents.com.br';
const ADMIN_PASSWORD = 'adventurelabs';
const ADMIN_NAME = 'Admin Young Talents';

async function main() {
  if (!SUPABASE_URL || !SUPABASE_SERVICE_ROLE_KEY) {
    console.error('Defina SUPABASE_URL e SUPABASE_SERVICE_ROLE_KEY (ou use .env).');
    process.exit(1);
  }

  const { createClient } = await import('@supabase/supabase-js');
  const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY, {
    auth: { autoRefreshToken: false, persistSession: false }
  });

  console.log('Criando usuário no Auth...');
  const { data: authData, error: authError } = await supabase.auth.admin.createUser({
    email: ADMIN_EMAIL,
    password: ADMIN_PASSWORD,
    email_confirm: true,
    user_metadata: { name: ADMIN_NAME }
  });

  if (authError) {
    if (authError.message?.includes('already been registered')) {
      console.log('Usuário já existe no Auth. Atualizando role...');
      const { data: existing } = await supabase.auth.admin.listUsers();
      const existingUser = existing?.users?.find(u => u.email === ADMIN_EMAIL);
      if (!existingUser) {
        console.error('Usuário não encontrado:', authError.message);
        process.exit(1);
      }
      await upsertRole(supabase, existingUser.id, ADMIN_EMAIL, ADMIN_NAME);
      console.log('Admin configurado. Login:', ADMIN_EMAIL, '/', ADMIN_PASSWORD);
      return;
    }
    console.error('Erro ao criar usuário:', authError.message);
    process.exit(1);
  }

  const userId = authData?.user?.id;
  if (!userId) {
    console.error('Usuário criado mas ID não retornado.');
    process.exit(1);
  }

  await upsertRole(supabase, userId, ADMIN_EMAIL, ADMIN_NAME);
  console.log('Admin criado. Login:', ADMIN_EMAIL, '/', ADMIN_PASSWORD);
}

async function upsertRole(supabase, userId, email, name) {
  const { data: existing } = await supabase.schema('young_talents').from('user_roles').select('id').eq('email', email).maybeSingle();
  const row = { user_id: userId, email, name, role: 'admin' };
  if (existing?.id) {
    const { error } = await supabase.schema('young_talents').from('user_roles').update(row).eq('id', existing.id);
    if (error) {
      console.error('Erro ao atualizar role:', error.message);
      process.exit(1);
    }
  } else {
    const { error } = await supabase.schema('young_talents').from('user_roles').insert(row);
    if (error) {
      console.error('Erro ao inserir role:', error.message);
      process.exit(1);
    }
  }
}

main();
