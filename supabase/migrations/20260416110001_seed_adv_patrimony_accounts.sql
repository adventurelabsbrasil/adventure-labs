-- Migration/Seed: 20260416110001_seed_adv_patrimony_accounts.sql
-- Description: Inventario inicial de contas patrimoniais da Adventure Labs (PJ)
-- Baseado em: DRE jan-mar 2026, OFX Sicredi, controles internos

INSERT INTO public.adv_patrimony_accounts
    (account_name, account_type, institution, account_number, currency, is_active, notes)
VALUES
    -- Contas correntes
    (
        'Sicredi Corrente (PJ)',
        'checking',
        'Sicredi',
        '***797213',
        'BRL',
        true,
        'Conta corrente principal da Adventure Labs. LEDGERBAL 30/03/2026: referencia no DRE. OFX em skills/sueli-conciliacao-bancaria/sicredi/'
    ),
    (
        'Banco Inter (PJ)',
        'checking',
        'Banco Inter',
        NULL,
        'BRL',
        true,
        'Conta Inter PJ. Usada para transferencias e aplicacoes. Conta Inter PJ em ativacao (abr/2026).'
    ),

    -- Investimentos
    (
        'CDB Banco Inter',
        'investment',
        'Banco Inter',
        NULL,
        'BRL',
        true,
        'Aplicacao CDB originada em fev/2026 (R$40k transferidos de Sicredi via Inter). Ativo financeiro — nao e despesa operacional.'
    ),

    -- Contas a receber (contratos ativos)
    (
        'Contas a Receber — Rose Portal Advocacia',
        'receivable',
        NULL,
        NULL,
        'BRL',
        true,
        'Contrato recorrente: assessoria trafego pago. ~R$3.500/mes + variaveis. Google Ads + LP Auxilio-Maternidade.'
    ),
    (
        'Contas a Receber — Benditta Marcenaria',
        'receivable',
        NULL,
        NULL,
        'BRL',
        true,
        'Contrato recorrente (3 meses): LPs + Meta Ads. R$2.000/mes.'
    ),
    (
        'Contas a Receber — Young Empreendimentos',
        'receivable',
        NULL,
        NULL,
        'BRL',
        true,
        'Meta + Google Ads + apps. Valor variavel conforme demanda. Mateus (coord) de ferias.'
    ),
    (
        'Contas a Receber — Lidera Solucoes',
        'receivable',
        NULL,
        NULL,
        'BRL',
        true,
        'Servicos pontuais + LideraSpace SaaS interno. ~R$450/servico.'
    ),

    -- Passivos
    (
        'Reembolso ao Socio — Nubank PF Ribas',
        'payable',
        'Nubank',
        NULL,
        'BRL',
        true,
        'Despesas da Adventure pagas no cartao PF do Rodrigo. R$730,70 pendente (jan-mar/2026): Cursor, Adobe, Google Ads, IOF. Contrapartida em passivo com socio.'
    ),
    (
        'Fornecedores a Pagar',
        'payable',
        NULL,
        NULL,
        'BRL',
        true,
        'Contas a pagar genericas (Rupe Creative, Triangullo, fornecedores diversos). Atualizar via Sueli/Omie.'
    ),

    -- Ativos fixos
    (
        'Ativo Imobilizado — Escritorio',
        'fixed_asset',
        NULL,
        NULL,
        'BRL',
        true,
        'Moveis, placa fachada (Alvo Certo, 2 parcelas de R$2.650 = R$5.300), equipamentos.'
    ),

    -- Ativos intangiveis
    (
        'Ativos Intangiveis — Stack Digital',
        'intangible_asset',
        NULL,
        NULL,
        'BRL',
        true,
        'Dominios (adventurelabs.com.br etc), certificados digitais (A1 Valid, A3), marca, codebase, automacoes n8n, agentes IA.'
    ),

    -- Patrimonio liquido
    (
        'Capital Social Integralizado',
        'equity',
        NULL,
        NULL,
        'BRL',
        true,
        'Capital integralizado: R$50.000 (Young, jan/2026) + R$500 (Rodrigo PF, jan/2026) + integralizacao subscrita R$1. Razao social: ADVENTURE COMUNICACOES LTDA.'
    );
