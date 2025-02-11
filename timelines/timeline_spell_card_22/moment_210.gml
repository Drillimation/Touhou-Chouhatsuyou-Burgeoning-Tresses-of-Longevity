if ammo >= 1 {
	timeline_position = 125;
}
else {
	if instance_exists(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser {
			instance_destroy();
		}
	}
}