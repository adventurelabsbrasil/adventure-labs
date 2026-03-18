export type MigrateTarget = 'domain' | 'email';

const DOMAIN_CHECKLIST = [
  'Decidir: apenas apontar DNS (A/CNAME) para a Vercel ou transferir o domínio para outro registrador.',
  'Se apenas DNS: no Wix (Domínio → Gerenciar → DNS), adicione CNAME ou A conforme a Vercel (use `dbgr config domain`).',
  'Aguarde a propagação DNS (até 48h, geralmente minutos).',
  'Na Vercel, o domínio deve aparecer como verificado.',
  'Se for transferir o domínio: desbloqueie o domínio no Wix, obtenha o código EPP e inicie a transferência no novo registrador.',
];

const EMAIL_CHECKLIST = [
  'Escolher novo provedor (ex.: Google Workspace direto, Zoho, etc.).',
  'No novo provedor: adicionar o domínio e configurar os usuários (ex.: contato@capclear.com.br).',
  'Obter os registros MX (e SPF/DKIM se necessário) do novo provedor.',
  'No Wix (ou onde estiver o DNS do domínio): substituir os MX antigos pelos novos.',
  'Aguardar propagação e verificação do novo provedor.',
  'Migrar mensagens antigas (se necessário) via IMAP ou ferramenta do provedor.',
  'Após confirmar que o email novo funciona, cancelar o plano de email comercial no Wix.',
];

export function getMigrateGuide(target: MigrateTarget): string {
  const title = target === 'domain' ? 'Migração de domínio (sair do Wix)' : 'Migração de email (sair do Wix)';
  const steps = target === 'domain' ? DOMAIN_CHECKLIST : EMAIL_CHECKLIST;

  const lines: string[] = [
    `# ${title}`,
    '',
    'Siga os passos abaixo. O Dbgr pode automatizar partes (ex.: Vercel); o resto requer o painel do Wix ou do novo provedor.',
    '',
    '## Checklist',
    '',
    ...steps.map((s, i) => `${i + 1}. ${s}`),
    '',
    '---',
    'Para configurar o domínio na Vercel agora: `dbgr config domain --project <id-do-projeto>`',
    'Para instruções de Gmail com o email atual: `dbgr config gmail`',
  ];

  return lines.join('\n');
}
