# ce-n8n — Comando Estelar (n8n self-hosted)

Pasta canónica para **exports JSON** dos workflows do n8n que correm no **Comando Estelar** — **VPS Hostinger** com **Coolify** (ex.: `n8n.adventurelabs.com.br`). **Railway** não é mais o alvo de hospedagem do n8n Adventure.

## Convenções

- Um ficheiro por workflow estável: `nome-descritivo-v1.json`.
- Após alterações no editor n8n: **Download / Export** → gravar aqui → **commit** no monorepo (GitOps, ACORE Fase 4).
- **Não** commitar credenciais embutidas nos exports; rever o JSON antes do PR (n8n por vezes inclui referências a IDs locais — aceitável; chaves, nunca).

## Infra

- Stack alinhada à [ACORE_CONSTITUTION.md](../../../ACORE_CONSTITUTION.md) e [docs/ACORE_ROADMAP.md](../../../docs/ACORE_ROADMAP.md) (Fase 4 — VPS + Coolify).
- Coolify pode usar **imagem oficial** do n8n sem Git; esta pasta é a **fonte da verdade** da **lógica** dos fluxos, não do container.

## Workflows

| Ficheiro | Descrição |
|----------|-----------|
| *(adicionar após primeiro export)* | Ex.: webhook de resumo + OpenAI + Supabase `logs_operacionais`. |
