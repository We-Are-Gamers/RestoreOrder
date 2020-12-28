avail_cards_barbarian = ds_list_create();
avail_cards_paladin = ds_list_create();
avail_cards_witch = ds_list_create();
avail_cards_cleric = ds_list_create();

disc_cards_barbarian = ds_list_create();
disc_cards_paladin = ds_list_create();
disc_cards_witch = ds_list_create();
disc_cards_cleric = ds_list_create();
play_cards_barbarian = [false, false]
play_cards_paladin = [false, false];
play_cards_witch = [false, false];
play_cards_cleric = [false, false];

ds_list_add(avail_cards_barbarian, obj_card_barbarian_attack);
ds_list_add(avail_cards_barbarian, obj_card_barbarian_attack);
ds_list_add(avail_cards_barbarian, obj_card_barbarian_attack);
ds_list_add(avail_cards_barbarian, obj_card_barbarian_debuff);

ds_list_add(avail_cards_paladin, obj_card_paladin_defend);
ds_list_add(avail_cards_paladin, obj_card_paladin_defend);
ds_list_add(avail_cards_paladin, obj_card_paladin_buff);
ds_list_add(avail_cards_paladin, obj_card_paladin_buff);

ds_list_add(avail_cards_witch, obj_card_witch_magic_attack);
ds_list_add(avail_cards_witch, obj_card_witch_magic_attack);
ds_list_add(avail_cards_witch, obj_card_witch_magic_debuff);
ds_list_add(avail_cards_witch, obj_card_witch_magic_debuff);

ds_list_add(avail_cards_cleric, obj_card_cleric_magic_defend);
ds_list_add(avail_cards_cleric, obj_card_cleric_magic_heal);
ds_list_add(avail_cards_cleric, obj_card_cleric_magic_heal);
ds_list_add(avail_cards_cleric, obj_card_cleric_magic_heal);

ds_list_shuffle(avail_cards_barbarian);
ds_list_shuffle(avail_cards_paladin);
ds_list_shuffle(avail_cards_witch);
ds_list_shuffle(avail_cards_cleric);