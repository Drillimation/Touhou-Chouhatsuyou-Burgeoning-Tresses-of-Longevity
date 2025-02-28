ammo = 12;
speed = 0;
enemy_bbox_top = 32;
enemy_bbox_bottom = 96;

if enemy_function == undefined {
	enemy_function = scr_enemy_set_friction;
	enemy_function_array = [0.01];
}