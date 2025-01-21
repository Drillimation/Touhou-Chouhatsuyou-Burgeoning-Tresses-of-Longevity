//if !instance_exists(obj_dialogue) {
	global.player_stats[play_id].player_health += 1;
	global.player_stats[play_id].player_health = clamp(global.player_stats[play_id].player_health,0,30);
//}
alarm[0] = 300;