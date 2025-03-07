if ammo >= 1 {
	timeline_position = 10
}
else {
	randomize();
	direction = irandom_range(0,360);
	speed = 1;
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}