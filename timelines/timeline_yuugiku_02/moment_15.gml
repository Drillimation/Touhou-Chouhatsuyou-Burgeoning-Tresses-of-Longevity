if ammo >= 1 {
	timeline_position = 5;
}
else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_arrowhead {
			instance_destroy();
			scr_shoot_bullet_enemy(1,direction,spr_bullet_arrow,0,0,0,false,snd_enemy_fire_kira);
			scr_shoot_bullet_enemy(1,direction + 180,spr_bullet_arrow,0,0,0,false,snd_enemy_fire_kira);
		}
	}
	randomize();
	direction = irandom_range(0,360);
	speed = 1;
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}