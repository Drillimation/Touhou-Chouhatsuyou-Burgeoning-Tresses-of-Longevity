j += 1
j = j mod 6
if j == 0 {
	global.global_stats.border -= 50;
	global.global_stats.border = clamp(global.global_stats.border,0,5000);
	if global.global_stats.border <= 0 {
		instance_destroy();
		if global.player_stats[0].player_active == 1 { 
			global.player_stats[0].player_score += round(global.global_stats.cherry / 10) * 10
			global.player_stats[0].total_supernatural_borders += 1;
		}
		if global.player_stats[1].player_active == 1 { 
			global.player_stats[1].player_score += round(global.global_stats.cherry / 10) * 10 
			global.player_stats[1].total_supernatural_borders += 1;
		}
		global.global_stats.cherry_max += 1000;
		scr_one_channel_sound(snd_border_bonus);
		var inst = instance_create_layer(0,0,"Effects",obj_supernatural_bonus);
		with(inst) {
			cleared = false;
			bonus = round(global.global_stats.cherry / 10) * 10;
		}
	}
}

opac += 0.01;
opac = clamp(opac,0,0.5);