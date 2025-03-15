function scr_player_bullet_angle(){
	switch(sprite_index) {
		case spr_reimu_shot: /*Do nothing.*/ break;
		case spr_reimu_shot_s: /*Do nothing.*/ break;
		case spr_marisa_shot: image_angle = direction; break;
		case spr_marisa_shot_s: image_angle = direction; break;
		case spr_aya_shot: image_angle = direction; break;
		case spr_aya_shot_s: image_angle = direction; break;
		case spr_sanae_shot: image_angle = direction; break;
		case spr_sanae_shot_s: image_angle = direction; break;
	}
}