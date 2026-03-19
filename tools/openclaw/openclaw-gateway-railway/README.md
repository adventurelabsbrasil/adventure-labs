# OpenClaw gateway — runner Railway (opcional)

**Decisão padrão Adventure Labs:** usar o template **OpenClaw — Complete Setup** no Railway + Volume `/data` — ver [../RAILWAY.md](../RAILWAY.md) e [docs/OPENCLAW_HIBRIDO_DECISOES.md](../../../docs/OPENCLAW_HIBRIDO_DECISOES.md).

Este diretório existe para a **opção A** do plano híbrido: deploy via **Nixpacks/Node** a partir de um repositório mínimo, sem depender do template one-click.

## Variáveis no Railway

| Variável | Obrigatório |
|----------|-------------|
| `PORT` | Sim (ex.: `8080`) |
| Chaves de modelo / token gateway | Conforme [OPENCLAW-MANUAL-LOCAL-E-RAILWAY.md](../OPENCLAW-MANUAL-LOCAL-E-RAILWAY.md) |

Após o primeiro deploy, pode ser necessário rodar `openclaw onboard` localmente e copiar config para o ambiente, **ou** usar o wizard `/setup` se a imagem expuser — o template oficial costuma ser mais simples para isso.

## Build local

```bash
cd tools/openclaw/openclaw-gateway-railway
pnpm install   # ou npm install
pnpm start
```

## Health

Depende da versão do gateway; muitas imagens expõem `GET /healthz`. Validar após deploy.
