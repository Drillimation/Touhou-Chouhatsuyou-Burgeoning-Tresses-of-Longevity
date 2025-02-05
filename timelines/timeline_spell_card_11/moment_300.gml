randomize();
for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),choose(spr_bullet_small_3,spr_bullet_arrow,spr_bullet_arrowhead),choose(2,10,12),-16,-16,false,snd_enemy_fire,true);
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),choose(spr_bullet_small_3,spr_bullet_arrow,spr_bullet_arrowhead),choose(2,10,12),-16,16,false,snd_enemy_fire,true);
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),choose(spr_bullet_small_3,spr_bullet_arrow,spr_bullet_arrowhead),choose(2,10,12),16,-16,false,snd_enemy_fire,true);
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),choose(spr_bullet_small_3,spr_bullet_arrow,spr_bullet_arrowhead),choose(2,10,12),16,16,false,snd_enemy_fire,true);
}