scr_subscribe_to_event(enum_pub_sub_event_types.actions_activate, scr_spellbook_actions_activate, self);
scr_subscribe_to_event(enum_pub_sub_event_types.actions_deactivate, scr_spellbook_actions_deactivate, self);
scr_subscribe_to_event(enum_pub_sub_event_types.spellbook_selected, scr_spellbook_spellbook_selected, self);
scr_subscribe_to_event(enum_pub_sub_event_types.spellbook_deselected, scr_spellbook_spellbook_deselected, self);

// Move ourselves offscreen
x = -2000;
y = 0;

spellbook_deck = [];
scroll_y = 0;
spellbook_surface = -1;