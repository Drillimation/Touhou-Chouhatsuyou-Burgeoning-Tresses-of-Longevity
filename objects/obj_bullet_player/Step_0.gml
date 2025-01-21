view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;

switch(sprite_index) {
	case spr_reimu_shot: /*Do nothing.*/ break;
	case spr_reimu_shot_s: /*Do nothing.*/ break;
	case spr_marisa_shot: image_angle = direction; break;
	case spr_marisa_shot_s: image_angle = direction; break;
	case spr_aya_shot: image_angle = direction; break;
	case spr_aya_shot_s: image_angle = direction; break;
	case spr_sanae_shot: image_angle = direction; break;
	case spr_sanae_shot_s: image_angle = direction; break;
}

if effect_script != undefined {
	script_execute_ext(effect_script,script_array)
}