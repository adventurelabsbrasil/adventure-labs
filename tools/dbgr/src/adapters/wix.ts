import { DebugWix } from '../types';

/** Extrai o Site ID aceito pela API Wix: só o GUID (metaSiteId se vier no formato ?metaSiteId=xxx). */
function normalizeWixSiteId(raw: string | undefined): string | undefined {
  if (!raw || !raw.trim()) return undefined;
  const s = raw.trim();
  const metaMatch = s.match(/[?&]metaSiteId=([a-f0-9-]+)/i);
  if (metaMatch) return metaMatch[1];
  const guidMatch = s.match(/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}/i);
  if (guidMatch) return guidMatch[0];
  return s;
}

/**
 * Wix não expõe API pública completa para "conta de email" ou DNS do plano comercial.
 * Este adapter retorna um relatório com passos manuais e, se houver WIX_API_KEY/SITE_ID,
 * tenta usar a API de negócio (quando aplicável).
 */
export async function fetchWixDebug(_apiKey?: string, _siteId?: string): Promise<DebugWix> {
  const siteId = normalizeWixSiteId(_siteId);
  const result: DebugWix = {
    note: 'O Wix não expõe API pública para estado do email comercial ou DNS do domínio. Use o painel Wix para verificar.',
    manualSteps: [
      'No Wix: Configurações do site → Domínio → verifique se capclear.com.br está conectado.',
      'No Wix: Configurações → Email comercial → confira se contato@capclear.com.br está ativo e qual provedor (Google Workspace ou Wix).',
      'Para Gmail: se for Google Workspace (revenda Wix), use imap.gmail.com / smtp.gmail.com e ative "Senha de app" na conta Google.',
      'Para DNS: os registros MX/A/CNAME são gerenciados no Wix em Domínio → DNS ou no painel do email.',
    ],
  };

  if (_apiKey && siteId) {
    try {
      // Placeholder: Wix REST Business Management pode ter endpoints limitados.
      // https://dev.wix.com/docs/rest
      const res = await fetch(
        `https://www.wixapis.com/site-properties/v4/sites/${siteId}/properties`,
        {
          headers: {
            Authorization: _apiKey,
            'Content-Type': 'application/json',
          },
        }
      );
      if (res.ok) {
        result.note += ' API Wix (site properties) acessível. Recursos de email/DNS ainda requerem painel.';
      }
    } catch {
      result.error = 'Falha ao tentar API Wix (credenciais ou rede).';
    }
  }

  return result;
}
