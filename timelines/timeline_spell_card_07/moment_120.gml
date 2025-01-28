scr_shoot_bullet_enemy(0,0,spr_bullet_large,1,64,64,false,0,false)
scr_shoot_bullet_enemy(0,0,spr_bullet_large,1,192,64,false,0,false)

for(var i = 0; i < 18; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1.25 - (j * 0.125),180 + ((180 / 18) * i),spr_bullet_arrowhead,1,0,0,false,snd_enemy_fire)
	}
}