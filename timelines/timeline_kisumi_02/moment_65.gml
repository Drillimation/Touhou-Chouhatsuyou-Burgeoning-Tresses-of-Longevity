if ammo >= 1 {
	timeline_position = 60;
}
else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_arrowhead {
			friction = 0;
			effect_script = undefined;
			script_array = [];
			speed = 0.5;
			if instance_exists(player) {
				direction = point_direction(x,y,player.x,player.y);
			}
			else {
				direction = 270;
			}
		}
	}
}