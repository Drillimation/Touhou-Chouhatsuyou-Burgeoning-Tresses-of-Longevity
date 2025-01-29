if ammo >= 1 {
	timeline_position = 170;
}
else {
	randomize();
	hspeed = choose(-1,1);
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
	enemy_function = scr_enemy_set_friction;
	enemy_function_array = [0.01];
}