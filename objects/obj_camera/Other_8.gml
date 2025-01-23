/*switch(global.stage) {
	case 1: scr_trigger_dialogue("stage1_" + _char + "_prebattle",obj_kaori,spr_kaori,2); break;
	case 2: scr_trigger_dialogue("stage2_" + _char + "_prebattle",obj_ayaka,spr_ayaka,4); break;
	case 3: scr_trigger_dialogue("stage3_" + _char + "_prebattle",obj_emiri,spr_emiri,6); break;
	case 4: scr_trigger_dialogue("stage4_" + _char + "_prebattle",obj_kagami,spr_kagami,8); break;
	case 5: scr_trigger_dialogue("stage5_" + _char + "_prebattle",obj_jane,spr_jane,10); break;
	case 6: scr_trigger_dialogue("stage6_" + _char + "_midbattle",obj_jane_2,spr_jane,10); break;
	case 7: scr_trigger_dialogue("stage7_" + _char + "_midbattle",obj_raiko_2,spr_raiko,10); break;
}*/

with(obj_bullet_enemy) {
	instance_destroy();
}
with(obj_enemy) {
	if can_attack == true {
		instance_destroy();
	}
}
instance_destroy();