struct_data = scr_json_load_file("main/setup" + string(global.suf) + ".json","struct_data",false);

button = [
	[],
	[],
	[]
];
array_copy(button[0],0,struct_data.stage_select,0,1);
array_copy(button[1],0,struct_data.stage_select,1,1);
array_copy(button[2],0,struct_data.stage_select,2,1);
array_copy(button[0],1,struct_data.stage_select,3,1);
array_copy(button[1],1,struct_data.stage_select,4,1);
array_copy(button[2],1,struct_data.stage_select,5,1);

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow(font_get_name(global.font[1]),"drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

scr_menu_initiate(true,true);
buttons_x = array_length(button[0]);
buttons_y = array_length(button);

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);