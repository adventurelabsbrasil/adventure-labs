-- Ajuste manual: 1 h em 2026-03-22 (domingo) + 1 h em 2026-03-23 — Mateus Scopel.
-- Motivo: sistema de ponto fora do ar (legado + transição).
-- Destino: adv_time_bank_entries (fluxo unificado; relatório Admin já inclui adv).

DO $$
DECLARE
  v_tenant uuid := '00000000-0000-0000-0000-000000000000'::uuid;
  v_email text := 'mateuslepocs@gmail.com';
  v_loc uuid;
BEGIN
  SELECT id INTO v_loc
  FROM public.adv_time_bank_locations
  WHERE tenant_id = v_tenant AND active = true
  ORDER BY name
  LIMIT 1;

  IF v_loc IS NULL THEN
    RAISE EXCEPTION 'adv_time_bank_locations: nenhum local ativo para tenant default';
  END IF;

  -- Domingo 22/03/2026: 09:00–10:00 America/Sao_Paulo (= 12:00–13:00 UTC)
  IF NOT EXISTS (
    SELECT 1 FROM public.adv_time_bank_entries
    WHERE tenant_id = v_tenant
      AND lower(user_email) = lower(v_email)
      AND recorded_at = timestamptz '2026-03-22 12:00:00+00'
      AND type = 'clock_in'
  ) THEN
    INSERT INTO public.adv_time_bank_entries (tenant_id, user_email, location_id, type, note, recorded_at)
    VALUES (
      v_tenant, v_email, v_loc, 'clock_in',
      'Ajuste manual: sistema de ponto indisponível (2026-03-22, 1h)',
      timestamptz '2026-03-22 12:00:00+00'
    );
    INSERT INTO public.adv_time_bank_entries (tenant_id, user_email, location_id, type, note, recorded_at)
    VALUES (
      v_tenant, v_email, v_loc, 'clock_out',
      'Ajuste manual: sistema de ponto indisponível (2026-03-22, 1h)',
      timestamptz '2026-03-22 13:00:00+00'
    );
  END IF;

  -- Segunda 23/03/2026: 09:00–10:00 America/Sao_Paulo
  IF NOT EXISTS (
    SELECT 1 FROM public.adv_time_bank_entries
    WHERE tenant_id = v_tenant
      AND lower(user_email) = lower(v_email)
      AND recorded_at = timestamptz '2026-03-23 12:00:00+00'
      AND type = 'clock_in'
  ) THEN
    INSERT INTO public.adv_time_bank_entries (tenant_id, user_email, location_id, type, note, recorded_at)
    VALUES (
      v_tenant, v_email, v_loc, 'clock_in',
      'Ajuste manual: sistema de ponto indisponível (2026-03-23, 1h)',
      timestamptz '2026-03-23 12:00:00+00'
    );
    INSERT INTO public.adv_time_bank_entries (tenant_id, user_email, location_id, type, note, recorded_at)
    VALUES (
      v_tenant, v_email, v_loc, 'clock_out',
      'Ajuste manual: sistema de ponto indisponível (2026-03-23, 1h)',
      timestamptz '2026-03-23 13:00:00+00'
    );
  END IF;
END $$;
