if ammo >= 1 {
	timeline_position = 200;
}
else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser {
			instance_destroy();
		}
	}
}