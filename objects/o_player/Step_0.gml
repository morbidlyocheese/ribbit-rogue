/// @description character movement

var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var x_move = right - left;
var y_move = down - up;

if (x_move != 0) {
	sprite_index = s_player_walk_h;
} else if (y_move != 0) {
	sprite_index = s_player_walk_down;
} else {
	sprite_index = s_player_idle;
}

if x_move != 0 image_xscale = x_move;

x += x_move * spd;
y += y_move * spd;

cd--;

if (cd <= 0 && mouse_check_button(mb_left)) {
	cd = cd_value;
	audio_play_sound(a_shoot, 1, false);
	with (instance_create_layer(x, y, "arrows", o_arrow)) {
		direction = o_bow.image_angle;
		speed = 8;
	}
}

if keyboard_check(vk_escape) game_end();