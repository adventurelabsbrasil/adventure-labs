# 🚀 Guia Completo: Versionamento do n8n no GitHub

Neste guia, você aprenderá a versioná-lo desde o início com commits, branches e boas práticas.

---

## 📋 PARTE 1: Setup Inicial do Git (Primeiro Acesso)

### Passo 1: Criar Repositório no GitHub

1. Acesse [github.com](https://github.com) e faça login
2. Clique em **"+"** (canto superior direito) → **"New repository"**
3. Preencha:
   - **Repository name:** `n8n-autonomous-loop` (ou outro nome que preferir)
   - **Description:** `C-Suite Autonomous Loop - Adventure Labs - n8n Workflows`
   - **Visibility:** `Private` (recomendado para dados sensíveis)
   - **Initialize with README:** ✅ Marque
   - **Add .gitignore:** Python (você vai customizar)
   - **License:** Deixe em branco ou escolha MIT
4. Clique **"Create repository"**

---

### Passo 2: Clonar o Repositório Localmente

Abra seu terminal/CMD e execute:

```bash
# Substitua OWNER_USERNAME pelo seu usuário GitHub
git clone https://github.com/OWNER_USERNAME/n8n-autonomous-loop.git

# Entre no diretório
cd n8n-autonomous-loop
```

---

### Passo 3: Estruturar o Projeto

Execute este script para criar a estrutura recomendada:

```bash
# Criar pastas
mkdir -p workflows/{production,staging,development,archive}
mkdir -p docs/{bugs,features,optimization}
mkdir -p .github/workflows
mkdir -p scripts

# Criar arquivos importantes
touch README.md
touch .gitignore
touch CHANGELOG.md
touch CONTRIBUTING.md

echo "✅ Estrutura criada!"
```

### Seu projeto ficará assim:

```
n8n-autonomous-loop/
├── workflows/
│   ├── production/          # Fluxos em produção
│   │   └── csuite-loop-v7.json
│   ├── staging/            # Testes
│   │   └── csuite-loop-v7-test.json
│   ├── development/        # Em desenvolvimento
│   │   └── features/
│   └── archive/            # Versões antigas
├── docs/
│   ├── bugs/              # Documentação de bugs
│   ├── features/          # Novos recursos
│   └── optimization/      # Otimizações
├── .github/
│   └── workflows/         # GitHub Actions (CI/CD)
├── scripts/              # Scripts auxiliares
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
└── .gitignore
```

---

## 🔧 PARTE 2: Primeiro Commit (Agora!)

### Passo 1: Preparar o .gitignore

Edite `.gitignore` e adicione:

```bash
# Credenciais e Secretos
.env
.env.local
.env.*.local
credentials.json
secrets.json
*.key
*.pem

# n8n specific
node_modules/
dist/
.n8n/
*.backup

# Logs
logs/
*.log
npm-debug.log*

# Arquivos de Sistema
.DS_Store
Thumbs.db
*.swp
*.swo

# IDE
.vscode/
.idea/
*.sublime-workspace
*.sublime-project

# Staging
staging/
tmp/

# Node
package-lock.json
yarn.lock
```

---

### Passo 2: Criar README.md Completo

Crie/edite `README.md`:

```markdown
# 🤖 C-Suite Autonomous Loop - n8n

Fluxo de automação inteligente que executa análises autônomas de executivos (CFO, CTO, COO, CMO, CPO) e sintetiza decisões estratégicas via CEO.

## 📊 Versão Atual
- **Versão:** 7 (Corrigido)
- **Data:** 2026-03-06
- **Status:** ✅ Produção

## 🎯 Funcionalidades

- ✅ Análise autônoma de 5 C-Levels (CFO, CTO, COO, CMO, CPO)
- ✅ Síntese de decisões pelo CEO (Andy Grove)
- ✅ Envio automático de resumos para GitHub Issues
- ✅ Armazenamento de memória em pgvector
- ✅ Embedding de contexto com Gemini
- ✅ Agendamento em horários específicos (08:00 e 18:00)

## 🚀 Quick Start

### Importar no n8n

1. Abra seu n8n
2. **Create** → **Import workflow**
3. Selecione `workflows/production/csuite-loop-v7.json`
4. Configure credenciais:
   - `Postgres supabase pooler` - sua conexão Supabase
   - `x-goog-api-key` - Gemini API Key
   - `GitHub API Token` - seu token GitHub (PAT)
5. Clique em **Deploy**

### Configurar Variáveis de Ambiente

Crie um arquivo `.env` (local, não sincronize com Git):

```bash
POSTGRES_CONNECTION_STRING=postgresql://user:pass@host:5432/db
GEMINI_API_KEY=sua_chave_aqui
GITHUB_TOKEN=ghp_seu_token_aqui
GITHUB_API_URL=https://api.github.com/repos/OWNER/REPO/issues
SUPABASE_URL=https://seu-projeto.supabase.co
SUPABASE_ANON_KEY=sua_chave_aqui
```

## 📁 Estrutura do Projeto

```
workflows/
├── production/      # Fluxos ativos em produção
├── staging/        # Fluxos em teste
├── development/    # Novos recursos em desenvolvimento
└── archive/        # Versões antigas
```

## 🐛 Bugs Conhecidos e Correções

Veja [docs/bugs/](./docs/bugs/) para lista completa.

### Bugs Corrigidos em V7
- ❌ Resumo vazio no GitHub → ✅ Corrigido
- ❌ Inconsistência de parse → ✅ Corrigido
- ❌ Validação de dados → ✅ Melhorada

## 📈 Roadmap

- [ ] Otimização de custo (Gemini Flash)
- [ ] Paralelização de agentes
- [ ] Caching de contexto
- [ ] Dashboard de métricas
- [ ] Integração com Slack

## 🔐 Credenciais Necessárias

| Credencial | Tipo | Onde Obter |
|-----------|------|-----------|
| Gemini API | API Key | [Google AI Studio](https://aistudio.google.com/app/apikey) |
| GitHub Token | PAT | [GitHub Settings](https://github.com/settings/tokens) |
| Supabase | Connection String | [Supabase Dashboard](https://supabase.com/dashboard) |

## 📞 Suporte

Dúvidas sobre este fluxo? Abra uma Issue!

---

**Última Atualização:** 2026-03-06
**Mantido por:** Adventure Labs
```

---

### Passo 3: Criar CHANGELOG.md

Crie `CHANGELOG.md`:

```markdown
# Changelog - C-Suite Autonomous Loop

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

## [7.0.0] - 2026-03-06

### 🐛 Bugs Corrigidos
- Resumo vazio não era enviado para GitHub (CRÍTICO)
- Parse inconsistente de respostas Gemini
- Context Docs falhando silenciosamente
- Nó "Parse CEO Decision1" faltando na sequência
- Mismatch de estruturas entre agentes e compilador

### ✨ Melhorias
- Melhor tratamento de erros em Build Context1
- Validação robusta em Compile C-Level Reports1
- Múltiplas fallbacks para extração de dados
- Logs mais claros de erros

### 🔄 Mudanças
- Atualizado Build Context1 para mejor tratamiento de docs
- Refatorado Compile C-Level Reports1 com getGeminiText()
- Parse CEO Decision1 agora valida dados antes de usar

## [6.0.0] - 2026-02-28

### ✨ Features
- Análise autônoma de 5 C-Levels
- Síntese de decisões pelo CEO
- Armazenamento em pgvector
- Agendamento automático

### 📊 Primeiros Testes
- Relatórios gerados com sucesso
- Embeddings funcionando
- GitHub Issues criadas

---

**Formato:** [Semantic Versioning](https://semver.org/)
```

---

### Passo 4: Fazer o Primeiro Commit

```bash
# Adicionar todos os arquivos
git add .

# Verificar o que vai ser commitado
git status

# Fazer o primeiro commit
git commit -m "🚀 Initial commit: C-Suite Autonomous Loop V7 - CORRIGIDO

- Correção crítica: Resumo agora envia para GitHub
- Build Context1 melhorado com melhor tratamento de docs
- Compile C-Level Reports1 com múltiplas fallbacks
- Parse CEO Decision1 com validação robusta
- Estrutura de projeto com workflows, docs e scripts

FIXES: #1 #2 #3"

# Fazer push para GitHub
git push origin main
```

Se receber erro de auth, configure:

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@github.com"
```

---

## 🌿 PARTE 3: Workflow com Branches

Daqui em diante, sempre use branches para trabalhar!

### Passo 1: Criar Branch para Novo Trabalho

```bash
# Atualize a versão main
git pull origin main

# Crie um branch com nome descritivo
git checkout -b feature/gemini-flash-optimization
# ou para bugs:
git checkout -b bugfix/empty-report-issue
# ou para docs:
git checkout -b docs/add-troubleshooting-guide
```

### Passo 2: Fazer Alterações no Fluxo

Se você vai **modificar o fluxo**:

1. Abra n8n
2. Faça as alterações
3. Clique em **⬇️ Download** (canto superior direito)
4. Salve como `csuite-loop-v7-feature.json`
5. Mova para `workflows/development/gemini-flash-optimization.json`

---

### Passo 3: Fazer Commit da Alteração

```bash
# Adicionar apenas o arquivo modificado
git add workflows/development/gemini-flash-optimization.json

# Commit com mensagem descritiva
git commit -m "feat: Gemini Flash optimization for 70% cost reduction

- Changed CEO Grove from gemini-2.5-pro to gemini-2.5-flash
- Updated temperature and maxOutputTokens
- Tested with sample data: quality -5%, cost -70%

Closes #15"

# Push para seu branch
git push origin feature/gemini-flash-optimization
```

---

### Passo 4: Abrir Pull Request (PR)

1. Vá em [github.com/seu-repo](https://github.com)
2. GitHub detectará seu novo branch → **"Compare & pull request"**
3. Preencha:
   - **Title:** `feat: Gemini Flash optimization for 70% cost reduction`
   - **Description:**
     ```markdown
     ## Mudanças
     - Alterado modelo CEO de `pro` para `flash`
     - Reduz custo em ~70% com mínima perda de qualidade
     
     ## Testes
     - ✅ Testado com dados de amostra
     - ✅ Quality score: 95% (antes 100%)
     - ✅ Latência: -65%
     
     ## Checklist
     - [x] Testei no n8n
     - [x] Atualizei CHANGELOG.md
     - [x] Sem quebras de compatibilidade
     
     Closes #15
     ```
4. Clique **"Create pull request"**

---

### Passo 5: Fazer Merge da PR

Depois de revisar (você mesmo neste caso):

1. Clique em **"Merge pull request"**
2. Escolha **"Squash and merge"** (recomendado)
3. Clique em **"Confirm squash and merge"**
4. Clique em **"Delete branch"** (opcional mas recomendado)

---

### Passo 6: Atualizar Versão Localmente

```bash
# Volte para main
git checkout main

# Atualize com alterações do GitHub
git pull origin main

# Versione o fluxo otimizado
cp workflows/development/gemini-flash-optimization.json workflows/production/csuite-loop-v7.1.json

git add workflows/production/csuite-loop-v7.1.json
git commit -m "release: Version 7.1.0 - Gemini Flash optimization"
git push origin main
```

---

## 📝 PARTE 4: Boas Práticas de Commits

### Padrão de Mensagem

Use o formato **Conventional Commits**:

```bash
git commit -m "type(scope): subject

body

footer"
```

**Types:**
- `feat:` Nova feature
- `fix:` Correção de bug
- `docs:` Mudanças na documentação
- `refactor:` Refatoração de código
- `perf:` Melhoria de performance
- `test:` Adição de testes
- `chore:` Tarefas de manutenção
- `ci:` Mudanças em CI/CD

**Exemplos bons:**

```bash
# ✅ BOM
git commit -m "fix: resumo vazio no GitHub

Corrigido o bug onde Parse CEO Decision1 não retornava
dados válidos para Push Report to GitHub1.

- Adicionada validação de dados
- Melhorado tratamento de erros
- Adicionado log de debug

Fixes #123"

# ❌ RUIM
git commit -m "alterações no fluxo"
git commit -m "fix bug"
git commit -m "v7 atualizado"
```

---

## 🔄 PARTE 5: Workflow Diário

### Quando Você Quer Fazer Mudanças

```bash
# 1. Atualize a versão local
git pull origin main

# 2. Crie um branch
git checkout -b feature/sua-feature

# 3. Faça alterações no n8n
# (não esqueça de baixar o JSON)

# 4. Commit local
git add workflows/development/seu-arquivo.json
git commit -m "feat: sua mudança"

# 5. Push
git push origin feature/sua-feature

# 6. Abra PR no GitHub

# 7. Após revisar, faça merge

# 8. Volte para main
git checkout main
git pull origin main
```

---

## 🏷️ PARTE 6: Releases e Tags

Quando você quer marcar uma versão estável:

```bash
# Certifique-se de estar na main e atualizado
git checkout main
git pull origin main

# Crie uma tag
git tag -a v7.1.0 -m "Release 7.1.0 - Gemini Flash Optimization

- 70% redução de custo
- Mínima perda de qualidade
- Latência -65%"

# Push da tag
git push origin v7.1.0

# No GitHub: vá em Releases → "Create release" → selecione a tag
```

---

## 📊 PARTE 7: Estrutura de Versionamento Recomendada

```
workflows/
├── production/
│   ├── csuite-loop-v7.0.json        (versão atual)
│   ├── csuite-loop-v7.1.json        (otimizado)
│   └── csuite-loop-v8.0.json        (em breve)
├── staging/
│   ├── csuite-loop-v8-beta.json     (testes)
│   └── feature-gemini-batching.json (novo recurso)
├── development/
│   ├── cache-optimization.json
│   └── slack-integration.json
└── archive/
    ├── v6.0-old.json
    └── v5.0-legacy.json
```

---

## 🔐 PARTE 8: Proteger Dados Sensíveis

**NUNCA commit:**
- `.env` files
- Credenciais
- API Keys
- Senhas

**Ao invés, crie um `.env.example`:**

```bash
# .env.example (FAZER COMMIT DISSO)
POSTGRES_CONNECTION_STRING=postgresql://user:password@host:5432/database
GEMINI_API_KEY=seu_api_key_aqui
GITHUB_TOKEN=ghp_seu_token_aqui
```

Equipe copia `.env.example` para `.env` localmente e preenche com seus valores.

---

## 🚨 PARTE 9: Recuperar Versões Anteriores

Se você errou e quer voltar:

```bash
# Ver histórico
git log --oneline

# Voltar para um commit específico (não mude main!)
git checkout <hash-do-commit>

# Se quiser criar uma nova branch a partir daquele ponto
git checkout -b recover-v7.0

# Se quiser desfazer o último commit
git revert HEAD
git push origin main
```

---

## 📚 PARTE 10: Seu Primeiro Ciclo Completo

1. **Day 1:** Importar fluxo V7, fazer primeiro commit
2. **Day 2:** Criar branch `feature/slack-integration`, fazer alterações
3. **Day 3:** Testar no n8n, fazer PR
4. **Day 4:** Revisar, fazer merge
5. **Day 5:** Criar release V7.1.0
6. **Day 6:** Começar novo feature em novo branch

---

## 📞 Dúvidas Comuns

### P: Criei um arquivo e cometi erro. Como desfaço?

```bash
# Se ainda não fez push
git reset HEAD seu-arquivo.json
rm seu-arquivo.json

# Se já fez push
git revert <hash-do-commit>
git push origin main
```

### P: Esqueci de adicionar um arquivo na último commit?

```bash
git add arquivo-esquecido.json
git commit --amend --no-edit
git push origin branch-name -f
```

### P: Como faço para clonar em outro computador?

```bash
git clone https://github.com/seu-usuario/n8n-autonomous-loop.git
cd n8n-autonomous-loop
git checkout main
# Abra o n8n e importe workflows/production/csuite-loop-v7.json
```

### P: Quero colaborar com outros. Como evito conflitos?

```bash
# Sempre antes de fazer push
git pull origin main

# Se houver conflito, resolva manualmente e faça
git add .
git commit -m "resolve: merge conflict from main"
git push origin seu-branch
```

---

## ✅ Checklist Final

- [ ] Criei repositório no GitHub
- [ ] Clonei localmente
- [ ] Estruturei o projeto com pastas
- [ ] Criei README.md e CHANGELOG.md
- [ ] Fiz primeiro commit com fluxo V7
- [ ] Testei upload do fluxo no n8n
- [ ] Criei branch de teste com feature nova
- [ ] Abri PR e fiz merge
- [ ] Criei release tag V7.0.0
- [ ] Pronto para produção! 🚀

---

**Próximas Leituras:**
- [Git Official Docs](https://git-scm.com/doc)
- [GitHub Flow Guide](https://guides.github.com/introduction/flow/)
- [Conventional Commits](https://www.conventionalcommits.org/)

Sucesso! 🎉

