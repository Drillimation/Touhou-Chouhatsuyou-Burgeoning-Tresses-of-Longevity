draw_set_font(font_misaki);
draw_set_color(make_color_rgb(0,0,0));
draw_set_halign(fa_center);
draw_text(x+1,y+1,string(display_score));
draw_set_color(make_color_rgb(255,255,255));
draw_text(x,y,string(display_score));