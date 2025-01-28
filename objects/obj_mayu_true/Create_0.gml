can_attack = false;
entered = false;
enemy_id = 0;
_t = 0;
boss_id = 0;
boss_type = 1;
_bar = spr_boss_health_4;
drop_items_after_death = false;
defeat_img = 0;

struct_data[0] = scr_json_load_file("main/boss_attack_layouts.json","struct_data",false);
attack = array_reverse(struct_data[0].BOSS_MAYU_MAIN)

scr_boss_stats(array_length(attack),1000)

timer = attack[life - 1][4];

defeat_bonus = 10000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);
x_pos = x - view_xview;
y_pos = y - view_yview;

struct_data[1] = scr_json_load_file("main/spell_cards" + string(global.suf) + ".json","struct_data",false);
txt = struct_get(struct_data[1].boss_names,"BOSS_MAYU");

_v = 0;
face = 0;
image_speed = 0;

enemy_hor_wrap = true;
enemy_ver_wrap = false;
enemy_bbox_top = 32;
enemy_bbox_bottom = 256;
enemy_bbox_left = 16;
enemy_bbox_right = 240;

enemy_function = undefined;
enemy_function_array = [];