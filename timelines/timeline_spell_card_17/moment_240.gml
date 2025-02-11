with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		instance_destroy();
		randomize();
		for(var i = 0; i < game_difficulty + 2; i++) {
			scr_shoot_bullet_enemy(random_range(1,1.25),irandom_range(0,360),spr_bullet_arrowhead,0,0,0,false,snd_enemy_fire_kira);
		}
	}
}
randomize();
speed = 1;
direction = irandom_range(0,360);
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }