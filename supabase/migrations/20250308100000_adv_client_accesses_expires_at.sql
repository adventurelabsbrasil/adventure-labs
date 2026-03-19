-- Data de expiração para acessos (ex.: domínio Registro.br, licença). Permite lembrete quando perto de vencer.
ALTER TABLE adv_client_accesses
  ADD COLUMN IF NOT EXISTS expires_at DATE;

-- Preencher expiração do Registro.br já cadastrado (22/08/2026)
UPDATE adv_client_accesses
SET expires_at = '2026-08-22'
WHERE service_name = 'Registro.br' AND login = 'ROPTE52';
