if ammo >= 1 {
	timeline_position = 280;
}
else {
	randomize();
	speed = 1;
	direction = irandom_range(0,360);
}