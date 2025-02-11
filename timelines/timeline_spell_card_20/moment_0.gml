scr_declare_spell(19,spr_kiyomi_portrait,spr_kiyomi_spell);
face = 3;
x_pos = 128;
y_pos = 96;
speed = 0;

enemy_function = scr_enemy_set_friction;
enemy_function_array = [0.01];

//if hspeed < 0 { face = 1; }
//if hspeed > 0 { face = 2; }