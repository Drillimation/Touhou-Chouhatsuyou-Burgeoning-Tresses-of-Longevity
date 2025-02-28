with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		instance_destroy();
		for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
			scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 4) + 12)) * i, spr_bullet_small_3,2,0,0,true,snd_enemy_fire_kira);
		}
	}
}
randomize();
if irandom(3) == 0 {
	for(var i = 0; i < 10; i++) {
		for(var j = 0; j < (game_difficulty * 2) + 6; j++) {
			scr_shoot_bullet_enemy(1.5 - (0.1 * i),((360 / ((game_difficulty * 2) + 6)) * j) + (i * 10),spr_bullet_arrowhead,8,0,0,true,snd_enemy_fire);
		}
	}
}

for(var i = 0; i < (game_difficulty * 2) + 4; i++) {
	scr_shoot_bullet_enemy(0,0,spr_bullet_large,4,irandom_range(32,224),irandom_range(32,96),false,snd_enemy_fire,false);
}