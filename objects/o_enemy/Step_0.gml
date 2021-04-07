/// @description Insert description here

if (dead) {
	sprite_index = s_enemy_dead;
	speed = 0;
} else {
	direction = point_direction(x, y, o_player.x, o_player.y);
	speed = random_range(0.5, 1.5);

	if (direction > 90 && direction < 270) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}