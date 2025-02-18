if ammo >= 1 {
	timeline_position = 210;
}
else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser {
			instance_destroy();
		}
	}
	if instance_exists(obj_player_1) {
		x_pos = obj_player_1.x
	}
}