function scr_cutsene_reveal_name() {
	reveal_boss = true;
}

function scr_cutsene_reveal_sprite() {
	reveal_sprite = true;
}

function scr_cutscene_change_bgm(_bgm) {
	with(obj_control) {
		bgm_fade = true;
		boss_bgm = _bgm;
	}
}

function scr_cutscene_start_boss(_boss,_x = 128,_y = 96) {
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
	instance_create_layer(view_xview + _x,view_yview + _y,"Enemies",_boss);
	instance_destroy();
}

function scr_cutscene_stage_clear() {
	instance_create_depth(0,0,0,obj_stage_clear);
	instance_destroy();
}

function scr_cutscene_game_clear() {
	instance_create_depth(0,0,0,obj_game_clear);
	instance_destroy();
}