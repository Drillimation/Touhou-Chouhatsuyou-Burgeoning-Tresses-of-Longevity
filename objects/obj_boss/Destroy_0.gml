scr_one_channel_sound(snd_boss_defeat);
var inst;
inst = instance_create_depth(x,y,0,obj_defeated_boss)
inst.image_index = defeat_img;
if hp <= 0 {
	if timer >= 0.1 {
		if global.player_stats[0].player_active == 1 { global.player_stats[0].player_score += round(defeat_bonus + (timer*100)); }
		if global.player_stats[1].player_active == 1 { global.player_stats[1].player_score += round(defeat_bonus + (timer*100)); }
		var inst6 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst6.display_score = defeat_bonus;
		if drop_items_after_death == true {
			randomize();
			var inst1 = instance_create_depth(x,y,-1000,obj_item);
			inst1.image_index = choose(3,5);
			var inst2 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
			inst2.image_index = 2
			for (var i = 0; i < 4; i += 1) {
				var inst3 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
				inst3.image_index = 0;
			}
			for (var i = 0; i < 5; i += 1) {
				var inst4 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
				inst4.image_index = 1;
			}
			for (var i = 0; i < 3; i += 1) {
				var inst5 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
				inst5.image_index = 6
			}
			for (var i = 0; i < 3; i += 1) {
				var inst7 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
				inst7.image_index = 7
			}
		}
	}
	with(obj_bullet_enemy) {
		if global.player_stats[0].player_active == 1 { global.player_stats[0].player_score += (abs(round((y_pos / 10) - 30)) * 10); }
		if global.player_stats[1].player_active == 1 { global.player_stats[1].player_score += (abs(round((y_pos / 10) - 30)) * 10); }
			global.global_stats.cherry += 10;
			global.global_stats.border += 10;
			global.global_stats.cherry = clamp(global.global_stats.cherry,0,global.global_stats.cherry_max);
			global.global_stats.border = clamp(global.global_stats.border,0,5000);
		instance_destroy();
	}
	with(obj_warning_laser) { instance_destroy(); }
}
switch(boss_type) {
	case 0:
		view_xview = camera_get_view_x(view_camera[0]);
		view_yview = camera_get_view_y(view_camera[0]);
		var cam = instance_create_layer(view_xview + 128,view_yview + 144,"Instances",obj_camera)
		with(cam) {
			stage_speed = 0.5;
			end_path_function = "BOSS_CUTSCENE";
			midboss = obj_enemy;
			midboss_sprite = spr_mayu;
			path_start(path_scroll_h2,stage_speed,path_action_stop,true);
		}
		break;
	case 1:
		var postbattle_cutscene = instance_create_depth(0,0,0,obj_dialogue);
		with(postbattle_cutscene) {
			struct_data = scr_json_load_file("cutscenes/stage" + string(global.global_stats.stage) + "_" + string(other._char) + "_" + "postbattle" + string(global.suf) + ".json","struct_data",false);
			t_scene_info = [];
			array_copy(t_scene_info,0,struct_data.t_scene_info,0,array_length(struct_data.t_scene_info));

			boss_name = string(struct_data.char_info.char_name) + "\n" + string(struct_data.char_info.char_desc);	
			boss_sprite = asset_get_index(struct_data.boss_sprite);
		}
		break;
	case 2:
		var midbattle_cutscene = instance_create_depth(0,0,0,obj_dialogue);
		with(midbattle_cutscene) {
			struct_data = scr_json_load_file("cutscenes/stage" + string(global.global_stats.stage) + "_" + string(other._char) + "_" + "prebattle" + string(global.suf) + ".json","struct_data",false);
			t_scene_info = [];
			array_copy(t_scene_info,0,struct_data.t_scene_info,0,array_length(struct_data.t_scene_info));

			boss_name = string(struct_data.char_info.char_name) + "\n" + string(struct_data.char_info.char_desc);	
			boss_sprite = asset_get_index(struct_data.boss_sprite);
		}
		break;
	case 3:
		instance_create_depth(0,0,0,obj_final_defeat);
		break;
}