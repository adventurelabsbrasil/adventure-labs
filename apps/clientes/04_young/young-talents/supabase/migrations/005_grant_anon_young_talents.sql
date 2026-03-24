-- Permitir que o role anon (formulário público) acesse o schema e insira em candidates
-- RLS já tem a política "Formulário público pode inserir candidatos" para anon

GRANT USAGE ON SCHEMA young_talents TO anon;
GRANT INSERT ON young_talents.candidates TO anon;
GRANT SELECT ON young_talents.candidates TO anon;
