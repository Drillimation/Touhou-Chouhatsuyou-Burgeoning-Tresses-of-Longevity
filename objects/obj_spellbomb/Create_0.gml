view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

item_id = 0;

var struct_data = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","struct_data",false);

if struct_exists(struct_data, "player_char") {
	txt = struct_get(struct_data.player_char,string(global.player_stats[item_id].character));
}

scr_one_channel_sound(snd_spell_card_player);
switch(item_id) {
	case 0:
		px = obj_player_1.x
		py = obj_player_1.y
		break;
	case 1:
		px = obj_player_2.x
		py = obj_player_2.y
		break;
}

alarm[0] = 300;