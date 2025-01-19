view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_alpha(opac);
draw_sprite(spr_title_yuugiku,0,view_xview + 128,view_yview + 192);
draw_sprite(spr_chouhatsuyou_logo,0,view_xview + 128,view_yview + 80);
draw_set_alpha(1);
if opac == 1 {
	draw_set_font(global.sprite_font[0]);
	draw_set_color(make_color_rgb(255,255,255))
	draw_set_halign(fa_center);
	draw_text(view_xview + 128,view_yview + 216,@"
	@2025 Drillimation/Studio Emiko/
	E. Enthusiasm. All rights
	reserved.
	Characters @ Team Shanghai
	Alice/Drillimation")
}