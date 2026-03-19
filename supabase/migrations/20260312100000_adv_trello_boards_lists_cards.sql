-- Trello clone: boards, lists, cards. Prefix adv_trello_* (feature isolada).
-- RLS: authenticated, filtro por tenant_id. Não altera adv_tasks.

-- Boards
CREATE TABLE adv_trello_boards (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  name TEXT NOT NULL,
  slug TEXT NOT NULL,
  sort_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  CONSTRAINT adv_trello_boards_tenant_slug UNIQUE (tenant_id, slug)
);

CREATE INDEX idx_adv_trello_boards_tenant ON adv_trello_boards(tenant_id);
CREATE INDEX idx_adv_trello_boards_sort ON adv_trello_boards(tenant_id, sort_order);

CREATE TRIGGER adv_trello_boards_updated_at
  BEFORE UPDATE ON adv_trello_boards
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_trello_boards ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_trello_boards_select ON adv_trello_boards;
DROP POLICY IF EXISTS adv_trello_boards_insert ON adv_trello_boards;
DROP POLICY IF EXISTS adv_trello_boards_update ON adv_trello_boards;
DROP POLICY IF EXISTS adv_trello_boards_delete ON adv_trello_boards;
CREATE POLICY adv_trello_boards_select ON adv_trello_boards FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_trello_boards_insert ON adv_trello_boards FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_trello_boards_update ON adv_trello_boards FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_trello_boards_delete ON adv_trello_boards FOR DELETE TO authenticated USING (true);

-- Lists
CREATE TABLE adv_trello_lists (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  board_id UUID NOT NULL REFERENCES adv_trello_boards(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  sort_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_trello_lists_board ON adv_trello_lists(board_id);
CREATE INDEX idx_adv_trello_lists_board_sort ON adv_trello_lists(board_id, sort_order);

CREATE TRIGGER adv_trello_lists_updated_at
  BEFORE UPDATE ON adv_trello_lists
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_trello_lists ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_trello_lists_select ON adv_trello_lists;
DROP POLICY IF EXISTS adv_trello_lists_insert ON adv_trello_lists;
DROP POLICY IF EXISTS adv_trello_lists_update ON adv_trello_lists;
DROP POLICY IF EXISTS adv_trello_lists_delete ON adv_trello_lists;
CREATE POLICY adv_trello_lists_select ON adv_trello_lists FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_trello_lists_insert ON adv_trello_lists FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_trello_lists_update ON adv_trello_lists FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_trello_lists_delete ON adv_trello_lists FOR DELETE TO authenticated USING (true);

-- Cards (adv_task_id opcional para vínculo futuro com adv_tasks)
CREATE TABLE adv_trello_cards (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  list_id UUID NOT NULL REFERENCES adv_trello_lists(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT,
  sort_order INT NOT NULL DEFAULT 0,
  due_date DATE,
  assignee_email TEXT,
  adv_task_id UUID REFERENCES adv_tasks(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  created_by UUID REFERENCES auth.users(id) ON DELETE SET NULL
);

CREATE INDEX idx_adv_trello_cards_list ON adv_trello_cards(list_id);
CREATE INDEX idx_adv_trello_cards_list_sort ON adv_trello_cards(list_id, sort_order);

CREATE TRIGGER adv_trello_cards_updated_at
  BEFORE UPDATE ON adv_trello_cards
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_trello_cards ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_trello_cards_select ON adv_trello_cards;
DROP POLICY IF EXISTS adv_trello_cards_insert ON adv_trello_cards;
DROP POLICY IF EXISTS adv_trello_cards_update ON adv_trello_cards;
DROP POLICY IF EXISTS adv_trello_cards_delete ON adv_trello_cards;
CREATE POLICY adv_trello_cards_select ON adv_trello_cards FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_trello_cards_insert ON adv_trello_cards FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_trello_cards_update ON adv_trello_cards FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_trello_cards_delete ON adv_trello_cards FOR DELETE TO authenticated USING (true);
