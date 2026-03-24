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
  supabase = undefined;
}

/** Cliente criado com sucesso (envs válidas e createClient ok). Em produção sem isto, não usar fallback de utilizador fictício. */
export const isSupabaseClientReady = Boolean(supabase);

// Exporta para uso em toda a aplicação
export { supabase };
export default supabase;
