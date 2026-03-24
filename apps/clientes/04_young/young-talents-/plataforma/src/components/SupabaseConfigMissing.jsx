import React from 'react';
import { AlertTriangle } from 'lucide-react';

/**
 * Build de produção sem VITE_SUPABASE_URL / VITE_SUPABASE_ANON_KEY.
 * Evita sessão fictícia e deixa o diagnóstico explícito para Vercel.
 */
export default function SupabaseConfigMissing() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-gray-950 p-6">
      <div className="max-w-lg w-full rounded-2xl border border-amber-200 dark:border-amber-900/50 bg-white dark:bg-gray-900 shadow-lg p-8">
        <div className="flex items-start gap-3 text-amber-800 dark:text-amber-200">
          <AlertTriangle className="shrink-0 mt-0.5" size={24} aria-hidden />
          <div>
            <h1 className="text-lg font-semibold text-gray-900 dark:text-white">Configuração Supabase em falta</h1>
            <p className="mt-2 text-sm text-gray-600 dark:text-gray-400">
              O ambiente de produção não tem <code className="text-xs bg-gray-100 dark:bg-gray-800 px-1 rounded">VITE_SUPABASE_URL</code> e{' '}
              <code className="text-xs bg-gray-100 dark:bg-gray-800 px-1 rounded">VITE_SUPABASE_ANON_KEY</code> definidos no build (ex.: Vercel →
              Settings → Environment Variables → Production).
            </p>
            <p className="mt-3 text-sm text-gray-600 dark:text-gray-400">
              Depois de adicionar as variáveis, faça um <strong>redeploy</strong>. Ver também{' '}
              <span className="text-gray-800 dark:text-gray-200">docs/TROUBLESHOOTING_LOGIN.md</span> no repositório da plataforma.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
