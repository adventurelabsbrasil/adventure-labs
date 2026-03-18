import {
  addDomainToProject,
  getDomainConfig,
  getProjectIdByName,
} from '../adapters/vercel';

export interface DomainConfigResult {
  done: boolean;
  message: string;
  dnsInstructions?: string[];
  error?: string;
}

export async function runConfigDomain(
  vercelToken: string,
  domain: string,
  projectIdOrName: string
): Promise<DomainConfigResult> {
  let projectId = projectIdOrName;
  if (!projectIdOrName.startsWith('prj_')) {
    const resolved = await getProjectIdByName(vercelToken, projectIdOrName);
    if (!resolved) {
      return {
        done: false,
        message: `Projeto não encontrado: ${projectIdOrName}`,
        error: 'Use o nome exato do projeto na Vercel ou o ID (prj_...).',
      };
    }
    projectId = resolved;
  }
  const add = await addDomainToProject(vercelToken, domain, projectId);

  if (!add.ok) {
    const config = await getDomainConfig(vercelToken, domain);
    if (config.configuration) {
      return {
        done: false,
        message: 'Domínio já pode estar em outro projeto ou falha ao adicionar.',
        dnsInstructions: formatDnsInstructions(domain, config.configuration),
        error: add.error,
      };
    }
    return { done: false, message: 'Falha ao adicionar domínio.', error: add.error };
  }

  const config = await getDomainConfig(vercelToken, domain);
  const dnsInstructions = config.configuration
    ? formatDnsInstructions(domain, config.configuration)
    : [];

  return {
    done: !config.verified,
    message: config.verified
      ? 'Domínio já está verificado na Vercel.'
      : 'Domínio adicionado. Configure os registros DNS no Wix (ou no registrador) conforme abaixo.',
    dnsInstructions,
  };
}

function formatDnsInstructions(
  domain: string,
  config: { cname?: string; aValues?: string[] }
): string[] {
  const lines: string[] = [];
  if (config.cname) {
    lines.push(`Adicione um registro CNAME para ${domain}:`);
    lines.push(`  Nome/Host: @ ou ${domain}`);
    lines.push(`  Valor/Aponta para: ${config.cname}`);
  }
  if (config.aValues && config.aValues.length > 0) {
    lines.push(`Ou use registros A para ${domain}:`);
    config.aValues.forEach((a) => lines.push(`  ${a}`));
  }
  return lines;
}

export function getDomainInstructionsText(result: DomainConfigResult, domain: string): string {
  const lines: string[] = [
    '# Configurar domínio na Vercel',
    `Domínio: ${domain}`,
    '',
    result.message,
    '',
  ];
  if (result.dnsInstructions?.length) {
    lines.push('## Registros DNS (configure no Wix ou no painel do registrador)', '');
    result.dnsInstructions.forEach((s) => lines.push(s, ''));
  }
  if (result.error) lines.push('Detalhe: ' + result.error);
  return lines.join('\n');
}
