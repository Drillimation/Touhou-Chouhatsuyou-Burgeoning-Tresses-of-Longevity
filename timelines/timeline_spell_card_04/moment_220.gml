randomize();
for(var j = 0; j < 2; j++) {
	ran_dir = irandom_range(0,360)
	for(var i = 0; i < 6; i++) {
		scr_shoot_bullet_enemy(1.25 - (0.1 * i),ran_dir,spr_bullet_seed_2,1,0,0,false,snd_enemy_fire);
	}
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser {
		for(var i = 0; i < game_difficulty + 1; i++) {
			scr_shoot_bullet_enemy(0.5,direction + (irandom_range(-5,5)),spr_bullet_small_2,5,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_gravity,[0.01])
		}
	}
}
direction = irandom(0,360);
if direction > 90 and direction < 270 { face = 1; } else { face = 2; }
speed = 1;
enemy_function = scr_enemy_set_friction;
enemy_function_array = [0.01];