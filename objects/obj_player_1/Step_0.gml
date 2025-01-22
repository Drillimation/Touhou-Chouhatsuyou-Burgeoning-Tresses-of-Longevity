view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

scr_get_input(play_id);
//depth = -y
script_execute(state);

if keyboard_check(vk_shift) or gamepad_button_check(play_id,gp_face2) or gamepad_button_check(play_id,gp_shoulderl) or gamepad_button_check(play_id,gp_shoulderlb) {
	focusmode = true;
	spd = 1.25;
}
else {
	focusmode = false;
	spd = 1.75
}

if keyboard_check(ord("Z")) or gamepad_button_check(play_id,gp_face1) {
	scr_player_shoot_speed()
}

gamepad_set_button_threshold(play_id,0.5);
if keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(play_id,gp_face3) or gamepad_button_check_pressed(play_id,gp_shoulderr) or gamepad_button_check_pressed(play_id,gp_shoulderrb) {
	if global.player_stats[play_id].bombs >= 1 and global.player_stats[play_id].pow >= 10 and !instance_exists(obj_spellbomb) {
		invincible = true;
		global.player_stats[play_id].bombs -= 1;
		global.player_stats[play_id].pow -= 10;
		instance_create_depth(x,y,0,obj_spellbomb);
		var inst = instance_create_depth(0,0,0,obj_spell_banner_player);
		inst.item_id = play_id;
		with(inst) {
			var struct_data = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","struct_data",false);

			if struct_exists(struct_data, "player_char") {
				var _names = struct_get_names(struct_data.player_char);
				txt = string(struct_get(struct_data.player_char,global.player_stats[item_id].character));
			}
			switch(global.player_stats[item_id].character) {
				case "REIMU": cut_in = spr_reimu_portrait; break;
				case "MARISA": cut_in = spr_marisa_portrait; break;
				case "AYA": cut_in = spr_aya_portrait; break;
				case "SANAE": cut_in = spr_sanae_portrait; break;
			}
		}
		if instance_exists(obj_spell_banner_enemy) {
			with(obj_spell_banner_enemy) {
				failed = true;
			}
		}
	}
	else {
		audio_play_sound(snd_buzzer,10,false);
	}
}

if invincible == true {
	if alarm[1] < 0 {
		alarm[1] = 300;
	}
}