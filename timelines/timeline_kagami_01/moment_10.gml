if ammo >= 1 {
	timeline_position = 5;
}
else {
	direction = irandom_range(0,360);
	speed = 1;
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}