var struct_data = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","struct_data",false);

txt = struct_data.boss_char[0];

cut_in = spr_blank_portrait;
bg = spr_blank_portrait;
boss_id = noone;
spell_id = 0;
spell_bonus = 0;
if is_nan(round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100)) {
	percen = 0;
}
else {
	percen = round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100);
}

x_pos = 512;
y_pos = 288;
failed = false;
opac = 0;

audio_play_sound(snd_spell_card_declare,10,false);

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);