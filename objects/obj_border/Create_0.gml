view_xview = camera_get_view_x(view_camera[1]);
view_yview = camera_get_view_y(view_camera[1]);

_bri = round(global.game_options.border_brightness * 255);

struct_data = scr_json_load_file("main/setup" + string(global.suf) + ".json","struct_data",false);

prompt[0] = struct_data.miscellaneous.continue_screen;
prompt[1] = struct_data.miscellaneous.name_entry_screen;

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow("font_ms_gothic","drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);