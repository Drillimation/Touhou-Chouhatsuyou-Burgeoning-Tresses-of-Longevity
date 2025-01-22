view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

if other.invincible == false {
	if instance_exists(obj_supernatural_border) {
		with(obj_supernatural_border) {
			instance_destroy();
			var inst = instance_create_layer(view_xview + 0,view_yview + 0,"Effects",obj_supernatural_bonus);
			inst.cleared = true;
		}
	}
	else {
		switch (sprite_index) {
			case spr_bullet_small_1: scr_declare_damage(1,1); break;
			case spr_bullet_small_2: scr_declare_damage(1,1); break;
			case spr_bullet_small_3: scr_declare_damage(1,1); break;
			case spr_bullet_note: scr_declare_damage(1,1); break;
			case spr_bullet_seed_1: scr_declare_damage(2,1); break;
			case spr_bullet_seed_2: scr_declare_damage(2,1); break;
			case spr_bullet_heart: scr_declare_damage(2,1); break;
			case spr_bullet_arrowhead: scr_declare_damage(2,1); break;
			case spr_bullet_kunai: scr_declare_damage(3,1); break;
			case spr_bullet_arrow: scr_declare_damage(3,1); break;
			case spr_bullet_amulet: scr_declare_damage(3,1); break;
			case spr_bullet_laser: scr_declare_damage(5,1); break;
			case spr_bullet_med_1: scr_declare_damage(3,1); break;
			case spr_bullet_med_2: scr_declare_damage(3,1); break;
			case spr_bullet_dagger: scr_declare_damage(4,1); break;
			case spr_bullet_large: scr_declare_damage(5,1); break;
		}
	}
	if instance_exists(obj_spell_banner_enemy) {
		with(obj_spell_banner_enemy) {
			failed = true;
		}
	}
}