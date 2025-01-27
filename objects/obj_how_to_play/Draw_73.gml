draw_sprite_stretched(spr_textbox,0,view_xview + 0,view_yview + 192,256,80);

scribble_object[0] = scribble(text)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.align(fa_left, fa_top)
	.draw((view_xview + 8) + 1, (view_yview + 200) + 1,typist)

draw_set_font(global.sprite_font[1]);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,255,255));
draw_text(view_xview + 128,view_xview + 16,"HOW TO PLAY")