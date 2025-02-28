timeline_running = false;
if hp <= 0 {
	global.player_stats[enemy_id].player_score += 50;
	instance_create_depth(x,y,-1000,obj_enemy_explosion);
	randomize();
	if irandom(2) = 1 {
		var inst;
		inst = instance_create_depth(x,y,-1000,obj_item);
		inst.image_index = choose(0,1,2,6,7,8);
	}
	if irandom(2) = 1 {
		var inst;
		inst = instance_create_depth(x + irandom_range(-16,16),y + irandom_range(-16,16),-1000,obj_item);
		inst.image_index = choose(7,8);
	}
}