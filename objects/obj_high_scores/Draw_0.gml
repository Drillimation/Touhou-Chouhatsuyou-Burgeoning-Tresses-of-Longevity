view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_alpha(0.5);
draw_set_color(make_color_rgb(0,0,0))
draw_rectangle(view_xview + 0,view_yview + 0,view_xview + 255,view_yview + 287,false);
draw_set_alpha(1);
draw_set_font(global.sprite_font[0]);
draw_set_color(make_color_rgb(255,255,255))
draw_set_halign(fa_left);
draw_text(view_xview + 0,view_yview + 24,"      NAME     SCORE  STG  CHAR")
for(var _i = 0; _i < 10; _i++) {
	draw_set_halign(fa_right);
	draw_text(view_xview + 16, (view_yview + 40) + (_i * 16),string(_i + 1));
	draw_set_halign(fa_left);
	draw_text(view_xview + 24, (view_yview + 40) + (_i * 16),global.highscores[# 0,_i]);
	draw_set_halign(fa_right);
	draw_text(view_xview + 168, (view_yview + 40) + (_i * 16),global.highscores[# 1,_i]);
	draw_text(view_xview + 192, (view_yview + 40) + (_i * 16),global.highscores[# 2,_i]);
	draw_set_halign(fa_left);
	draw_text(view_xview + 208, (view_yview + 40) + (_i * 16),global.highscores[# 3,_i]);
}