function scr_newgame(){
	global.global_stats = {
		stage : 1,
		continues_used : 0,
		gamemode : 0,
		point_item : 0,
		cherry : 0,
		cherry_max : 1500,
		border : 0,
		breezy_mode : 0,
		freeplaymode : 0,
		victoryachieved : 0,
		canjoin : 0,
	}
	global.player_stats[0] = {
		character : "REIMU",
		player_active : 0,
		player_score : 0,
		pow : 0,
		graze : 0,
		bombs : 3,
		player_lives : 3,
		player_health : 30,
		bombscore : 100000,
		received : 1,
		timesrevived : 0,
		total_point_items : 0,
		total_power_items : 0,
		total_cherry_items : 0,
		total_bombs_used: 0,
		total_supernatural_borders: 0
	}
	global.player_stats[1] = {
		character : "MARISA",
		player_active : 0,
		player_score : 0,
		pow : 0,
		graze : 0,
		bombs : 3,
		player_lives : 3,
		player_health : 30,
		bombscore : 100000,
		received : 1,
		timesrevived : 0,
		total_point_items : 0,
		total_power_items : 0,
		total_cherry_items : 0,
		total_bombs_used: 0,
		total_supernatural_borders: 0
	}
}

function scr_newgame_ext(){
	global.global_stats = {
		stage : 1,
		continues_used : 0,
		gamemode : 0,
		point_item : 0,
		cherry : 0,
		cherry_max : 0,
		border : 0,
		breezy_mode : 0,
		freeplaymode : 0,
		victoryachieved : 0,
		canjoin : 0,
	}
	var remember_active = [global.player_stats[0].player_active,global.player_stats[1].player_active]
	global.player_stats[0] = {
		character : "REIMU",
		player_active : 0,
		player_score : 0,
		pow : 0,
		graze : 0,
		bombs : 3,
		player_lives : 3,
		player_health : 30,
		bombscore : 100000,
		received : 1,
		timesrevived : 0,
		total_point_items : 0,
		total_power_items : 0,
		total_cherry_items : 0,
		total_bombs_used: 0,
	}
	global.player_stats[0].player_active = remember_active[0]
	global.player_stats[1] = {
		character : "MARISA",
		player_active : 0,
		player_score : 0,
		pow : 0,
		graze : 0,
		bombs : 3,
		player_lives : 3,
		player_health : 30,
		bombscore : 100000,
		received : 1,
		timesrevived : 0,
		total_point_items : 0,
		total_power_items : 0,
		total_cherry_items : 0,
		total_bombs_used: 0,
	}
	global.player_stats[1].player_active = remember_active[1]
}