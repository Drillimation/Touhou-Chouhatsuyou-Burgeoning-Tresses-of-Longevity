function scr_get_input(_player){
	rKey = max(keyboard_check(vk_right),keyboard_check(ord("D")),0)
	lKey = max(keyboard_check(vk_left),keyboard_check(ord("A")),0)
	dKey = max(keyboard_check(vk_down),keyboard_check(ord("S")),0)
	uKey = max(keyboard_check(vk_up),keyboard_check(ord("W")),0)

	xaxis = (rKey - lKey);
	yaxis = (dKey - uKey);

	//Gamepad Input
	if (gamepad_is_connected(_player)) {
		rKey = gamepad_button_check(_player, gp_padr) || (gamepad_axis_value(_player,gp_axislh) > 0);
		lKey = gamepad_button_check(_player, gp_padl) || (gamepad_axis_value(_player,gp_axislh) < 0);
		dKey = gamepad_button_check(_player, gp_padd) || (gamepad_axis_value(_player,gp_axislv) > 0);
		uKey = gamepad_button_check(_player, gp_padu) || (gamepad_axis_value(_player,gp_axislv) < 0);
	
		xaxis = (rKey - lKey);
		yaxis = (dKey - uKey);
		
		gamepad_set_axis_deadzone(_player,0.5)
	}
}