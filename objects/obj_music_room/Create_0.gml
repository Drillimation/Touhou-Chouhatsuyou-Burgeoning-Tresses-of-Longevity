struct_data = scr_json_load_file("main/music_comments" + string(global.suf) + ".json","struct_data",false)

prompt = struct_data.prompt;
prompt = scr_button_menu(prompt);

button = [];
desc = [];
array_copy(button,0,struct_data.option_select.option_name,0,array_length(struct_data.option_select.option_name));
array_copy(desc,0,struct_data.option_select.option_description,0,array_length(struct_data.option_select.option_description));

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow("font_ms_gothic","drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

scr_menu_initiate(false,true);