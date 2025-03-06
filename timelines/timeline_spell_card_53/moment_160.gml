with(obj_bullet_enemy) {
	randomize();
	if sprite_index == spr_bullet_large {
		direction = irandom_range(0,360);
	}
	if sprite_index == spr_bullet_small_2 {
		effect_script = scr_danmaku_change_speed;
		script_array = [1,0.1]
	}
}
timeline_position = 120;