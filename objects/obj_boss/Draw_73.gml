view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

if entered == true {
	draw_set_alpha(1);
	var pc;
	pc = ((((life - 1) * starthp) + hp) / maxhp) * 100;
	draw_healthbar(view_xview+0,view_yview+16,view_xview+239,view_yview+23,pc,make_color_rgb(0,0,0),make_color_rgb(255,255,255),make_color_rgb(255,255,255),0,true,false);
	draw_set_alpha(0.5);
	draw_sprite_stretched(_bar,0,view_xview + 0,view_yview + 16,240,8);
	draw_set_alpha(1);
	draw_set_font(global.sprite_font[0]);
	draw_set_color(make_color_rgb(255,255,255));
	draw_set_halign(fa_right);
	draw_text(view_xview + 256,view_yview + 16,floor(timer));
	draw_set_halign(fa_left);
	draw_set_font(font_misaki);
	draw_set_color(make_color_rgb(0,0,0));
	draw_text((view_xview + 0) + 1, (view_yview + 24) + 1,txt);
	draw_set_color(make_color_rgb(255,255,255));
	draw_text(view_xview + 0, view_yview + 24,txt);
}