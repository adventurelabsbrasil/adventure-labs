# Integração Google Drive no Admin — Status (adiada)

**Registro:** A funcionalidade de listagem do Google Drive da empresa no Admin (rota `/dashboard/drive`, API `GET /api/drive`) **não está funcionando** em ambiente local nem no deploy na Vercel. Fica exibida a mensagem: *"Não foi possível listar os arquivos do Drive."*

- **Backend:** A API retorna 502; o Google OAuth responde `unauthorized_client` ao trocar o refresh token por access token (refresh token e client_id/client_secret precisam ser do mesmo cliente OAuth no GCP).
- **Frontend:** O componente `DriveFileList` e a página `/dashboard/drive` existem e consomem a API; o problema é a autenticação com o Google, não a UI.

**Decisão:** Deixar para outro momento. O código (lib `google-drive.ts`, rota `/api/drive`, componente e página) permanece no repositório; ao retomar, revisar credenciais OAuth (Client ID, Client Secret, Refresh Token do mesmo cliente) e variáveis no `.env.local` / Vercel. Ver plano em `.cursor/plans/` (google_drive_oauth2_refresh_token) e [.env.example](../../apps/admin/.env.example) para as variáveis GOOGLE_*.

---

*Registrado em 04/03/2026.*
