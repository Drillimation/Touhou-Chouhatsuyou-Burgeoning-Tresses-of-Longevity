if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(1,gp_face1){
	var check_fade = typist.get_state()
	if check_fade == 1 {
		if index == array_length(t_scene_info) - 1 {
			instance_destroy();
		}
		else {
			if struct_exists(t_scene_info[index],"funct") {
				if array_length(t_scene_info[index].funct) > 1 {
					script_execute_ext(script_get_name(t_scene_info[index].funct[0]),t_scene_info[index].funct,1)
				}
				else {
					script_execute_ext(script_get_name(t_scene_info[index].funct[0]));
				}
			}
			index += 1
		}
	}
	else {
		typist.skip();
	}
}

if reveal_sprite == true {
	sprite_opac += 0.01;
	sprite_opac = clamp(sprite_opac,0,1);
}

if reveal_boss == true {
	boss_opac += 0.01;
	boss_opac = clamp(boss_opac,0,1);
}