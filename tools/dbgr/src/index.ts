#!/usr/bin/env node

import { Command } from 'commander';
import * as dotenv from 'dotenv';
import { runDebug, formatReport } from './debug';
import { getGmailInstructions } from './config/gmail';
import { runConfigDomain, getDomainInstructionsText } from './config/domain';
import { getMigrateGuide } from './migrate';

dotenv.config();

const program = new Command();

program
  .name('dbgr')
  .description('CLI para debug e configuração Wix / Vercel (domínio, email, Gmail)')
  .version('1.0.0');

program
  .command('debug')
  .description('Diagnóstico: estado do domínio, DNS, Vercel e Wix')
  .option('--domain <dominio>', 'Domínio a analisar', process.env.TARGET_DOMAIN || 'capclear.com.br')
  .option('--json', 'Saída em JSON')
  .action(async (opts: { domain: string; json: boolean }) => {
    const report = await runDebug({
      domain: opts.domain,
      vercelToken: process.env.VERCEL_TOKEN,
      wixApiKey: process.env.WIX_API_KEY,
      wixSiteId: process.env.WIX_SITE_ID,
    });
    console.log(formatReport(report, opts.json));
  });

const configCmd = program
  .command('config')
  .description('Configuração (Gmail, domínio na Vercel)');

configCmd
  .command('gmail')
  .description('Instruções para configurar Gmail com o email corporativo')
  .option('--email <email>', 'Email', process.env.TARGET_EMAIL || 'contato@capclear.com.br')
  .option('--no-debug', 'Não rodar debug antes (usa apenas email para instruções genéricas)')
  .action(async (opts: { email: string; debug: boolean }) => {
    let report = null;
    if (opts.debug !== false) {
      const domain = opts.email.split('@')[1] || process.env.TARGET_DOMAIN || 'capclear.com.br';
      report = await runDebug({
        domain,
        vercelToken: process.env.VERCEL_TOKEN,
        wixApiKey: process.env.WIX_API_KEY,
        wixSiteId: process.env.WIX_SITE_ID,
      });
    }
    console.log(getGmailInstructions(opts.email, report));
  });

configCmd
  .command('domain')
  .description('Adicionar domínio ao projeto Vercel e exibir registros DNS')
  .requiredOption('--project <id-ou-nome>', 'ID ou nome do projeto Vercel')
  .option('--domain <dominio>', 'Domínio', process.env.TARGET_DOMAIN || 'capclear.com.br')
  .action(async (opts: { project: string; domain: string }) => {
    const token = process.env.VERCEL_TOKEN;
    if (!token) {
      console.error('Defina VERCEL_TOKEN no .env');
      process.exit(1);
    }
    const result = await runConfigDomain(token, opts.domain, opts.project);
    console.log(getDomainInstructionsText(result, opts.domain));
  });

program
  .command('migrate <target>')
  .description('Checklist e guia para migrar domínio ou email para fora do Wix')
  .action((target: string) => {
    if (target !== 'domain' && target !== 'email') {
      console.error('Use: dbgr migrate domain | dbgr migrate email');
      process.exit(1);
    }
    console.log(getMigrateGuide(target as 'domain' | 'email'));
  });

program.parse();
