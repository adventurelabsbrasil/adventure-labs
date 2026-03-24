// Supabase Configuration - Módulo Único
// Centraliza a inicialização do Supabase para toda a aplicação

import { createClient } from '@supabase/supabase-js';

// Configuração do Supabase
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

// Validação das variáveis de ambiente
const hasRequiredConfig = supabaseUrl && supabaseAnonKey;
if (!hasRequiredConfig) {
  console.error('[Supabase] Erro: Variáveis de ambiente não configuradas corretamente.');
  console.error('[Supabase] Config:', {
    hasUrl: !!supabaseUrl,
    hasAnonKey: !!supabaseAnonKey
  });
  console.error('[Supabase] Verifique se VITE_SUPABASE_URL e VITE_SUPABASE_ANON_KEY estão definidas no Vercel.');
}

// Inicializa Supabase Client
let supabase;

try {
  if (!hasRequiredConfig) {
    throw new Error('Configuração do Supabase incompleta. Verifique as variáveis de ambiente no Vercel.');
  }
  supabase = createClient(supabaseUrl, supabaseAnonKey, {
    auth: {
      persistSession: true,
      autoRefreshToken: true,
      detectSessionInUrl: true
    },
    db: {
      schema: 'public' // Schema padrão para queries
    }
  });
} catch (error) {
  console.error('[Supabase] Erro ao inicializar Supabase:', error);
  // Não lança erro aqui para permitir que a aplicação carregue
  // A aplicação deve tratar o erro de forma mais amigável
  // Em produção, isso deve mostrar uma mensagem de erro ao usuário
}

// Exporta para uso em toda a aplicação
export { supabase };
export default supabase;
