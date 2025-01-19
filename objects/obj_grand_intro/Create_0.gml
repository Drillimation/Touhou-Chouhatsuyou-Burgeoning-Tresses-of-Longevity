_sequence = layer_sequence_create("Instances",0,0,sequence_arcade_story);

struct_data = scr_json_load_file("cutscenes/intro" + string(global.suf) + ".json","struct_data",false);
txt = [];
array_copy(txt,0,struct_data.intro_text,0,array_length(struct_data.intro_text));

text = txt[array_length(txt) - 1];

typist = scribble_typist()
	.in(0.5, 0);

for(var i = 0; i < 16; i += 1) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow(font_get_name(global.font[1]),"drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

opac = 0;
depth = -1000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);