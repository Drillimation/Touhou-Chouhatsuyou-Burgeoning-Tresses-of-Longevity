_i += 1
_i = _i mod 19
if _i == 0 {
	image_index = (face * 4)
}
else {
	image_index = (face * 4) + floor( _i / 5);
}

if image_alpha != 1 {
	image_alpha += 0.01;
	image_alpha = clamp(image_alpha,0,1);
}
else {
	instance_destroy();
	instance_create_layer(x,y,"Enemies",midboss);
}