scr_shoot_bullet_enemy(0.5,270,spr_bullet_large,10,16,48,false,snd_enemy_fire,false);
scr_shoot_bullet_enemy(0.5,270,spr_bullet_large,10,48,48,false,snd_enemy_fire,false);
scr_shoot_bullet_enemy(0.5,270,spr_bullet_large,10,224,48,false,snd_enemy_fire,false);
scr_shoot_bullet_enemy(0.5,270,spr_bullet_large,10,240,48,false,snd_enemy_fire,false);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large and image_index == 0 {
		randomize();
		for(var i = 0; i < game_difficulty + 2; i++) {
			scr_shoot_bullet_enemy(random_range(0.5,1.5),irandom_range(0,360),spr_bullet_arrow,0,0,0,false,snd_enemy_fire_kira)
		}
	}
}