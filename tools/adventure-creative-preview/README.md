# Preview de hierarquia — criativos Adventure (rascunho)

Ficheiro único **`index.html`**: valida **headline → subheadline → CTA** nos formatos **1080×1035** (feed) e **1080×1920** (stories), com **quadro central 1:1** (900×900), tipografia **Space Grotesk** e cores próximas da marca.

**Não é** export para Meta. O SSOT de design continua no **Figma**; isto é só para ver se a hierarquia “respira” antes do designer aplicar no template.

## Como usar

1. Abre o ficheiro no browser:
   - **macOS:** `open tools/adventure-creative-preview/index.html`
   - Ou arrasta `index.html` para uma janela do Chrome / Safari.
2. Edita os campos no topo; os dois painéis atualizam em tempo real.
3. Se precisares de escala maior no ecrã, no DevTools altera no elemento `.scale-wrap` a variável CSS `--preview-scale` (ex.: `0.4`).

## Opcional: servidor local

Se o browser bloquear fontes em `file://`, corre na raiz do monorepo:

```bash
python3 -m http.server 8765 --directory tools/adventure-creative-preview
```

Abre `http://127.0.0.1:8765/index.html`.

## Próximo passo (Figma)

Envia ao designer o mesmo texto + referência de frame (ex. `Meta_Feed_04`) em [`docs/clientes/adventure/figma-criativos-pipeline.md`](../../docs/clientes/adventure/figma-criativos-pipeline.md).
