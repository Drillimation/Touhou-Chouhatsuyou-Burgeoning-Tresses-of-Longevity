function scr_move_state(){
	//Direction
	dir = point_direction(0,0,xaxis,yaxis);
	
	//Length
	if (xaxis == 0) and (yaxis == 0) {
		len = 0;
	}
	else {
		len = spd;
		//scr_get_face();
	}
	
	//Get the speed variables
	hspd = lengthdir_x(len,dir);
	vspd = lengthdir_y(len,dir);
	
	x_pos += hspd;
	y_pos += vspd;
	
	x_pos = clamp(x_pos,8,248)
	y_pos = clamp(y_pos,24,264)
	
	//Sprites
	switch(xaxis) {
		case -1: face = 0; break;
		case 0: face = 1; break;
		case 1: face = 2; break;
	}
	_j += 1
	_j = _j mod 19
	if _j == 0 {
		image_index = (face * 4)
	}
	else {
		image_index = (face * 4) + floor( _j / 5);
	}
}