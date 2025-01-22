hp -= 1;
scr_one_channel_sound(snd_enemy_damage);
enemy_id = other.item_id;
global.player_stats[other.item_id].player_score += 10;

if hp <= 0 {
	scr_one_channel_sound(snd_enemy_defeat);
	instance_destroy();
}