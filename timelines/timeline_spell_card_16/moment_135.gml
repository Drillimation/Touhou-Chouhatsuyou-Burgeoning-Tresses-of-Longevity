if ammo >= 1 {
	timeline_position = 125;
}
else {
	randomize();
	speed = 1;
	direction = irandom_range(0,360);
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}