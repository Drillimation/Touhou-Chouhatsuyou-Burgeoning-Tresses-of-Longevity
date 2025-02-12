if ammo >= 1 {
	timeline_position = 150;
}
else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser {
			instance_destroy();
		}
	}
	randomize();
	speed = 1;
	direction = irandom_range(0,360);
}