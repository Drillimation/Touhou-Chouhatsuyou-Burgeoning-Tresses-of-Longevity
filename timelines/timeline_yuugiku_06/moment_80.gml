if ammo >= 1 {
	timeline_position = 70;
}
else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_large {
			instance_destroy();
		}
	}
	randomize();
	direction = irandom_range(0,360);
	speed = 1;
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}