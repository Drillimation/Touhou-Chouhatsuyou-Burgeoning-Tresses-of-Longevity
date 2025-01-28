if ammo >= 1 {
	timeline_position = 5;
}
else {
	randomize();
	hspeed = choose(-1.5,1.5);
	enemy_function = scr_enemy_set_friction;
	enemy_function_array = [0.01];
}