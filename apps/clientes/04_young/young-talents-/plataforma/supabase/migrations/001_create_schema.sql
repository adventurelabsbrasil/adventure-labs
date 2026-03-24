-- Criar schema young_talents para isolamento das tabelas do projeto
CREATE SCHEMA IF NOT EXISTS young_talents;

-- Dar permissões necessárias ao schema
GRANT USAGE ON SCHEMA young_talents TO authenticated;
GRANT ALL ON SCHEMA young_talents TO authenticated;

-- Criar função para atualizar updated_at automaticamente
-- Esta função será usada por triggers em múltiplas tabelas
CREATE OR REPLACE FUNCTION young_talents.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
