# Musical Art

App web que mostra notas musicais em forma de geometria de ondas: teclado de linhas horizontais (grave → agudo) à esquerda e visualização de ondas à direita.

## Como rodar

No terminal, na pasta do projeto:

```bash
npx serve .
```

Ou com Python:

```bash
python3 -m http.server 8000
```

Abra no navegador: **http://localhost:3000** (ou **http://localhost:8000** no caso do Python).

Para abrir o browser automaticamente com `serve`:

```bash
npx serve . -o
```

## Uso

- **Esquerda**: toque ou clique em uma linha para tocar a nota (mais grave embaixo, mais agudo em cima). Cada nota tem cor da escala cromática (arco-íris por oitava).
- **Som contínuo**: marque a opção no topo para manter o som enquanto segura; desmarque para tocar um pulso ao clicar.
- **Direita**: ao tocar uma nota, as ondas são desenhadas em diferentes ângulos com a cor da nota.

Require um ambiente com áudio (Web Audio API) e suporte a pointer/touch.
