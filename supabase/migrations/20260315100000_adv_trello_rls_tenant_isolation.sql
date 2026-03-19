-- Hardens Trello RLS policies to enforce tenant isolation.
-- Fixes permissive policies introduced in 20260312100000_adv_trello_boards_lists_cards.sql.

-- Central tenant used by the current Admin deployment.
-- Keep aligned with app-level TENANT_ID constant.

-- Boards: direct tenant filter.
DROP POLICY IF EXISTS adv_trello_boards_select ON adv_trello_boards;
DROP POLICY IF EXISTS adv_trello_boards_insert ON adv_trello_boards;
DROP POLICY IF EXISTS adv_trello_boards_update ON adv_trello_boards;
DROP POLICY IF EXISTS adv_trello_boards_delete ON adv_trello_boards;

CREATE POLICY adv_trello_boards_select
ON adv_trello_boards
FOR SELECT
TO authenticated
USING (tenant_id = '00000000-0000-0000-0000-000000000000');

CREATE POLICY adv_trello_boards_insert
ON adv_trello_boards
FOR INSERT
TO authenticated
WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');

CREATE POLICY adv_trello_boards_update
ON adv_trello_boards
FOR UPDATE
TO authenticated
USING (tenant_id = '00000000-0000-0000-0000-000000000000')
WITH CHECK (tenant_id = '00000000-0000-0000-0000-000000000000');

CREATE POLICY adv_trello_boards_delete
ON adv_trello_boards
FOR DELETE
TO authenticated
USING (tenant_id = '00000000-0000-0000-0000-000000000000');

-- Lists: allowed only when parent board belongs to the tenant.
DROP POLICY IF EXISTS adv_trello_lists_select ON adv_trello_lists;
DROP POLICY IF EXISTS adv_trello_lists_insert ON adv_trello_lists;
DROP POLICY IF EXISTS adv_trello_lists_update ON adv_trello_lists;
DROP POLICY IF EXISTS adv_trello_lists_delete ON adv_trello_lists;

CREATE POLICY adv_trello_lists_select
ON adv_trello_lists
FOR SELECT
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM adv_trello_boards b
    WHERE b.id = board_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);

CREATE POLICY adv_trello_lists_insert
ON adv_trello_lists
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (
    SELECT 1
    FROM adv_trello_boards b
    WHERE b.id = board_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);

CREATE POLICY adv_trello_lists_update
ON adv_trello_lists
FOR UPDATE
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM adv_trello_boards b
    WHERE b.id = board_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
)
WITH CHECK (
  EXISTS (
    SELECT 1
    FROM adv_trello_boards b
    WHERE b.id = board_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);

CREATE POLICY adv_trello_lists_delete
ON adv_trello_lists
FOR DELETE
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM adv_trello_boards b
    WHERE b.id = board_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);

-- Cards: allowed only when parent list/board belongs to the tenant.
DROP POLICY IF EXISTS adv_trello_cards_select ON adv_trello_cards;
DROP POLICY IF EXISTS adv_trello_cards_insert ON adv_trello_cards;
DROP POLICY IF EXISTS adv_trello_cards_update ON adv_trello_cards;
DROP POLICY IF EXISTS adv_trello_cards_delete ON adv_trello_cards;

CREATE POLICY adv_trello_cards_select
ON adv_trello_cards
FOR SELECT
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM adv_trello_lists l
    JOIN adv_trello_boards b ON b.id = l.board_id
    WHERE l.id = list_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);

CREATE POLICY adv_trello_cards_insert
ON adv_trello_cards
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (
    SELECT 1
    FROM adv_trello_lists l
    JOIN adv_trello_boards b ON b.id = l.board_id
    WHERE l.id = list_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);

CREATE POLICY adv_trello_cards_update
ON adv_trello_cards
FOR UPDATE
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM adv_trello_lists l
    JOIN adv_trello_boards b ON b.id = l.board_id
    WHERE l.id = list_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
)
WITH CHECK (
  EXISTS (
    SELECT 1
    FROM adv_trello_lists l
    JOIN adv_trello_boards b ON b.id = l.board_id
    WHERE l.id = list_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);

CREATE POLICY adv_trello_cards_delete
ON adv_trello_cards
FOR DELETE
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM adv_trello_lists l
    JOIN adv_trello_boards b ON b.id = l.board_id
    WHERE l.id = list_id
      AND b.tenant_id = '00000000-0000-0000-0000-000000000000'
  )
);
