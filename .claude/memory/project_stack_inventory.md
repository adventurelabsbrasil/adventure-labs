---
name: Stack Completa Adventure Labs
description: Inventário completo de ferramentas, serviços e devices da Adventure Labs — referência para auditorias de eficiência e planejamento estratégico
type: project
---

## Stack Atual (confirmada em 2026-04-09)

### Produtividade & Gestão
- Google Workspace (2 contas pagas) com IA Gemini
- Omie ERP
- Plane self-hosted (NOVO — substituiu Asana)
- Registro.br (domínios)

### Infra & Hospedagem
- Hostinger VPS KVM2 — Ubuntu 24.04 LTS (IP 187.77.251.199)
- Nginx (reverse proxy, SSL Let's Encrypt)
- Vercel (free) — apps web
- Supabase — banco/auth/storage
- GitHub (free)
- Tailscale no Macbook

### Serviços Self-Hosted (todos na VPS via Docker)
- n8n — automações
- Evolution API — WhatsApp
- Metabase — analytics/dashboards
- Infisical — gestão de secrets/env vars
- Vaultwarden/Bitwarden — senhas
- Plane — gestão de projetos
- Postgres compartilhado
- Redis

### IA & APIs
- Claude Code Max
- Cursor AI Pro
- Anthropic API (faturamento ativo)
- OpenAI API (faturamento ativo)
- Gemini API (faturamento ativo)
- OpenRouter (a confirmar uso)
- Ollama (local, Macbook)
- Jina Reader (web scraping/leitura)
- ElevenLabs (pago) — TTS/voz
- Telegram Bot

### Marketing & Ads
- Meta Business/Ads
- Google Ads (conta admin)
- TikTok Business/Ads
- LinkedIn Business/Ads
- Instagram Business

### Devices
- MacBook Air M4
- iPhone 15 Pro Max
- VPS (servidor)

---

## Gaps Identificados (não temos ainda)
- CRM
- Real-time dashboards
- Wiki interno estruturado
- Roteador de IAs (routing inteligente entre modelos)
- Memória de longo prazo (pgvector/RAG)
- ElevenLabs configurado corretamente no Telegram (respostas em áudio/TTS)
