for(var i = 0; i < (game_difficulty * 2) + 2; i++) {
	scr_shoot_bullet_enemy(1,270,spr_bullet_kunai,15,obj_player_1.x_pos + (4 + (i * 8)),24,false,snd_enemy_fire,false)
	scr_shoot_bullet_enemy(1,270,spr_bullet_kunai,15,obj_player_1.x_pos - (4 + (i * 8)),24,false,snd_enemy_fire,false)
	scr_shoot_bullet_enemy(1,90,spr_bullet_kunai,15,obj_player_1.x_pos + (4 + (i * 8)),264,false,snd_enemy_fire,false)
	scr_shoot_bullet_enemy(1,90,spr_bullet_kunai,15,obj_player_1.x_pos - (4 + (i * 8)),264,false,snd_enemy_fire,false)
	scr_shoot_bullet_enemy(1,0,spr_bullet_kunai,15,8,obj_player_1.y_pos + (4 + (i * 8)),false,snd_enemy_fire,false)
	scr_shoot_bullet_enemy(1,0,spr_bullet_kunai,15,8,obj_player_1.y_pos - (4 + (i * 8)),false,snd_enemy_fire,false)
	scr_shoot_bullet_enemy(1,180,spr_bullet_kunai,15,248,obj_player_1.y_pos + (4 + (i * 8)),false,snd_enemy_fire,false)
	scr_shoot_bullet_enemy(1,180,spr_bullet_kunai,15,248,obj_player_1.y_pos - (4 + (i * 8)),false,snd_enemy_fire,false)
}