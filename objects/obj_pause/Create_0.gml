struct_data = scr_json_load_file("main/setup" + string(global.suf) + ".json","struct_data",false);
_id = 0;

button = [];
desc = [];
array_copy(button,0,struct_data.menu_choices,0,array_length(struct_data.menu_choices));
array_copy(desc,0,struct_data._paused,0,array_length(struct_data._paused));

prompt = struct_data.miscellaneous.power_off;

scr_menu_initiate(false,true);

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);