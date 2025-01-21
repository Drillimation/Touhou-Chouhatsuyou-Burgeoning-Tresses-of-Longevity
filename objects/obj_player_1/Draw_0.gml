if global.player_stats[play_id].pow >= 12 {
	if focusmode == true {
		draw_sprite(turret,-1,x - 4,y - 8);
		draw_sprite(turret,-1,x + 4,y - 8);
	}
	else {
		draw_sprite(turret,-1,x - 16,y);
		draw_sprite(turret,-1,x + 16,y);
	}
}
draw_self();