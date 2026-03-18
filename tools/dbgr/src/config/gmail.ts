import { DebugReport } from '../types';

type Provider = 'google_workspace' | 'wix_own' | 'unknown';

function inferProvider(report: DebugReport): Provider {
  const mx = report.dns.mx.map((m) => m.exchange.toLowerCase());
  if (mx.some((e) => e.includes('google') || e.includes('googlemail'))) return 'google_workspace';
  if (mx.some((e) => e.includes('wix') || e.includes('wixemails'))) return 'wix_own';
  return 'unknown';
}

export function getGmailInstructions(email: string, report?: DebugReport | null): string {
  const provider = report ? inferProvider(report) : 'unknown';
  const lines: string[] = [
    '# Configurar Gmail com seu email corporativo',
    `Email: ${email}`,
    '',
  ];

  if (provider === 'google_workspace') {
    lines.push(
      '## Provedor detectado: Google Workspace (revenda Wix)',
      '',
      'Use os servidores do Gmail com este endereço e uma **Senha de app** (não a senha normal da conta).',
      '',
      '### Parâmetros',
      '  - **Tipo:** IMAP',
      '  - **Servidor de entrada:** imap.gmail.com (porta 993, SSL)',
      '  - **Servidor de saída:** smtp.gmail.com (porta 587, TLS)',
      '  - **Usuário:** ' + email,
      '  - **Senha:** use uma Senha de app (contas Google com 2FA exigem isso)',
      '',
      '### Como criar uma Senha de app',
      '  1. Acesse https://myaccount.google.com/security',
      '  2. Ative a verificação em duas etapas (se ainda não tiver).',
      '  3. Em "Senhas de app", crie uma nova (selecione "Outro" e nomeie, ex.: Dbgr).',
      '  4. Use a senha de 16 caracteres gerada no cliente de email (Gmail app ou outro).',
      '',
      '### No Gmail (app ou web)',
      '  - Adicionar outra conta → Configuração manual → IMAP',
      '  - Preencha o email, a senha de app e os servidores acima.',
    );
  } else if (provider === 'wix_own') {
    lines.push(
      '## Provedor detectado: email Wix (servidores próprios)',
      '',
      'O Wix pode usar servidores próprios. Consulte o painel do Wix (Configurações → Email comercial)',
      'para os endereços exatos de IMAP/SMTP. Em muitos casos são:',
      '  - Entrada: imap.secureserver.net ou similar',
      '  - Saída: smtp.secureserver.net (porta 465 ou 587)',
      '',
      'Se o plano for Google Workspace pela Wix, use imap.gmail.com / smtp.gmail.com e Senha de app (veja acima).',
    );
  } else {
    lines.push(
      '## Provedor não identificado pelos registros MX',
      '',
      'Execute `dbgr debug` para que o Dbgr analise os MX do domínio.',
      'Se o seu plano de email comercial Wix for **Google Workspace**:',
      '  - Servidores: imap.gmail.com e smtp.gmail.com',
      '  - Use uma **Senha de app** (não a senha normal). Veja instruções acima.',
      'Se for outro provedor, confira no painel Wix os dados IMAP/SMTP.',
    );
  }

  return lines.join('\n');
}
