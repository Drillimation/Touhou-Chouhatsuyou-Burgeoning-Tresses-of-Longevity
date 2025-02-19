with(obj_bullet_enemy) {
	instance_destroy();
	if sprite_index == spr_bullet_large {
		randomize();
		for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
			scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),spr_bullet_small_2,0,0,0,false,snd_enemy_fire_kira);
		}
	}
}
speed = 1.5;
direction = irandom_range(0,360);
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }