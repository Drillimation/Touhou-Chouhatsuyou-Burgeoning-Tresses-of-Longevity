randomize();
y_pos = irandom_range(64,128);
pth = choose(0,1)
switch(pth) {
	case 0: x_pos = 8; hspeed = 1.5; break;
	case 1: x_pos = 248; hspeed = -1.5; break;
}
call_attack = irandom_range(0,2);