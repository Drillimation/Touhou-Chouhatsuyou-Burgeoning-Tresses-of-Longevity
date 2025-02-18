can_attack = false;
entered = false;
enemy_id = 0;
_t = 0;
boss_id = 0;
boss_type = 0;
_bar = spr_boss_health_2;
drop_items_after_death = true;
defeat_img = 4;

struct_data[0] = scr_json_load_file("main/boss_attack_layouts.json","struct_data",false);
attack = array_reverse(struct_data[0].BOSS_SUIKA)

scr_boss_stats(array_length(attack),1600)

timer = attack[life - 1][4];

defeat_bonus = 35000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);
x_pos = x - view_xview;
y_pos = y - view_yview;

struct_data[1] = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","struct_data",false);
txt = struct_get(struct_data[1].boss_names,"BOSS_SUIKA");

_v = 0;
face = 0;
image_speed = 0;

enemy_hor_wrap = true;
enemy_ver_wrap = false;
enemy_bbox_top = 32;
enemy_bbox_bottom = 144;
enemy_bbox_left = 16;
enemy_bbox_right = 240;

enemy_function = undefined;
enemy_function_array = [];

switch(global.player_stats[0].character) {
	case "REIMU": _char = "reimu"; break;
	case "MARISA": _char = "marisa"; break;
	case "AYA": _char = "aya"; break;
	case "SANAE": _char = "sanae"; break;
}