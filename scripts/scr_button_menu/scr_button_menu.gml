function scr_button_menu(_variable){
	variable_to_use = _variable;
	if gamepad_is_connected(0) {
		variable_to_use = string_replace_all(variable_to_use, "%au","[spr_face_buttons,0]");
		variable_to_use = string_replace_all(variable_to_use, "%bu","[spr_face_buttons,1]");
		variable_to_use = string_replace_all(variable_to_use, "%xu","[spr_face_buttons,2]");
		variable_to_use = string_replace_all(variable_to_use, "%yu","[spr_face_buttons,3]");
		variable_to_use = string_replace_all(variable_to_use, "%lu","[spr_shoulder_buttons,0]");
		variable_to_use = string_replace_all(variable_to_use, "%ru","[spr_shoulder_buttons,1]");
		variable_to_use = string_replace_all(variable_to_use, "%zlu","[spr_shoulder_buttons,2]");
		variable_to_use = string_replace_all(variable_to_use, "%zru","[spr_shoulder_buttons,3]");
		variable_to_use = string_replace_all(variable_to_use, "%startu","[spr_str_sel_buttons,0]");
		variable_to_use = string_replace_all(variable_to_use, "%selectu","[spr_str_sel_buttons,1]");
	}
	else {
		variable_to_use = string_replace_all(variable_to_use, "%au","[spr_face_buttons,4]");
		variable_to_use = string_replace_all(variable_to_use, "%bu","[spr_face_buttons,5]");
		variable_to_use = string_replace_all(variable_to_use, "%xu","[spr_face_buttons,6]");
		variable_to_use = string_replace_all(variable_to_use, "%yu","[spr_face_buttons,7]");
		variable_to_use = string_replace_all(variable_to_use, "%lu","[spr_shoulder_buttons,4]");
		variable_to_use = string_replace_all(variable_to_use, "%ru","[spr_shoulder_buttons,5]");
		variable_to_use = string_replace_all(variable_to_use, "%zlu","[spr_shoulder_buttons,6]");
		variable_to_use = string_replace_all(variable_to_use, "%zru","[spr_shoulder_buttons,7]");
		variable_to_use = string_replace_all(variable_to_use, "%startu","[spr_str_sel_buttons,2]");
		variable_to_use = string_replace_all(variable_to_use, "%selectu","[spr_str_sel_buttons,3]");
	}
	return variable_to_use;
}