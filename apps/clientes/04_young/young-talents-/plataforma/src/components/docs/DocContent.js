import DocVisaoGeral from './DocVisaoGeral';
import DocArquitetura from './DocArquitetura';
import DocRotas from './DocRotas';
import DocMapaDoSite from './DocMapaDoSite';
import DocFuncionalidades from './DocFuncionalidades';
import DocCamposApi from './DocCamposApi';
import DocManutencao from './DocManutencao';
import DocAcessos from './DocAcessos';

export const DOC_SECTIONS = [
  { slug: 'visao-geral', title: 'Visão Geral', sections: [
    { id: 'introducao', label: 'Introdução' },
    { id: 'para-que-serve', label: 'Para que serve' },
    { id: 'primeiros-passos', label: 'Primeiros passos' },
    { id: 'suporte', label: 'Suporte' }
  ], Component: DocVisaoGeral },
  { slug: 'arquitetura', title: 'Arquitetura e Stack', sections: [
    { id: 'stack', label: 'Stack tecnológica' },
    { id: 'estrutura', label: 'Estrutura do projeto' },
    { id: 'fluxo-dados', label: 'Fluxo de dados' }
  ], Component: DocArquitetura },
  { slug: 'rotas', title: 'Rotas e URLs', sections: [
    { id: 'publicas', label: 'Rotas públicas' },
    { id: 'autenticadas', label: 'Rotas autenticadas' },
    { id: 'query-params', label: 'Query parameters' }
  ], Component: DocRotas },
  { slug: 'mapa-do-site', title: 'Mapa do Site', sections: [
    { id: 'visao-geral', label: 'Visão geral' },
    { id: 'dashboard', label: 'Dashboard' },
    { id: 'pipeline', label: 'Pipeline' },
    { id: 'banco-talentos', label: 'Banco de Talentos' },
    { id: 'formularios', label: 'Formulários Recebidos' },
    { id: 'vagas', label: 'Vagas' },
    { id: 'relatorios', label: 'Relatórios' },
    { id: 'configuracoes', label: 'Configurações' }
  ], Component: DocMapaDoSite },
  { slug: 'funcionalidades', title: 'Funcionalidades por Módulo', sections: [
    { id: 'candidatos', label: 'Candidatos' },
    { id: 'vagas', label: 'Vagas' },
    { id: 'formulario-publico', label: 'Formulário público' },
    { id: 'filtros', label: 'Filtros' },
    { id: 'importacao', label: 'Importação' }
  ], Component: DocFuncionalidades },
  { slug: 'campos-e-api', title: 'Campos e Mapeamento (API)', sections: [
    { id: 'mapeamento', label: 'Mapeamento de campos' },
    { id: 'candidato', label: 'Campos do Candidato' },
    { id: 'vaga', label: 'Campos da Vaga' },
    { id: 'candidatura', label: 'Campos da Candidatura' }
  ], Component: DocCamposApi },
  { slug: 'manutencao', title: 'Manutenção', sections: [
    { id: 'scripts', label: 'Scripts CLI' },
    { id: 'migrations', label: 'Migrations Supabase' },
    { id: 'variaveis', label: 'Variáveis de ambiente' },
    { id: 'backup', label: 'Backup' }
  ], Component: DocManutencao },
  { slug: 'acessos', title: 'Acessos e Credenciais', sections: [
    { id: 'obter-credenciais', label: 'Como obter credenciais' },
    { id: 'vercel', label: 'Vercel' },
    { id: 'supabase', label: 'Supabase' },
    { id: 'github', label: 'GitHub' },
    { id: 'contato', label: 'Contato' }
  ], Component: DocAcessos }
];

export function getDocBySlug(slug) {
  return DOC_SECTIONS.find((d) => d.slug === slug) || DOC_SECTIONS[0];
}
