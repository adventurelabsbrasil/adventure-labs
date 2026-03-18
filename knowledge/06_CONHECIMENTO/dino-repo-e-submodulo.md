# Dino — repositório e monorepo

- **Repo próprio (fonte da verdade):** https://github.com/adventurelabsbrasil/dino  
- **No monorepo Adventure Labs:** `tools/dino` é **git submodule** apontando para esse repositório.

## Clonar monorepo com Dino

```bash
git clone --recurse-submodules <url-adventure-labs>
# ou, se já clonou sem submódulos:
git submodule update --init tools/dino
```

## Trabalhar no código do Dino

```bash
cd tools/dino
git checkout main
git pull
# commits aqui → push para github.com/adventurelabsbrasil/dino
```

No **root do monorepo**, após atualizar o submodule:

```bash
git add tools/dino
git commit -m "chore: atualiza submodule dino"
git push
```

## Vercel

Root directory do projeto: raiz do repo **dino** (não o monorepo), ou no monorepo usar `tools/dino` como root se importar o repositório adventure-labs.
