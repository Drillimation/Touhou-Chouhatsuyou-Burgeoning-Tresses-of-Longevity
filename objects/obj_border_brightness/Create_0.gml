struct_data = scr_json_load_file("main/options" + string(global.suf) + ".json","struct_data",false)

prompt = struct_data.prompt.main_menu;
prompt = scr_button_menu(prompt);

button = [];
array_copy(button,0,struct_data.brightness_options,0,array_length(struct_data.brightness_options));

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow("font_ms_gothic","drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

scr_menu_initiate(false,true);