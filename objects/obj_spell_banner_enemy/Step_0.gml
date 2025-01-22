if x_pos >= 252 {
	x_pos -= 8;
}
if y_pos >= 1 {
	y_pos -= 1;
}
if opac <= 0.99 {
	opac += 0.02;
}

if instance_exists(boss_id) {
	spell_bonus = round((global.stage * 1000) + ((boss_id.timer) * 100))
}