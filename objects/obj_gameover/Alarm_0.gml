if global.credits >= 1 {
	room_goto(room_arcade_start);
}
else {
	room_goto(room_arcade_title);
}