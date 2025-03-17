function scr_player_shoot_speed(){
	j += 1
	j = j mod 9
	if (j == 0) {
		if focusmode == true {
			nrm = 2.5
			sm_nrm = 1.25
			aux_tur[0] = -4
			aux_tur[1] = -8
			aux_tur[2] = 4
		}
		else {
			nrm = 5
			sm_nrm = 2.5
			aux_tur[0] = -16
			aux_tur[1] = 0
			aux_tur[2] = 16
		}
		twist = floor(global.player_stats[play_id].pow / 25)
		switch(global.player_stats[play_id].character) {
			case "REIMU":
				for (var i = 0; i < (floor(global.player_stats[play_id].pow / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_reimu_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
			case "MARISA":
				for (var i = 0; i < (floor(global.player_stats[play_id].pow / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_marisa_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
			case "AYA":
				for (var i = 0; i < (floor(global.player_stats[play_id].pow / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_aya_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
			case "SANAE":
				for (var i = 0; i < (floor(global.player_stats[play_id].pow / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_sanae_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
		}
	}
	switch(global.player_stats[play_id].character) {
		case "REIMU":
			aux_speed = 9;
			aux = spr_reimu_shot_s
			do_aim = true
			amt = 0;
			break;
		case "MARISA":
			aux_speed = 180;
			aux = spr_marisa_shot_s
			do_aim = false
			amt = 0;
			break;
		case "AYA":
			aux_speed = 9;
			aux = spr_aya_shot_s
			do_aim = false
			amt = floor(global.player_stats[play_id].pow / 50);
			break;
		case "SANAE":
			aux_speed = 9;
			aux = spr_sanae_shot_s
			do_aim = false
			amt = 0;
			break;
		}
	k += 1
	k = k mod aux_speed
	if (k == 0) {
		if global.player_stats[play_id].pow >= 12 {
			//twist2 = floor(global.pow / 50)
			for (var i = 0; i < (amt + 1); i += 1) {
				switch(global.player_stats[play_id].character) {
					case "REIMU":
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id,scr_danmaku_reimu_aim,[256]);
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id,scr_danmaku_reimu_aim,[256]);
						break;
					case "MARISA":
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id,scr_danmaku_marisa_laser,[0,(y_pos / 16) + 1]);
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id,scr_danmaku_marisa_laser,[0,(y_pos / 16) + 1]);
						break;
					case "AYA":
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id);
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id);
						break;
					case "SANAE":
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id,scr_danmaku_sanae_aim,[256]);
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id,scr_danmaku_sanae_aim,[256]);
						break;
				}
			}
		}
	}
}