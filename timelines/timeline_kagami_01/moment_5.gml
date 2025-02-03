randomize();
for(var i = 0; i < game_difficulty + 3; i++) {
	scr_shoot_bullet_enemy(1.5,irandom_range(0,360),choose(spr_bullet_arrow,spr_bullet_arrowhead,spr_bullet_seed_2),choose(1,12,14),0,0,false,snd_enemy_fire);
}
ammo -= 1;