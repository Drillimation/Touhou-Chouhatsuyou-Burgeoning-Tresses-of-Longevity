if ammo >= 1 {
	timeline_position = 165;
}
else {
	randomize();
	speed = 1;
	direction = irandom_range(0,360);
}