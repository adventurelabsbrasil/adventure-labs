-- Permite múltiplos envios por email: cada cadastro (formulário) vira uma linha com seu timestamp.
-- Contagem de "candidatos" (pessoas) no app é feita por email único (último envio); histórico de envios fica nas linhas repetidas.

ALTER TABLE young_talents.candidates
  DROP CONSTRAINT IF EXISTS candidates_email_key;

-- Índice para agrupar por email (último envio)
CREATE INDEX IF NOT EXISTS idx_candidates_email_created_at
  ON young_talents.candidates (email, created_at DESC);
