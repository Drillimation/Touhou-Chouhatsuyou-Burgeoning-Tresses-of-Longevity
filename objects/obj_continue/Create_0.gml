if instance_exists(obj_enemy) { instance_deactivate_object(obj_enemy); }
with(obj_camera) {
	path_speed = 0;
}

time_limit = 10;

alarm[0] = 60;

struct_data = scr_json_load_file("main/setup" + string(global.suf) + ".json","struct_data",false)

prompt = struct_data.miscellaneous.continue_screen;
prompt = scr_button_menu(struct_data.miscellaneous.continue_screen);

shd = scribble_font_bake_shadow(font_get_name(global.font[1]),"drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);
for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);