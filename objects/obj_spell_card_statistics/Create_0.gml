struct_data = scr_json_load_file("main/options" + string(global.suf) + ".json","struct_data",false)

prompt = struct_data.prompt.adjust_option;
prompt = scr_button_menu(prompt);

//Load spell card statistics
if !file_exists("spellcards.save") {
	global.spellcard_history = ds_grid_create(2,64);
	for(var i = 0; i < ds_grid_height(global.spellcard_history); i++) {
		global.spellcard_history[# 0,i] = 0
		global.spellcard_history[# 1,i] = 0
		if is_nan(round((global.spellcard_history[# 0,i] / global.spellcard_history[# 1,i]) * 100)) {
			success_rate[i] = 0;
		}
		else {
			success_rate[i] = round((global.spellcard_history[# 0,i] / global.spellcard_history[# 1,i]) * 100);
		}
	}
}
else {
	spell_table = scr_json_load_file("spellcards.save","struct_data",false)
	global.spellcard_history = ds_grid_create(2,array_length(spell_table.default_table));
	for(var i = 0; i < ds_grid_height(global.spellcard_history); i++) {
		global.spellcard_history[# 0,i] = spell_table.default_table[i].captured
		global.spellcard_history[# 1,i] = spell_table.default_table[i].encountered
		if is_nan(round((global.spellcard_history[# 0,i] / global.spellcard_history[# 1,i]) * 100)) {
			success_rate[i] = 0;
		}
		else {
			success_rate[i] = round((global.spellcard_history[# 0,i] / global.spellcard_history[# 1,i]) * 100);
		}
	}
}

//Get spell card names
spell_names = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","spell_names",false);

button = [];
desc = [];
array_copy(button,0,spell_names.boss_char,0,array_length(spell_names.boss_char));
array_copy(desc,0,struct_data.statistics,0,array_length(struct_data.statistics));

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow("font_ms_gothic","drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

list_max_entries = 8;

scr_menu_initiate(false,true,true,list_max_entries);
_ss = 0;