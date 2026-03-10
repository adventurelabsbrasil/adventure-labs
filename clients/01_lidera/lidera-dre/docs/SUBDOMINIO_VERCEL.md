# Subdomínio no Vercel: lidera-dre.adventurelabs.com.br

Para publicar o app no subdomínio **lidera-dre.adventurelabs.com.br**, siga os passos abaixo.

## 1. Deploy no Vercel

1. Conecte o repositório **lidera-dre** ao Vercel (Import Project ou link com GitHub).
2. Configure as variáveis de ambiente no projeto: `VITE_SUPABASE_URL` e `VITE_SUPABASE_ANON_KEY`.
3. Faça o deploy (automático em cada push, ou manual).

## 2. Adicionar o domínio no Vercel

1. No projeto no Vercel, vá em **Settings** → **Domains**.
2. Em **Domain**, digite: `lidera-dre.adventurelabs.com.br`.
3. Clique em **Add**.
4. O Vercel vai mostrar as instruções de DNS (geralmente um registro **CNAME**).

## 3. Configurar o DNS

No painel do provedor do domínio **adventurelabs.com.br** (Registro.br, Cloudflare, etc.):

1. Crie um registro **CNAME**:
   - **Nome / Host:** `lidera-dre` (ou o valor que o Vercel indicar).
   - **Valor / Destino:** o que o Vercel mostrar (ex.: `cname.vercel-dns.com`).
2. Salve e aguarde a propagação (pode levar alguns minutos até 48h).

## 4. Supabase: URLs de redirect

Para o login funcionar no domínio de produção:

1. No **Supabase Dashboard**, vá em **Authentication** → **URL Configuration**.
2. Em **Site URL**, coloque: `https://lidera-dre.adventurelabs.com.br`.
3. Em **Redirect URLs**, adicione: `https://lidera-dre.adventurelabs.com.br/**`.
4. Salve.

Depois disso, o app estará acessível em **https://lidera-dre.adventurelabs.com.br** e o fluxo de login usará essa URL.
