function scr_targetable_targets_deactivate(targetable_id, event_data_id){
	targetable_id.targetable = false;
	targetable_id.selected = false;
	scr_resume_smallness(targetable_id);
}