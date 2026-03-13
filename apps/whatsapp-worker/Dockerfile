# Zazu WhatsApp Worker — Railway/Docker (01_ADVENTURE_LABS/apps/whatsapp-worker)
# Instala dependências do sistema para o Chromium (Puppeteer/whatsapp-web.js)
FROM node:20-bookworm-slim

# Dependências para Chromium/Puppeteer (evita libglib-2.0.so.0 e similares)
RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  fonts-liberation \
  libasound2 \
  libatk-bridge2.0-0 \
  libatk1.0-0 \
  libcairo2 \
  libcups2 \
  libdbus-1-3 \
  libdrm2 \
  libgbm1 \
  libglib2.0-0 \
  libgtk-3-0 \
  libnspr4 \
  libnss3 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libx11-6 \
  libx11-xcb1 \
  libxcb1 \
  libxcomposite1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxkbcommon0 \
  libxrandr2 \
  xdg-utils \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci --omit=dev

COPY src ./src
COPY scripts ./scripts

ENV NODE_ENV=production
EXPOSE 3333

CMD ["npm", "start"]
