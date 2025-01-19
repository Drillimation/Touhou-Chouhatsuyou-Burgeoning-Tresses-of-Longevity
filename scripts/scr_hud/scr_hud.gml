function scr_hud(){
	//Initiate
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
	draw_set_font(global.sprite_font[0]);
	
	//Top Part
	//High score text
	draw_set_halign(fa_center);
	draw_set_color(make_color_rgb(255,0,0));
	draw_text(view_xview + 128,view_yview + 0,"HIGH SCORE");
	draw_set_color(make_color_rgb(255,255,255));
	draw_set_halign(fa_right);
	draw_text(view_xview + 152,view_yview + 8,global.highscore);
	
	//Player 1
	if global.player_stats[0].player_active == 0 {
		if global.credits >= 1 {
			draw_set_halign(fa_center);
			draw_set_color(make_color_rgb(255,255,255));
			draw_text(view_xview + 32,view_yview + 0,w_credits_1[_i]);
		}
		else {
			draw_set_halign(fa_center);
			draw_set_color(make_color_rgb(255,255,255));
			draw_text(view_xview + 32,view_yview + 0,wo_credits[_i]);
		}
	}
	else {
		draw_set_halign(fa_left);
		switch(global.player_stats[0].character) {
			case "REIMU": draw_set_color(make_color_rgb(255,0,0)); break;
			case "MARISA": draw_set_color(make_color_rgb(255,255,0)); break;
			case "AYA": draw_set_color(make_color_rgb(0,0,255)); break;
			case "SANAE": draw_set_color(make_color_rgb(0,128,0)); break;
		}
		draw_text(view_xview + 16,view_yview + 0,"1UP");
		draw_set_halign(fa_right);
		draw_set_color(make_color_rgb(255,255,255));
		draw_text(view_xview + 56,view_yview + 8,global.player_stats[0].player_score);
	}
	
	//Player 2
	if global.player_stats[1].player_active == 0 {
		if global.global_stats.canjoin == true {
			if global.credits >= 2 {
				draw_set_halign(fa_center);
				draw_set_color(make_color_rgb(255,255,255));
				draw_text(view_xview + 224,view_yview + 0,w_credits_2[_i]);
			}
			else if global.credits == 1 and room == room_arcade_start {
				draw_set_halign(fa_center);
				draw_set_color(make_color_rgb(255,255,255));
				draw_text(view_xview + 224,view_yview + 0,wo_credits[_i]);
			}
			else {
				draw_set_halign(fa_center);
				draw_set_color(make_color_rgb(255,255,255));
				if global.credits >= 1 {
					draw_text(view_xview + 224,view_yview + 0,w_credits_2[_i]);
				}
				else {
					draw_text(view_xview + 224,view_yview + 0,wo_credits[_i]);
				}
				
			}
		}
		else {
			draw_set_halign(fa_center);
			draw_set_color(make_color_rgb(255,255,255));
			draw_text(view_xview + 224,view_yview + 0,"PLEASE\nWAIT");
		}
	}
	else {
		draw_set_halign(fa_left);
		switch(global.player_stats[1].character) {
			case "REIMU": draw_set_color(make_color_rgb(255,0,0)); break;
			case "MARISA": draw_set_color(make_color_rgb(255,255,0)); break;
			case "AYA": draw_set_color(make_color_rgb(0,0,255)); break;
			case "SANAE": draw_set_color(make_color_rgb(0,128,0)); break;
		}
		draw_text(view_xview + 216,view_yview + 0,"2UP");
		draw_set_halign(fa_right);
		draw_set_color(make_color_rgb(255,255,255));
		draw_text(view_xview + 256,view_yview + 8,global.player_stats[1].player_score);
	}
	
	//Bottom Part
	draw_sprite(spr_hud_bottom,0,view_xview + 0,view_yview + 272);
	draw_set_halign(fa_right);
	draw_set_color(make_color_rgb(255,255,255));
	
	if global.player_stats[0].player_active == 1 {
		if global.global_stats.breezy_mode == 0 {
			draw_text(view_xview + 24,view_yview + 272,global.player_stats[0].player_lives - 1);
		}
		else {
			draw_text(view_xview + 24,view_yview + 272,global.player_stats[0].player_health);
		}
		draw_text(view_xview + 24,view_yview + 280,global.player_stats[0].bombs);
		draw_text(view_xview + 72,view_yview + 272,global.player_stats[0].graze);
		draw_text(view_xview + 72,view_yview + 280,global.player_stats[0].pow);
	}
	
	if global.player_stats[1].player_active == 1 {
		if global.global_stats.breezy_mode == 0 {
			draw_text(view_xview + 256,view_yview + 272,global.player_stats[1].player_lives - 1);
		}
		else {
			draw_text(view_xview + 256,view_yview + 272,global.player_stats[1].player_health);
		}
		draw_text(view_xview + 256,view_yview + 280,global.player_stats[1].bombs);
		draw_text(view_xview + 224,view_yview + 272,global.player_stats[1].graze);
		draw_text(view_xview + 224,view_yview + 280,global.player_stats[1].pow);
	}
	draw_text(view_xview + 128,view_yview + 272,global.global_stats.cherry);
	draw_text(view_xview + 176,view_yview + 272,global.global_stats.cherry_max);
	draw_text(view_xview + 176,view_yview + 280,global.global_stats.point_item);
	draw_set_color(make_color_rgb(255,63,63));
	draw_text(view_xview + 128,view_yview + 280,global.global_stats.border);
	draw_set_color(make_color_rgb(255,255,255));
}