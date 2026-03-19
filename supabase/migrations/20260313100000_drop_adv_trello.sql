-- Remove feature Trello (adv_trello_*). Ordem: cards → lists → boards (FKs).
DROP TABLE IF EXISTS adv_trello_cards;
DROP TABLE IF EXISTS adv_trello_lists;
DROP TABLE IF EXISTS adv_trello_boards;
