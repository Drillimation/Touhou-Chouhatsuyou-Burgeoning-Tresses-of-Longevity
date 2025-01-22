if other.invincible == false {
	if instance_exists(obj_supernatural_border) {
		with(obj_supernatural_border) {
			instance_destroy();
			var inst = instance_create_layer(view_xview + 0,view_yview + 0,"Effects",obj_supernatural_bonus);
			inst.cleared = true;
		}
	}
	else {
		scr_declare_damage(5,0);
	}
}