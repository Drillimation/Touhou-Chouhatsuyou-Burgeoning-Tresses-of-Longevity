scr_pausable_rooms();

if array_contains(spawnable_room_list,room_get_name(room)) {
	if global.player_stats[0].player_active == 1 {
		instance_create_depth(view_xview + 64,view_yview + 208,0,obj_player_1);
	}
	if global.player_stats[1].player_active == 1 {
		instance_create_depth(view_xview + 64,view_yview + 208,0,obj_player_2);
	}
	alarm[1] = 60;
}