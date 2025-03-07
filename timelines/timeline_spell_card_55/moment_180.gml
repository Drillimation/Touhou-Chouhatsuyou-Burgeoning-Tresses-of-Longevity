randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < game_difficulty * 2 + 4; i++) {
			scr_shoot_bullet_enemy(random_range(0.5,1),irandom_range(0,360),choose(spr_bullet_pellet,spr_bullet_small_2),15,0,0,false,snd_enemy_fire_kira);
		}
	}
}