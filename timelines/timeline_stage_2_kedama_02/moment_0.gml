randomize();
y_pos = 64;
pth = choose(path_kedama_03,path_kedama_04);
if pth == path_kedama_03 { x_pos = 8; }
if pth == path_kedama_04 { x_pos = 248; }
enemy_function = scr_enemy_set_path
enemy_function_array = [pth,2]
call_attack = irandom_range(0,2);