import { DebugReport, DebugDns, DebugVercel, DebugWix, GmailDiagnostic } from './types';
import { resolveDns } from './adapters/dns';
import { fetchVercelDebug } from './adapters/vercel';
import { fetchWixDebug } from './adapters/wix';

const GOOGLE_MX_HOSTS = [
  'aspmx.l.google.com',
  'smtp.google.com',
  'alt1.aspmx.l.google.com',
  'alt2.aspmx.l.google.com',
  'alt3.aspmx.l.google.com',
  'alt4.aspmx.l.google.com',
];
const GOOGLE_VERIFICATION_PREFIX = 'google-site-verification=';

function buildGmailDiagnostic(dns: DebugDns): GmailDiagnostic {
  const mxLower = dns.mx.map((m) => m.exchange.toLowerCase());
  const mxPointsToGoogle =
    mxLower.length > 0 &&
    mxLower.some((ex) => GOOGLE_MX_HOSTS.some((g) => ex.includes(g)) || ex.includes('google.com'));
  const txtVerificationPresent = dns.txt.some((t) =>
    String(t).toLowerCase().includes(GOOGLE_VERIFICATION_PREFIX)
  );

  const suggestions: string[] = [];
  if (!txtVerificationPresent) {
    suggestions.push(
      'No Admin Console do Google: Conta > Domínios > Gerenciar domínios > Verificar domínio. Copie o valor TXT (começa com google-site-verification=).'
    );
    suggestions.push(
      'No Wix: painel do site > Configurações > Domínio > Gerenciar > DNS (ou "Registros DNS"). Adicione um registro TXT com o nome/host em branco ou @ e o valor colado do Google.'
    );
    suggestions.push(
      'Aguarde alguns minutos (até 48h em casos raros) e volte no Admin Console para clicar em "Verificar".'
    );
  }
  if (txtVerificationPresent && !mxPointsToGoogle) {
    suggestions.push(
      'Domínio já tem verificação TXT do Google. Para o Gmail receber emails: no Admin Console veja os registros MX recomendados; no Wix (DNS) adicione os MX do Google (ex.: smtp.google.com prioridade 1, ou aspmx.l.google.com etc.).'
    );
  }
  if (mxPointsToGoogle && !txtVerificationPresent) {
    suggestions.push(
      'Os MX já apontam para o Google, mas falta o TXT de verificação. Sem o TXT o Admin Console não conclui "Verificar o Gmail". Siga os passos acima para adicionar o TXT no Wix.'
    );
  }
  if (txtVerificationPresent && mxPointsToGoogle) {
    suggestions.push(
      'TXT de verificação e MX do Google encontrados. Se ainda não consegue "Verificar o Gmail": confira no Admin se o domínio está como "principal" ou "alias"; tente limpar cache do navegador ou outro navegador; confira se o TXT no Wix está exatamente igual ao do Google (sem espaços extras).'
    );
  }

  return { mxPointsToGoogle, txtVerificationPresent, suggestions };
}

export async function runDebug(options: {
  domain: string;
  vercelToken?: string;
  wixApiKey?: string;
  wixSiteId?: string;
}): Promise<DebugReport> {
  const { domain, vercelToken, wixApiKey, wixSiteId } = options;

  const [dns, vercel, wix] = await Promise.all([
    resolveDns(domain),
    vercelToken ? fetchVercelDebug(vercelToken, domain) : Promise.resolve(noVercel()),
    fetchWixDebug(wixApiKey, wixSiteId),
  ]);

  const gmailDiagnostic = buildGmailDiagnostic(dns);
  const summary = buildSummary(domain, dns, vercel, wix, gmailDiagnostic);

  return {
    timestamp: new Date().toISOString(),
    domain,
    dns,
    vercel,
    wix,
    gmailDiagnostic,
    summary,
  };
}

function noVercel(): DebugVercel {
  return {
    projects: [],
    domains: [],
    targetDomainConfig: null,
    error: 'VERCEL_TOKEN não definido. Defina no .env para incluir dados da Vercel.',
  };
}

function buildSummary(
  domain: string,
  dns: DebugDns,
  vercel: DebugVercel,
  wix: DebugWix,
  gmail: GmailDiagnostic
): { ok: string[]; missing: string[] } {
  const ok: string[] = [];
  const missing: string[] = [];

  if (dns.a.length > 0) ok.push(`DNS A: ${dns.a.join(', ')}`);
  else missing.push('DNS A: nenhum registro (domínio pode não apontar para um servidor)');

  if (dns.cname.length > 0) ok.push(`DNS CNAME: ${dns.cname.join(', ')}`);
  if (dns.mx.length > 0) ok.push(`DNS MX: ${dns.mx.map((m) => m.exchange).join(', ')}`);
  else missing.push('DNS MX: nenhum (email pode não funcionar para este domínio)');

  if (gmail.txtVerificationPresent) ok.push('Gmail/Workspace: TXT de verificação do Google encontrado');
  else missing.push('Gmail/Workspace: TXT de verificação do Google não encontrado (necessário para "Verificar o Gmail" no Admin)');
  if (gmail.mxPointsToGoogle) ok.push('Gmail/Workspace: MX apontam para o Google');
  else missing.push('Gmail/Workspace: MX não apontam para o Google (ou ainda não configurados)');

  if (!vercel.error) {
    if (vercel.projects.length > 0) ok.push(`Vercel: ${vercel.projects.length} projeto(s)`);
    if (vercel.domains.some((d) => d.name === domain || d.name.endsWith('.' + domain)))
      ok.push(`Vercel: domínio ${domain} listado`);
    else missing.push(`Vercel: domínio ${domain} não encontrado nos domínios do time`);
    if (vercel.targetDomainConfig?.verified) ok.push('Vercel: domínio verificado');
    else missing.push('Vercel: domínio não verificado ou não adicionado');
  } else {
    missing.push(`Vercel: ${vercel.error}`);
  }

  if (wix.error) missing.push(`Wix: ${wix.error}`);

  return { ok, missing };
}

export function formatReport(report: DebugReport, json: boolean): string {
  if (json) return JSON.stringify(report, null, 2);

  const lines: string[] = [
    '# Relatório Dbgr',
    `Data: ${report.timestamp}`,
    `Domínio: ${report.domain}`,
    '',
    '## DNS',
    `  A:    ${report.dns.a.length ? report.dns.a.join(', ') : '(nenhum)'}`,
    `  CNAME: ${report.dns.cname.length ? report.dns.cname.join(', ') : '(nenhum)'}`,
    `  MX:   ${report.dns.mx.length ? report.dns.mx.map((m) => `${m.exchange} (pri ${m.priority})`).join(', ') : '(nenhum)'}`,
    `  TXT:  ${report.dns.txt.length ? report.dns.txt.slice(0, 3).join('; ') + (report.dns.txt.length > 3 ? '...' : '') : '(nenhum)'}`,
    '',
    '## Vercel',
  ];

  if (report.vercel.error) {
    lines.push(`  ${report.vercel.error}`);
  } else {
    lines.push(`  Projetos: ${report.vercel.projects.map((p) => p.name).join(', ') || '(nenhum)'}`);
    lines.push(`  Domínios: ${report.vercel.domains.map((d) => d.name).join(', ') || '(nenhum)'}`);
    const cfg = report.vercel.targetDomainConfig;
    lines.push(`  ${report.domain}: ${cfg?.verified ? 'verificado' : cfg?.suggestion || 'não verificado'}`);
  }

  lines.push('', '## Wix', `  ${report.wix.note}`);
  if (report.wix.manualSteps?.length) {
    report.wix.manualSteps.forEach((s) => lines.push(`  - ${s}`));
  }

  const g = report.gmailDiagnostic;
  lines.push(
    '',
    '## Diagnóstico Gmail / Google Workspace (revenda Wix)',
    '  Para concluir "Verificar o Gmail" no Admin Console do Google, o domínio precisa do registro TXT de verificação no DNS (Wix).',
    `  TXT de verificação do Google no DNS: ${g.txtVerificationPresent ? 'Sim' : 'Não'}`,
    `  MX apontam para o Google: ${g.mxPointsToGoogle ? 'Sim' : 'Não'}`,
    ''
  );
  if (g.suggestions.length > 0) {
    lines.push('  O que fazer:');
    g.suggestions.forEach((s) => lines.push(`    - ${s}`));
  }

  lines.push('', '## Resumo', '  OK:', ...report.summary.ok.map((s) => `    - ${s}`), '  Falta:', ...report.summary.missing.map((s) => `    - ${s}`));

  return lines.join('\n');
}
