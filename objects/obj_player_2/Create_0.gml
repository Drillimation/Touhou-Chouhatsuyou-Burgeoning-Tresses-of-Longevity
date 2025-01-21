spd = 1.75;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
can_move = true;
invincible = false;
play_id = 1;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

state = scr_move_state;

switch(global.player_stats[play_id].character) {
	case "REIMU": sprite_index = spr_reimu; turret = spr_reimu_orb; break;
	case "MARISA": sprite_index = spr_marisa; turret = spr_marisa_orb; break;
	case "AYA": sprite_index = spr_aya; turret = spr_aya_orb; break;
	case "SANAE": sprite_index = spr_sanae; turret = spr_sanae_orb; break;
}

image_speed = 0;

focusmode = false;
if global.global_stats.breezy_mode == true {
	alarm[0] = 300;
}

j = 0;
k = 0;

_j = 0;
face = 1;