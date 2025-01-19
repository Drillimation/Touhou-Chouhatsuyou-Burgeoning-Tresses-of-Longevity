//Text for inserting coins
wo_credits[0] = "CREDITS\n" + string(global.credits);
wo_credits[1] = "INSERT\nCOIN"

w_credits_1[0] = "CREDITS\n" + string(global.credits);
w_credits_1[1] = "PUSH\n1P"

w_credits_2[0] = "CREDITS\n" + string(global.credits);
w_credits_2[1] = "PUSH\n2P"

_i = 0;

alarm[0] = 120;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

global.highscore = global.highscores[# 1,0];

bgm_fade = false;
boss_bgm = 0;

paused = false;
who_can_pause = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start);

scr_pausable_rooms();