if ammo >= 1 {
	timeline_position = 180;
}
else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_large {
			instance_destroy();
		}
	}
	timeline_position = 120;
}