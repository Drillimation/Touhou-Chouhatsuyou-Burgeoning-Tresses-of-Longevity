view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

switch(global.global_stats.stage) {
	case 1: stage_text = "STAGE 1"; break;
	case 2: stage_text = "STAGE 2"; break;
	case 3: stage_text = "STAGE 3"; break;
	case 4: stage_text = "STAGE 4"; break;
	case 5: stage_text = "STAGE 5"; break;
	case 6: stage_text = "FINAL STAGE"; break;
	case 7: stage_text = "EXTRA STAGE"; break;
}

struct_data = scr_json_load_file("main/setup" + string(global.suf) + ".json","struct_data",false);

txt = struct_data.stage_intro[global.global_stats.stage];

typist[0] = scribble_typist()
	.in(0.2,2)
	.ease(SCRIBBLE_EASE.LINEAR,0,48,1,0,0,1)
	
typist[1] = scribble_typist()
	.in(0.2,2)
	.ease(SCRIBBLE_EASE.LINEAR,0,-16,1,0,0,1)

alarm[0] = 240;
opac = 0;
shd = scribble_font_bake_shadow(font_get_name(global.font[1]),"drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

for(var i = 0; i < 16; i += 1) {
	scribble_object[i] = undefined;
}