/// @description enemy turn
var target = instance_find(obj_character, irandom_range(0, instance_number(obj_character)-1));
ds_list_add(the_card.collected_targets, target);
script_execute(the_card.do_action_script, the_card);
ds_list_clear(the_card.collected_targets);
scr_resume_smallness(self);
with(scr_create_event_data(obj_event_data_turn_step, self)) {
	scr_dispatch_blocking(self);
}