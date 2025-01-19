switch(global.global_stats.stage) {
	case 1: scr_change_bgm(1); break;
	case 2: scr_change_bgm(3); break;
	case 3: scr_change_bgm(5); break;
	case 4: scr_change_bgm(7); break;
	case 5: scr_change_bgm(9); break;
	case 6: scr_change_bgm(11); break;
	case 7: scr_change_bgm(13); break;
}
instance_create_depth(view_xview + 0,view_yview + 144,0,obj_stage_introduction);