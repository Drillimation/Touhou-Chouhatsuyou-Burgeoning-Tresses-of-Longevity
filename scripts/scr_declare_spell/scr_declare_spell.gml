function scr_declare_spell(_spell_id,_cut_in,_bg){
	var inst = instance_create_layer(0,0,"Spell",obj_spell_banner_enemy);
	with(inst) {
		spell_id = _spell_id;
		if is_nan(round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100)) {
			percen = 0;
		}
		else {
			percen = round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100);
		}
		
		struct_data = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","struct_data",false);

		txt = struct_data.boss_char[spell_id];
		
		cut_in = _cut_in;
		bg = _bg;
		boss_id = other.id;		
	}
}