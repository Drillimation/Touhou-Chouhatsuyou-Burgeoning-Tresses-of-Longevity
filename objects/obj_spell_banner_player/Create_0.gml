item_id = 0;

var struct_data = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","struct_data",false);

if struct_exists(struct_data, "player_char") {
	var _names = struct_get_names(struct_data.player_char);
	txt = string(struct_get(struct_data.player_char,global.character[item_id]));
}

cut_in = spr_blank_portrait;

x_pos = -256;
y_pos = 288;

audio_play_sound(snd_spell_card_declare,10,false);

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);