scr_change_bgm(16);

var _buffer = buffer_load("cutscenes/touhou_chouhatsuyou_staff.txt");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}

txt = _string;
shd = scribble_font_bake_shadow("font_chicago","drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

crd_hgt = string_height_scribble(txt)

vspeed = -0.5;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);