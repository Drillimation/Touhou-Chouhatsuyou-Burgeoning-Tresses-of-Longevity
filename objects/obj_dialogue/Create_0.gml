struct_data = scr_json_load_file("cutscenes/test_dialogue" + string(global.suf) + ".json","struct_data",false);

t_scene_info = [];
array_copy(t_scene_info,0,struct_data.t_scene_info,0,array_length(struct_data.t_scene_info));

boss_name = string(struct_data.char_info.char_name) + "\n" + string(struct_data.char_info.char_desc);

boss_sprite = spr_kagami;
boss_bgm = 0;

reveal_boss = false;
reveal_sprite = false;
index = 0;
sprite_opac = 0;
boss_opac = 0;

typist = scribble_typist()
	.in(0.5, 0);

for(var i = 0; i < 16; i++) {
	scribble_object[i] = undefined;
}
shd[0] = scribble_font_bake_shadow(font_get_name(global.font[1]),"drp_shd1",1,1,make_color_rgb(0,0,0),1,0,false);
shd[1] = scribble_font_bake_shadow("font_misaki","drp_shd2",1,1,make_color_rgb(0,0,0),1,0,false);

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

