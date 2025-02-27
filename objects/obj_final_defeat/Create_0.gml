scr_stop_bgm();
//audio_stop_sound(global.bgm);
alarm[0] = 300;
if instance_exists(obj_defeated_boss) {
	instance_destroy(obj_defeated_boss);
}