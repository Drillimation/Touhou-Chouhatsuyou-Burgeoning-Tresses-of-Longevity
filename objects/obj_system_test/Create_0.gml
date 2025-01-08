txt[0] = "Starting DEOS..."
txt[1] = "Testing extended memory... done."
txt[2] = " "
txt[3] = "DRILLIMATION SYSTEMS"
txt[4] = "DRILLER ENGINE SYSTEM 2"
txt[5] = " "
txt[6] = "MAIN CPU"
txt[7] = "ROM OK"
txt[8] = "COMM RAM OK"
txt[9] = " "
txt[10] = "SUB CPU"
txt[11] = "ROM OK"
txt[12] = "RAM OK"
txt[13] = "SUB CPU OK"

alarm[0] = 5;
_i = 0;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

global.credits = 0;

//Load high scores
if !file_exists("highscores.save") {
	score_table = scr_json_load_file("main/default_highscores.json","struct_data",false)
}
else {
	score_table = scr_json_load_file("highscores.save","struct_data",false)
}

global.highscores = ds_grid_create(4,10);
for(var i = 0; i < ds_grid_height(global.highscores); i++) {
	global.highscores[# 0,i] = score_table.default_table[i].name
	global.highscores[# 1,i] = score_table.default_table[i].score
	global.highscores[# 2,i] = score_table.default_table[i].stage
	global.highscores[# 3,i] = score_table.default_table[i].char
}
global.highscore = global.highscores[# 1,0];

//Load spell card statistics
if !file_exists("spellcards.save") {
	global.spellcard_history = ds_grid_create(2,64);
	for(var i = 0; i < ds_grid_height(global.spellcard_history); i++) {
		global.spellcard_history[# 0,i] = 0
		global.spellcard_history[# 1,i] = 0
	}
}
else {
	spell_table = scr_json_load_file("spellcards.save","struct_data",false)
	global.spellcard_history = ds_grid_create(2,array_length(spell_table));
	for(var i = 0; i < ds_grid_height(global.spellcard_history); i++) {
		global.spellcard_history[# 0,i] = spell_table.default_table[i].captured
		global.spellcard_history[# 1,i] = spell_table.default_table[i].encountered
	}
}

//Load other variables
scr_newgame();