view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;


switch(global.player_stats[item_id].character) {
	case "REIMU": sprite_index = spr_reimu_spell; break;
	case "MARISA": sprite_index = spr_marisa_spell; break;
	case "AYA": sprite_index = spr_aya_spell; break;
	case "SANAE": sprite_index = spr_sanae_spell; break;
}
if instance_exists(obj_player_1) or instance_exists(obj_player_2) {
	switch(sprite_index) {
		case spr_reimu_spell:
			if instance_exists(obj_enemy) {
				if collision_circle(x,y,256,obj_enemy,false,true) {
					var ex = instance_nearest(x, y, obj_enemy).x;
					var ey = instance_nearest(x, y, obj_enemy).y;
					direction = point_direction(x,y,ex,ey);
				}
			}
			if instance_exists(obj_bullet_enemy) {
				if collision_circle(x,y,256,obj_bullet_enemy,false,true) {
					var ex = instance_nearest(x, y, obj_bullet_enemy).x;
					var ey = instance_nearest(x, y, obj_bullet_enemy).y;
					direction = point_direction(x,y,ex,ey);
				}
			}
			speed = 8;
			image_xscale -= 0.003;
			image_yscale -= 0.003;
			break;
		case spr_marisa_spell:
			direction = 90;
			image_angle = direction
			switch(item_id) {
				case 0:
					px = obj_player_1.x
					py = obj_player_1.y
					break;
				case 1:
					px = obj_player_2.x
					py = obj_player_2.y
					break;
			}
			x = px;
			y = py;
			break;
		case spr_aya_spell:
			direction = 90;
			image_angle = direction
			y_pos = 287;
			break;
		case spr_sanae_spell:
			speed = 0;
			direction = 0;
			image_angle = 0
			image_xscale += 0.05;
			image_yscale += 0.05;
			image_xscale = clamp(image_xscale,0,8);
			image_yscale = clamp(image_yscale,0,8);
			switch(item_id) {
				case 0:
					px = obj_player_1.x
					py = obj_player_1.y
					break;
				case 1:
					px = obj_player_2.x
					py = obj_player_2.y
					break;
			}
			x = px;
			y = py;
			break;
	}
}