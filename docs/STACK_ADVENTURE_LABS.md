# Stack Adventure Labs — Guia Completo para Leigos

> **Para quem é este documento?**
> Para qualquer pessoa da equipe (ou parceiro) que queira entender como a Adventure Labs funciona por dentro — sem precisar ser desenvolvedor. É também o mapa de referência para quem vai fazer ajustes, criar automações ou contratar ferramentas novas.

**Diagrama interativo no FigJam:** [Abrir no FigJam](https://www.figma.com/online-whiteboard/create-diagram/d7a2e57a-a14d-4da8-86d1-0176dc0c3f1c?utm_source=claude&utm_content=edit_in_figjam)

---

## A Ideia Central

A Adventure Labs é uma **agência de tecnologia e marketing** que também usa a sua própria stack para se vender. Tudo funciona em camadas:

```
CLIENTE CHEGA → vê o site/LP → deixa contato → IA processa → WhatsApp responde → vai para o CRM
                                                      ↕
                                              Tudo registrado → Metabase mostra os números
```

---

## 🗂️ Glossário — Cada Ferramenta e Para o Que Serve

---

### CÓDIGO E VERSIONAMENTO

#### GitHub
**O que é:** Onde fica guardado todo o código do projeto.
**Analogia:** É como um Google Drive para código, mas com histórico completo de cada mudança.
**Na Adventure Labs:** Repositório `adventurelabsbrasil/adventure-labs`. Tudo que é criado pelo Claude Code ou Cursor vai para cá primeiro.
**URL:** github.com/adventurelabsbrasil

#### Claude Code / Cursor AI
**O que é:** Ferramentas de programação assistida por IA.
**Analogia:** Um programador sênior que você chama para fazer tarefas — você descreve o que quer, ele escreve o código.
**Na Adventure Labs:** Usamos para criar features, corrigir bugs, criar automações. Claude Code opera com acesso à VPS e ao banco de dados.

---

### HOSPEDAGEM E PUBLICAÇÃO

#### Vercel
**O que é:** Plataforma que pega o código do GitHub e publica automaticamente na internet.
**Analogia:** Toda vez que você salva uma mudança no GitHub, a Vercel automaticamente atualiza o site — sem apertar nenhum botão.
**Na Adventure Labs:** Hospeda os apps web principais:
- `adventure` → site/LP público
- `admin` → painel interno (/admin)
- Apps de clientes (Lidera Space, etc.)

#### Registro.br / DNS
**O que é:** Onde ficam registrados os domínios `.com.br`.
**Analogia:** É o "cartório" que diz: quando alguém digita `adventurelabs.com.br`, para onde deve ir.
**Na Adventure Labs:** Domínio `adventurelabs.com.br` registrado aqui. Os subdomínios são gerenciados pelo Vercel (para os apps) e apontados para a VPS (para os serviços).

---

### SERVIDOR (VPS)

#### Hostinger VPS KVM2
**O que é:** Um computador (servidor) alugado na Hostinger que fica ligado 24 horas por dia.
**Analogia:** Um computador no seu escritório que nunca desliga e é acessível de qualquer lugar do mundo.
**Na Adventure Labs:** IP `187.77.251.199`. Roda todos os serviços abaixo em containers Docker.
**Acesso:** `ssh adventure-vps` (via terminal)

#### Docker
**O que é:** Sistema que empacota cada serviço em uma "caixa" isolada (container) dentro do servidor.
**Analogia:** Em vez de instalar tudo misturado no computador, cada programa fica em sua própria caixinha — se um quebrar, não afeta os outros.
**Na Adventure Labs:** Todos os serviços da VPS rodam em Docker. O arquivo que define tudo fica em `/opt/adventure-labs/docker-compose.yml`.

#### OpenPanel
**O que é:** Painel de administração da Hostinger para gerenciar o servidor.
**Analogia:** É a "tela de controle" visual do servidor — sem precisar de linha de comando.

#### NGINX
**O que é:** Servidor web que funciona como porteiro do servidor.
**Analogia:** Quando alguém acessa `flow.adventurelabs.com.br`, o NGINX recebe a visita e encaminha para o serviço correto dentro do servidor.
**Na Adventure Labs:** Também cuida do HTTPS (cadeado de segurança) de todos os subdomínios. Certificados renovados automaticamente via Let's Encrypt.

#### SSH
**O que é:** Protocolo para acessar o servidor remotamente via terminal de forma segura.
**Analogia:** É como um controle remoto criptografado para o servidor — você digita comandos no seu computador e eles executam lá.
**Na Adventure Labs:** Configurado como `ssh adventure-vps`. Usado pelo Claude Code para fazer deploys e configurações.

---

### SERVIÇOS NA VPS

#### n8n (`flow.adventurelabs.com.br`)
**O que é:** Plataforma de automação visual — conecta apps entre si sem precisar programar.
**Analogia:** É como o "sistema nervoso" da empresa. Quando algo acontece em um lugar (ex: alguém preenche um formulário), o n8n faz a ação correspondente em outro lugar (ex: salva no banco, manda WhatsApp).
**Na Adventure Labs — workflows ativos:**
1. **Isca Roteirista de Vídeo:** Recebe URL + WhatsApp → raspa o site → pede roteiro para o Gemini → salva no Supabase → envia via WhatsApp
2. **Sincronizador SSOT:** A cada 6h, pega documentos da pasta "Oficializar" no Google Drive → gera embeddings → salva no banco para busca por IA
3. **Transcrição de Áudio:** Quando chega áudio no WhatsApp → Gemini transcreve → cria tarefa no Asana

#### Metabase (`bi.adventurelabs.com.br`)
**O que é:** Ferramenta de Business Intelligence — cria dashboards e gráficos a partir dos dados do banco.
**Analogia:** É o "painel de indicadores" da empresa. Em vez de abrir planilhas, você vê gráficos bonitos e atualizados em tempo real.
**Na Adventure Labs:** Conectado ao Supabase. Permite ver: quantos leads chegaram, qual campanha converteu mais, qual o custo por lead, ROI de ads.
**Detalhe técnico:** Roda em Java — configurado com `-Xmx1g` para não consumir mais de 1GB de RAM.

#### Evolution API (`api-wa.adventurelabs.com.br`)
**O que é:** API para enviar e receber mensagens do WhatsApp programaticamente.
**Analogia:** É a "ponte" entre o seu sistema e o WhatsApp. Permite que robôs (n8n, OpenClaw) enviem mensagens como se fossem uma pessoa.
**Na Adventure Labs:** Recebe webhooks do WhatsApp (mensagens recebidas) e envia mensagens automáticas (roteiros, transcrições, respostas).
**Global API Key:** `429683C4C977415CAAFCCE10F7D57E11`

#### Uptime Kuma (`status.adventurelabs.com.br`)
**O que é:** Monitor de disponibilidade — verifica se todos os serviços estão funcionando.
**Analogia:** É um guarda-noturno que fica testando as portas da empresa de 30 em 30 segundos. Se algo cair, avisa imediatamente.
**Na Adventure Labs:** Monitora todos os subdomínios. Envia alerta no Telegram se algo cair.

#### Infisical (`vault.adventurelabs.com.br`)
**O que é:** Cofre de senhas e chaves de API para sistemas.
**Analogia:** Em vez de guardar senhas no código (perigoso) ou em planilha (inseguro), tudo fica num cofre criptografado. Os sistemas buscam as senhas direto do cofre quando precisam.
**Na Adventure Labs:** Workspace ID `90319555-509b-4736-ad2c-5602f34bc47a`. Pasta `/admin` com as chaves principais.

#### OpenClaw (`agent.adventurelabs.com.br`)
**O que é:** Gateway de agente de IA — orquestra chamadas a múltiplos modelos de IA.
**Analogia:** É o "gerente de IA" que decide qual modelo usar para cada tarefa, mantém contexto e memória entre conversas.
**Na Adventure Labs:** Identidade "Buzz". Conectado ao n8n e aos modelos de IA. Pode receber instruções via WhatsApp.

---

### BANCO DE DADOS

#### Supabase
**O que é:** Banco de dados PostgreSQL na nuvem, com autenticação e APIs prontas.
**Analogia:** É como uma planilha super avançada que vários sistemas conseguem ler e escrever ao mesmo tempo, com controle de quem pode ver o quê.
**Na Adventure Labs:** Projeto `adventurelabsbrasil` (us-east-1). Tabelas principais:
- `crm_leads` — todos os leads capturados pelas iscas (URL submetida, WhatsApp, campanha, resultado da IA, status)
- `knowledge_base` — base de conhecimento com embeddings vetoriais para busca semântica (RAG)
- Tabelas dos clientes (Lidera, Young Talents, etc.)

#### PostgreSQL
**O que é:** O sistema de banco de dados que roda dentro do Supabase (e também na VPS para Infisical e Evolution).
**Analogia:** É a "planilha" de verdade onde os dados ficam guardados em formato estruturado com linhas e colunas.

#### pgvector
**O que é:** Extensão do PostgreSQL para armazenar e buscar embeddings de IA.
**Analogia:** Permite buscar documentos por "significado" e não só por palavra exata. Ex: buscar "como aumentar vendas" encontra documentos sobre "estratégias de conversão" mesmo sem a palavra "vendas".
**Na Adventure Labs:** Versão 0.8.0 ativa no Supabase. Usado pela tabela `knowledge_base`.

---

### INTELIGÊNCIA ARTIFICIAL

#### Gemini API (Google)
**O que é:** API de IA da Google — modelos de linguagem para texto, imagem e áudio.
**Na Adventure Labs:** Usado em 3 lugares:
- `gemini-1.5-flash` → gerar roteiros de vídeo e transcrever áudios do WhatsApp
- `text-embedding-004` → gerar embeddings para a base de conhecimento (RAG)

#### OpenAI API
**O que é:** API da OpenAI — GPT-4, DALL-E, Whisper, etc.
**Na Adventure Labs:** Disponível para o OpenClaw usar quando Gemini não for suficiente.

#### Claude Code (Anthropic)
**O que é:** IA da Anthropic especializada em programação, usada como agente autônomo.
**Na Adventure Labs:** É quem criou e mantém toda esta stack. Tem acesso SSH à VPS, acesso ao Supabase, Asana, Gmail, Figma, etc.

---

### PRODUTIVIDADE E OPERAÇÕES

#### Asana
**O que é:** Ferramenta de gestão de tarefas e projetos.
**Na Adventure Labs:** Projetos principais: `Martech MVP`, `Labs`, `_ACORE`, projetos por cliente. O workflow de transcrição de áudio cria tarefas automaticamente aqui. Workspace GID: `1213725900473628`.

#### Google Workspace
**O que é:** Gmail, Google Drive, Google Calendar, Google Docs — suite de produtividade Google.
**Na Adventure Labs:** Email `@adventurelabs.com.br`, Drive com pasta "Oficializar" sincronizada para a base de conhecimento (n8n SSOT).

---

### MARKETING E VENDAS

#### Meta Ads / Google Ads
**O que é:** Plataformas de anúncios pagos.
**Na Adventure Labs:** Campanhas apontam para as Landing Pages (iscas). Os parâmetros UTM (`utm_source`, `utm_campaign`) são capturados e salvos no `crm_leads` para calcular ROI.

#### Kiwify
**O que é:** Plataforma de vendas de produtos digitais (cursos, mentorias).
**Na Adventure Labs:** Vendas de produtos da Adventure Labs.

#### MercadoPago / Sicredi
**O que é:** Gateways de pagamento.
**Na Adventure Labs:** Integrados para processar pagamentos de clientes.

#### Omie ERP
**O que é:** Sistema de gestão empresarial (emissão de NF, financeiro, CRM básico).
**Na Adventure Labs:** Sistema financeiro oficial. Integrado via n8n para sincronizar dados.

---

### SEGURANÇA E IDENTIDADE

#### WorkOS (Admin próprio)
**O que é:** Plataforma de autenticação enterprise.
**Na Adventure Labs:** Protege o `/admin` — apenas usuários autorizados conseguem acessar o painel interno.

#### Infisical
*(já descrito em Serviços na VPS)*

---

## 🔗 Como Tudo Se Conecta — Fluxo de Ponta a Ponta

### Fluxo 1: Lead chega pela isca "Roteirista de Vídeo"

```
1. Lead vê anúncio no Instagram (Meta Ads)
2. Clica → cai na Landing Page (Vercel / app adventure)
3. Preenche: URL do vídeo que quer roteirizar + WhatsApp
4. LP faz POST para o n8n (webhook)
5. n8n valida os dados
6. n8n pede para o Jina.ai raspar o conteúdo da URL
7. n8n envia o conteúdo para o Gemini 1.5 Flash: "gere um roteiro"
8. Gemini devolve o roteiro
9. n8n salva no Supabase (tabela crm_leads) com todos os UTMs
10. n8n envia o roteiro via WhatsApp (Evolution API)
11. Lead recebe o roteiro em segundos
12. Metabase mostra: quantos leads chegaram hoje, qual campanha converteu mais
```

### Fluxo 2: Documento vira base de conhecimento

```
1. Alguém salva um documento na pasta "Oficializar" do Google Drive
2. A cada 6 horas, n8n verifica a pasta
3. Baixa o documento e divide em pedaços (chunks)
4. Envia cada pedaço para o Gemini → gera embedding (vetor numérico)
5. Salva no Supabase (tabela knowledge_base com pgvector)
6. Agora o OpenClaw e outros sistemas conseguem buscar por significado
```

### Fluxo 3: Áudio do WhatsApp vira tarefa no Asana

```
1. Alguém envia áudio no WhatsApp da Adventure Labs
2. Evolution API recebe e dispara webhook para o n8n
3. n8n filtra: é um audioMessage?
4. Baixa o áudio em base64
5. Envia para o Gemini: "transcreva e resuma"
6. Gemini devolve transcrição + resumo executivo
7. n8n cria uma tarefa no Asana com a transcrição completa
8. Equipe vê a tarefa e responde
```

---

## 🏗️ Infraestrutura — Visão Técnica Resumida

```
adventurelabs.com.br (Registro.br)
│
├── app.adventurelabs.com.br → Vercel (site/LP public)
├── admin.adventurelabs.com.br → Vercel (painel admin)
│
└── *.adventurelabs.com.br → VPS 187.77.251.199
    │
    └── NGINX (HTTPS + proxy)
        ├── flow.*   → n8n          :5678  (1GB RAM)
        ├── bi.*     → Metabase     :3000  (1.5GB RAM)
        ├── api-wa.* → Evolution    :8081  (512MB RAM)
        ├── status.* → Uptime Kuma :3001  (256MB RAM)
        ├── vault.*  → Infisical    :8082  (768MB RAM)
        └── agent.*  → OpenClaw    :3002  (1GB RAM)
```

**Total RAM em uso:** ~2GB de 7.8GB disponível. Margem confortável para crescer.

**Backup:** Todos os dias às 03:00 UTC, script `adventure_ops.sh` faz dump do Postgres, backup do Metabase e n8n, e envia notificação no Telegram.

---

## 📋 Credenciais e Acessos — Onde Estão

| Sistema | Onde buscar |
|---------|------------|
| Chaves de API gerais | Infisical → vault.adventurelabs.com.br → pasta `/admin` |
| Senhas da VPS | Infisical → pasta `/vps-openclaw` |
| Supabase | dashboard.supabase.com → projeto adventurelabsbrasil |
| n8n owner | `ops@adventurelabs.com.br` (senha no Infisical) |
| Evolution API Key global | `429683C4C977415CAAFCCE10F7D57E11` |
| GitHub | github.com/adventurelabsbrasil |
| Asana | app.asana.com — workspace Adventure Labs |

---

## 🔧 Para Desenvolvedores — Comandos Úteis

```bash
# Acessar a VPS
ssh adventure-vps

# Ver estado de todos os containers
docker ps

# Ver uso de RAM em tempo real
docker stats --no-stream

# Reiniciar um serviço específico
cd /opt/adventure-labs && docker compose restart n8n

# Ver logs de um serviço
docker logs adventure-n8n --tail=50

# Rodar backup manual
/opt/adventure-labs/scripts/adventure_ops.sh

# Ativar HTTPS após mudar DNS
/opt/adventure-labs/scripts/enable-tls.sh
```

---

## 📁 Onde Fica Cada Coisa no Repositório

```
adventure-labs/
├── apps/
│   ├── core/
│   │   ├── admin/          ← Painel interno (Next.js)
│   │   └── adventure/      ← Site/LP público (Next.js)
│   └── clientes/
│       ├── 01_lidera/      ← Projetos do cliente Lidera
│       ├── 02_rose/        ← Projetos da cliente Rose
│       └── 04_young/       ← Projetos do cliente Young
├── tools/
│   ├── vps-infra/          ← docker-compose, nginx, scripts da VPS
│   │   └── n8n-workflows/  ← Workflows exportados do n8n
│   ├── openclaw/           ← Configurações do agente OpenClaw
│   └── n8n-scripts/        ← Scripts auxiliares para n8n
└── workflows/
    └── n8n/                ← Templates de workflows por tema
```

---

## 🚀 O Que Vem a Seguir

- [ ] Metabase: criar dashboard "ROI de Ads" (tabela `crm_leads`)
- [ ] n8n: conectar credenciais Google Drive OAuth e Asana PAT
- [ ] Evolution API: criar instância WhatsApp e configurar webhook
- [ ] Infisical: migrar todas as chaves dos `.env` locais para o vault
- [ ] Uptime Kuma: configurar alertas Telegram para cada serviço

---

*Documento gerado em 2026-04-02 | Stack version: n8n 2.14 · Metabase latest · Evolution API 2.2.3 · Infisical 0.159.5*
*Diagrama FigJam: [adventure-labs-stack](https://www.figma.com/online-whiteboard/create-diagram/d7a2e57a-a14d-4da8-86d1-0176dc0c3f1c)*
