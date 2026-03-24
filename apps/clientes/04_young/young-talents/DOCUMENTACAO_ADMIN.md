# Documentação para Administradores - Young Talents ATS

Guia técnico completo para administradores: stack, desenvolvimento, acesso e operações.

---

## Stack tecnológica

| Tecnologia | Versão | Uso |
|------------|--------|-----|
| React | 18 | Frontend UI |
| Vite | 5 | Build e dev server |
| Supabase | - | Backend (PostgreSQL, Auth, RLS) |
| Tailwind CSS | 3 | Estilos |
| Recharts | 2 | Gráficos do dashboard |
| Lucide React | - | Ícones |

### Estrutura do projeto

```
young-talents/
├── src/                    # Código frontend
│   ├── App.jsx             # App principal e estado global
│   ├── main.jsx            # Entry point
│   ├── supabase.js         # Cliente Supabase
│   ├── constants.js        # Constantes (Pipeline, campos, cores)
│   ├── components/         # Componentes React
│   ├── features/           # Módulos (Dashboard)
│   ├── routes/             # Rotas e layout
│   ├── utils/              # Utilitários e normalizadores
│   └── index.css           # Estilos globais e tema
├── supabase/
│   ├── migrations/         # SQL do schema (young_talents)
│   └── functions/          # Edge Functions
├── scripts/                # Scripts CLI
├── docs/                   # Documentação
└── assets/                 # Arquivos estáticos
```

---

## Como desenvolver

### Pré-requisitos

- Node.js 16 ou superior
- npm ou yarn

### Instalação

```bash
git clone <url-do-repositorio>
cd young-talents

npm install
```

### Variáveis de ambiente

Crie `.env.local` na raiz do projeto:

```env
VITE_SUPABASE_URL=https://seu-projeto.supabase.co
VITE_SUPABASE_ANON_KEY=sua-anon-key-aqui
SUPABASE_SERVICE_ROLE_KEY=sua-service-role-key-aqui
```

- **VITE_SUPABASE_URL**: URL do projeto Supabase (Settings > API)
- **VITE_SUPABASE_ANON_KEY**: Chave anon pública (Settings > API)
- **SUPABASE_SERVICE_ROLE_KEY**: Chave service role (apenas para scripts; não expor no frontend)

### Rodar em desenvolvimento

```bash
npm run dev
```

Acesse `http://localhost:5173` (ou a porta indicada no terminal).

### Build para produção

```bash
npm run build
npm run preview   # Preview do build
```

---

## Como acessar (admin)

### URL de produção

A URL em produção depende do deploy (ex.: Vercel). O administrador deve fornecer o endereço ao time.

### Login

- **Google OAuth**: clique em "Entrar com Google" e selecione a conta autorizada
- **Email/senha**: use as credenciais criadas via script ou Configurações

### Criar usuário administrador

1. **Via script** (recomendado):
   ```bash
   node scripts/setup-supabase-users.js
   # ou
   node scripts/create-admin-user.js
   ```
   Requer `SUPABASE_SERVICE_ROLE_KEY` no `.env.local`.

2. **Documentação detalhada**: [docs/GUIA_CRIAR_USUARIO_ADMIN.md](./docs/GUIA_CRIAR_USUARIO_ADMIN.md)

---

## Scripts e operações

| Comando | Descrição |
|---------|-----------|
| `npm run dev` | Servidor de desenvolvimento |
| `npm run build` | Build para produção |
| `npm run preview` | Preview do build |
| `npm run import-candidates` | Importar candidatos de `assets/candidates/candidates.csv` |
| `npm run sync-candidates-csv` | Excluir todos os candidatos e reimportar do CSV |
| `npm run verify-csv-supabase` | Verificar integridade CSV vs Supabase |
| `npm run delete-candidates-supabase` | Excluir todos os candidatos do Supabase |
| `node scripts/setup-supabase-users.js` | Criar usuários iniciais |
| `node scripts/create-admin-user.js` | Criar usuário admin |

### Migrations Supabase

Execute os arquivos em `supabase/migrations/` na ordem numérica via SQL Editor do Supabase. Guia completo: [docs/GUIA_SETUP_SUPABASE.md](./docs/GUIA_SETUP_SUPABASE.md).

### Backup

- [docs/GUIA_BACKUP_SUPABASE.md](./docs/GUIA_BACKUP_SUPABASE.md)
- Supabase Dashboard > Database > Backups (disponível conforme plano)

---

## Links úteis

- **Supabase Dashboard**: [app.supabase.com](https://app.supabase.com)
- **Vercel**: [vercel.com/dashboard](https://vercel.com/dashboard)
- **Repositório**: GitHub do projeto

### Documentação existente

- [docs/GUIA_SETUP_SUPABASE.md](./docs/GUIA_SETUP_SUPABASE.md) - Configuração do Supabase
- [docs/GUIA_CRIAR_USUARIO_ADMIN.md](./docs/GUIA_CRIAR_USUARIO_ADMIN.md) - Criar usuário admin
- [docs/CHECKLIST_PRE_DEPLOY.md](./docs/CHECKLIST_PRE_DEPLOY.md) - Checklist antes do deploy
- [docs/ROTAS_E_NAVEGACAO.md](./docs/ROTAS_E_NAVEGACAO.md) - Rotas do sistema
- [docs/IMPORTAR_CSV_CANDIDATOS.md](./docs/IMPORTAR_CSV_CANDIDATOS.md) - Importação via CLI
- [docs/TROUBLESHOOTING_LOGIN.md](./docs/TROUBLESHOOTING_LOGIN.md) - Problemas de login

---

**Última atualização:** Fevereiro 2025
