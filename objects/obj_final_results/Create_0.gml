view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

left_text = ["DIFFICULTY",
	"CONTINUES USED",
	"FINAL SCORE",
	"DEATHS",
	"BOMBS USED",
	"POWER ITEMS COLLECTED",
	"POINT ITEMS COLLECTED",
	"CHERRY ITEMS COLLECTED"];

p1_statistics = [global.player_stats[0].player_score,
global.player_stats[0].timesrevived,
global.player_stats[0].total_bombs_used,
global.player_stats[0].total_power_items,
global.player_stats[0].total_point_items,
global.player_stats[0].total_cherry_items];

p2_statistics = [global.player_stats[1].player_score,
global.player_stats[1].timesrevived,
global.player_stats[1].total_bombs_used,
global.player_stats[1].total_power_items,
global.player_stats[1].total_point_items,
global.player_stats[1].total_cherry_items];

switch(global.global_stats.difficulty) {
	case 0: diff_text = "EASY"; break;
	case 1: diff_text = "NORMAL"; break;
	case 2: diff_text = "DIFFICULT"; break;
	case 3: diff_text = "LUNATIC"; break;
}

results_data = ds_grid_create(3,8)
for(var i = 0; i < 8; i++) {
	results_data[# 0,i] = left_text[i];
}
results_data[# 1,0] = " ";
results_data[# 2,0] = diff_text;
results_data[# 1,1] = " ";
results_data[# 2,1] = global.global_stats.continues_used;
for(var i = 0; i < 6; i++) {
	results_data[# 1,i+2] = p1_statistics[i];
	results_data[# 2,i+2] = p2_statistics[i];
}

alarm[0] = 600;