if failed == false {
	global.spellcard_history[# 0,spell_id] += 1;
	if global.player_stats[0].player_active == 1 { global.player_stats[0].player_score += spell_bonus }
	if global.player_stats[1].player_active == 1 { global.player_stats[1].player_score += spell_bonus }
}
global.spellcard_history[# 1,spell_id] += 1;
var inst = instance_create_layer(0,0,"Effects",obj_spell_bonus);
with(inst) {
	cleared = other.failed;
	bonus = other.spell_bonus;
}