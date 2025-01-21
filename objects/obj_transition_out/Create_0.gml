view_xview =  camera_get_view_x(view_camera[0]);
view_yview =  camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

_sequence = layer_sequence_create("Effects",view_xview + 0,view_yview + 0,sequence_transition_out);