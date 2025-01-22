if hp <= 0 {
	global.playerscore[enemy_id] += 50;
	instance_create_depth(x,y,-1000,obj_enemy_explosion);
	randomize();
	if irandom(2) = 1 {
		var inst = instance_create_depth(x,y,-1000,obj_item);
		inst.image_index = choose(0,1,2,6,7);
	}
}