struct_data = scr_json_load_file("main/setup" + string(global.suf) + ".json","struct_data",false);

button = [];
desc = [];
array_copy(button,0,struct_data.character_select.option_name,0,array_length(struct_data.character_select.option_name));
array_copy(desc,0,struct_data.character_select.option_description,0,array_length(struct_data.character_select.option_description));

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow(font_get_name(global.font[1]),"drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

scr_menu_initiate(false,true);

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);