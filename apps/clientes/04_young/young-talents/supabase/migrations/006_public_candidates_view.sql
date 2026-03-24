-- View em public.candidates para a API (Supabase expõe só public por padrão).
-- Redireciona leitura e escrita para young_talents.candidates.

CREATE OR REPLACE VIEW public.candidates AS
SELECT
  id, full_name, email, email_secondary, phone, birth_date, age,
  marital_status, children_count, has_license, city, photo_url,
  education, schooling_level, institution, graduation_date, is_studying,
  experience, courses, certifications, interest_areas, cv_url, portfolio_url,
  source, referral, salary_expectation, can_relocate, professional_references,
  type_of_app, free_field, status, tags, origin, created_by,
  original_timestamp, created_at, updated_at, deleted_at
FROM young_talents.candidates;

-- Trigger INSTEAD OF INSERT
CREATE OR REPLACE FUNCTION public.candidates_insert_trigger()
RETURNS TRIGGER AS $$
DECLARE
  rec young_talents.candidates%ROWTYPE;
BEGIN
  INSERT INTO young_talents.candidates (
    full_name, email, email_secondary, phone, birth_date, age,
    marital_status, children_count, has_license, city, photo_url,
    education, schooling_level, institution, graduation_date, is_studying,
    experience, courses, certifications, interest_areas, cv_url, portfolio_url,
    source, referral, salary_expectation, can_relocate, professional_references,
    type_of_app, free_field, status, tags, origin, created_by,
    original_timestamp, created_at
  ) VALUES (
    NEW.full_name, NEW.email, NEW.email_secondary, NEW.phone, NEW.birth_date, NEW.age,
    NEW.marital_status, NEW.children_count, NEW.has_license, NEW.city, NEW.photo_url,
    NEW.education, NEW.schooling_level, NEW.institution, NEW.graduation_date, NEW.is_studying,
    NEW.experience, NEW.courses, NEW.certifications, NEW.interest_areas, NEW.cv_url, NEW.portfolio_url,
    NEW.source, NEW.referral, NEW.salary_expectation, NEW.can_relocate, NEW.professional_references,
    NEW.type_of_app, NEW.free_field, COALESCE(NEW.status, 'Inscrito'), COALESCE(NEW.tags, ARRAY['Novo Inscrito', 'Formulário Público']::text[]),
    COALESCE(NEW.origin, 'public_form'), COALESCE(NEW.created_by, 'Formulário Público'),
    COALESCE(NEW.original_timestamp, NOW()), COALESCE(NEW.created_at, NOW())
  )
  RETURNING * INTO rec;
  NEW.id := rec.id;
  NEW.created_at := rec.created_at;
  NEW.updated_at := rec.updated_at;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS candidates_instead_of_insert ON public.candidates;
CREATE TRIGGER candidates_instead_of_insert
  INSTEAD OF INSERT ON public.candidates
  FOR EACH ROW EXECUTE FUNCTION public.candidates_insert_trigger();

-- Trigger INSTEAD OF UPDATE
CREATE OR REPLACE FUNCTION public.candidates_update_trigger()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE young_talents.candidates SET
    full_name = NEW.full_name, email = NEW.email, email_secondary = NEW.email_secondary,
    phone = NEW.phone, birth_date = NEW.birth_date, age = NEW.age,
    marital_status = NEW.marital_status, children_count = NEW.children_count,
    has_license = NEW.has_license, city = NEW.city, photo_url = NEW.photo_url,
    education = NEW.education, schooling_level = NEW.schooling_level,
    institution = NEW.institution, graduation_date = NEW.graduation_date,
    is_studying = NEW.is_studying, experience = NEW.experience, courses = NEW.courses,
    certifications = NEW.certifications, interest_areas = NEW.interest_areas,
    cv_url = NEW.cv_url, portfolio_url = NEW.portfolio_url, source = NEW.source,
    referral = NEW.referral, salary_expectation = NEW.salary_expectation,
    can_relocate = NEW.can_relocate, professional_references = NEW.professional_references,
    type_of_app = NEW.type_of_app, free_field = NEW.free_field, status = NEW.status,
    tags = NEW.tags, origin = NEW.origin, created_by = NEW.created_by,
    original_timestamp = NEW.original_timestamp, updated_at = NOW()
  WHERE id = OLD.id;
  NEW.updated_at := NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS candidates_instead_of_update ON public.candidates;
CREATE TRIGGER candidates_instead_of_update
  INSTEAD OF UPDATE ON public.candidates
  FOR EACH ROW EXECUTE FUNCTION public.candidates_update_trigger();

-- Trigger INSTEAD OF DELETE
CREATE OR REPLACE FUNCTION public.candidates_delete_trigger()
RETURNS TRIGGER AS $$
BEGIN
  DELETE FROM young_talents.candidates WHERE id = OLD.id;
  RETURN OLD;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS candidates_instead_of_delete ON public.candidates;
CREATE TRIGGER candidates_instead_of_delete
  INSTEAD OF DELETE ON public.candidates
  FOR EACH ROW EXECUTE FUNCTION public.candidates_delete_trigger();

-- Permissões: RLS na tabela young_talents.candidates já controla; a view herda acesso ao schema public
GRANT SELECT, INSERT, UPDATE, DELETE ON public.candidates TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.candidates TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.candidates TO service_role;
