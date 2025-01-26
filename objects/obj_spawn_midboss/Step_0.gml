_i += 1
_i = _i mod 5
if _i == 0 {
	if image_index < 4 {
		image_index++;
	}
	else {
		image_index = 0;
	}
}
if image_alpha != 1 {
	image_alpha += 0.01;
	image_alpha = clamp(image_alpha,0,1);
}
else {
	instance_destroy();
	instance_create_layer(x,y,"Enemies",midboss);
}