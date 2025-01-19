instance_destroy();

var _j = {
	default_table : array_create(ds_grid_height(global.spellcard_history))
};

for(var i = 0; i < ds_grid_height(global.spellcard_history); i++) {
	_j.default_table[i] = {
		captured : global.spellcard_history[# 0,i],
		encountered : global.spellcard_history[# 1,i]
	}
}
scr_json_save_file(_j,"spellcards.save");

if global.player_stats[0].player_score > global.highscores[# 1,9] {
	instance_create_depth(0,0,0,obj_name_entry_p1);
}
else if global.player_stats[1].player_score > global.highscores[# 1,9] {
	instance_create_depth(0,0,0,obj_name_entry_p2);
}
else {
	global.player_stats[0].player_active = 0;
	global.player_stats[1].player_active = 0;
	instance_create_depth(0,0,0,obj_gameover);
}