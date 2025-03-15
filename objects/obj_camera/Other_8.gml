camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));
camera_set_view_pos(view_camera[1], x - (view_wport[1] / 2), y - (view_hport[1] / 2));
switch(end_path_function) {
	case "MIDBOSS": 
		view_xview = camera_get_view_x(view_camera[0]);
		view_yview = camera_get_view_y(view_camera[0]);
		var inst = instance_create_layer(view_xview + 128,view_yview + 96,"Enemies",obj_spawn_midboss);
		with(inst) {
			sprite_index = other.midboss_sprite;
			midboss = other.midboss;
		}
		break;
	case "MIDBOSS_CUTSCENE": 
		var inst = instance_create_depth(0,0,0,obj_dialogue);
		with(inst) {
			struct_data = scr_json_load_file("cutscenes/stage" + string(global.global_stats.stage) + "_" + string(other._char) + "_" + "midbattle" + string(global.suf) + ".json","struct_data",false);
			t_scene_info = [];
			array_copy(t_scene_info,0,struct_data.t_scene_info,0,array_length(struct_data.t_scene_info));

			boss_name = string(struct_data.char_info.char_name) + "\n" + string(struct_data.char_info.char_desc);	
			boss_sprite = asset_get_index(struct_data.boss_sprite);
		}
		break;
	case "BOSS_CUTSCENE": 
		var inst = instance_create_depth(0,0,0,obj_dialogue);
		with(inst) {
			struct_data = scr_json_load_file("cutscenes/stage" + string(global.global_stats.stage) + "_" + string(other._char) + "_" + "prebattle" + string(global.suf) + ".json","struct_data",false);
			t_scene_info = [];
			array_copy(t_scene_info,0,struct_data.t_scene_info,0,array_length(struct_data.t_scene_info));

			boss_name = string(struct_data.char_info.char_name) + "\n" + string(struct_data.char_info.char_desc);	
			boss_sprite = asset_get_index(struct_data.boss_sprite);
		}
		break;
}

with(obj_bullet_enemy) {
	instance_destroy();
	global.global_stats.cherry += 10;
	global.global_stats.border += 10;
	global.global_stats.cherry = clamp(global.global_stats.cherry,0,global.global_stats.cherry_max);
	global.global_stats.border = clamp(global.global_stats.border,0,5000);
	
}
with(obj_enemy) {
	if can_attack == true {
		instance_destroy();
	}
}
instance_destroy();