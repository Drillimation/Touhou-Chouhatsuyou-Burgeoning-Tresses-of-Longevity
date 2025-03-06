randomize();
for(var i = -4 - game_difficulty; i < game_difficulty + 5; i++) {
	scr_shoot_bullet_enemy(1.5,15 * i,spr_bullet_arrow,15,0,0,true,snd_enemy_fire);
}
var ex = irandom_range(64,192);
var ey = irandom_range(32,96);
for(var i = 0; i < (game_difficulty * 2) + 4; i++) {
	scr_shoot_bullet_enemy(random_range(0.75,1.25),irandom_range(0,360),spr_bullet_small_2,2,ex,ey,false,snd_enemy_fire,false);
}