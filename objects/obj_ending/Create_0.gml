scr_change_bgm(15);

if global.global_stats.continues_used == 0 {
	switch(global.player_stats[0].character) {
		case "REIMU": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_01),0]; break;
		case "MARISA": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_03),2]; break;
		case "AYA": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_05),4]; break;
		case "SANAE": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_07),6]; break;
	}
}
else {
	switch(global.player_stats[0].character) {
		case "REIMU": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_02),1]; break;
		case "MARISA": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_04),3]; break;
		case "AYA": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_06),5]; break;
		case "SANAE": _sequence = [layer_sequence_create("Instances",0,0,sequence_ending_08),7]; break;
	}
}

struct_data = scr_json_load_file("cutscenes/endings" + string(global.suf) + ".json","struct_data",false);
txt = [];
array_copy(txt,0,struct_data.ending[_sequence[1]],0,array_length(struct_data.ending[_sequence[1]]));

text = txt[array_length(txt) - 1];

typist = scribble_typist()
	.in(0.5, 0);

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd = scribble_font_bake_shadow(font_get_name(global.font[1]),"drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

opac = 0;
depth = -1000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);