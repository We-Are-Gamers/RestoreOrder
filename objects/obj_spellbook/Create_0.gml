scr_subscribe_to_event(enum_pub_sub_event_types.actions_activate, scr_spellbook_actions_activate, self);
scr_subscribe_to_event(enum_pub_sub_event_types.actions_deactivate, scr_spellbook_actions_deactivate, self);
scr_subscribe_to_event(enum_pub_sub_event_types.spellbook_selected, scr_spellbook_spellbook_selected, self);
scr_subscribe_to_event(enum_pub_sub_event_types.spellbook_deselected, scr_spellbook_spellbook_deselected, self);

// put this at -300 because "Instances" is at -200
book_id = instance_create_depth(-2000, 0, -300, obj_spellbook_book);
