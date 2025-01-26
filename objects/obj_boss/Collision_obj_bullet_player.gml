switch(other.sprite_index) {
	case spr_reimu_shot: hp -= 5; break;
	case spr_reimu_shot_s: hp -= 1; break;
	case spr_marisa_shot: hp -= 5; break;
	case spr_marisa_shot_s: hp -= 1; break;
	case spr_aya_shot: hp -= 5; break;
	case spr_aya_shot_s: hp -= 1; break;
	case spr_sanae_shot: hp -= 5; break;
	case spr_sanae_shot_s: hp -= 1; break;
}

enemy_id = other.play_id;
global.player_stats[other.play_id].player_score += 10;
global.global_stats.cherry += 1;
global.global_stats.border += 1;
global.global_stats.cherry += clamp(global_stats.cherry,0,global.global_stats.cherry_max);
global.global_stats.border += clamp(global_stats.border,0,500);
if other.sprite_index != spr_marisa_shot_s {
	scr_one_channel_sound(snd_enemy_damage);
	instance_destroy(other);
}