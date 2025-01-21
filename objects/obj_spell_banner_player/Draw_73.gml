view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_alpha(1);
draw_set_halign(fa_left)
draw_sprite(spr_player_spell_banner,0,view_xview + x_pos,view_yview + 256);

draw_set_font(font_misaki);
draw_set_color(make_color_rgb(0,0,0));
draw_text((view_xview + x_pos) + 1,(view_yview + 256) + 1,txt);
draw_set_color(make_color_rgb(255,255,255));
draw_text(view_xview + x_pos,view_yview + 256,txt);
draw_set_alpha(1);