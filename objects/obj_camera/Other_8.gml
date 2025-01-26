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
			struct_data = scr_json_load_file("cutscenes/stage" + string(global.global_stats.stage) + "_" + string(_char) + "midbattle" + string(global.suf) + ".json","struct_data",false);
			t_scene_info = [];
			array_copy(t_scene_info,0,struct_data.t_scene_info,0,array_length(struct_data.t_scene_info));

			boss_name = string(struct_data.char_info.char_name) + "\n" + string(struct_data.char_info.char_desc);	
			boss_sprite = asset_get_index(struct_data.boss_sprite);
		}
		break;
	case "BOSS_CUTSCENE": 
		var inst = instance_create_depth(0,0,0,obj_dialogue);
		with(inst) {
			struct_data = scr_json_load_file("cutscenes/stage" + string(global.global_stats.stage) + "_" + string(_char) + "prebattle" + string(global.suf) + ".json","struct_data",false);
			t_scene_info = [];
			array_copy(t_scene_info,0,struct_data.t_scene_info,0,array_length(struct_data.t_scene_info));

			boss_name = string(struct_data.char_info.char_name) + "\n" + string(struct_data.char_info.char_desc);	
			boss_sprite = asset_get_index(struct_data.boss_sprite);
		}
		break;
}

with(obj_bullet_enemy) {
	instance_destroy();
}
with(obj_enemy) {
	if can_attack == true {
		instance_destroy();
	}
}
instance_destroy();