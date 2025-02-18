if twt mod 60 == 0 {
	randomize();
	speed = 1;
	direction = irandom_range(0,360);
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}
timeline_position = 5;