# Ranking de Vendas 2025 — Young Empreendimentos

Visualização interativa de dados de vendas com gráficos dinâmicos e timelapse.

## 📊 Funcionalidades

### Página Timelapse
- Gráfico de barras horizontais animado mostrando a evolução do ranking ao longo do tempo
- Controles de play/pause e reinício da animação
- Filtros por métrica (VGV), agrupamento temporal e canal (interno/externo)

### Página Gráficos Analíticos
- **Gráfico de Linha Temporal**: Evolução acumulada dos top consultores ao longo do tempo
- **Gráfico de Pizza (Donut)**: Distribuição percentual por consultor
- **Gráfico de Barras Verticais**: Ranking final dos top 10 consultores
- **Gráfico de Área Empilhada**: VGV acumulado separado por canal (interno vs externo)

## 🚀 Como usar

### Desenvolvimento Local

```bash
# Instalar dependências
npm install

# Executar em modo desenvolvimento
npm run dev

# Build para produção
npm run build

# Preview do build
npm run preview
```

### Formato do CSV

O aplicativo espera um arquivo CSV com as seguintes colunas:

- `data`: Data da venda (formato: YYYY-MM-DD ou DD/MM/YYYY)
- `consultor`: Nome do consultor
- `canal`: Canal de venda (`interno` ou `externo`)
- `vgv`: Valor Geral de Vendas (número)
- `unidades`: Quantidade de unidades vendidas (número)

Exemplo:
```csv
data,consultor,canal,vgv,unidades
2025-01-03,Ana Souza,interno,450000,2
2025-01-05,Bruno Lima,interno,320000,1
```

## 📦 Deploy no GitHub Pages

O projeto está configurado para deploy automático no GitHub Pages:

1. **Configuração do repositório**:
   - Vá em Settings → Pages
   - Configure a source como "GitHub Actions"

2. **Deploy automático**:
   - Toda vez que você fizer push para a branch `main` ou `master`, o GitHub Actions irá:
     - Fazer o build do projeto
     - Publicar na GitHub Pages

3. **URL do site**:
   - O site estará disponível em: `https://rodrigoribasyoung.github.io/ranking-vendas/`

O workflow está configurado em `.github/workflows/deploy.yml` e o base path está configurado em `vite.config.ts`.

## 🛠️ Tecnologias

- React 19
- TypeScript
- Vite
- Tailwind CSS
- PapaParse (para parsing de CSV)

## 📝 Licença

Projeto interno da Young Empreendimentos.
