/// @description Insert description here

x = o_player.x;
y = o_player.y;

image_angle = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);

if (image_angle > 0 && image_angle < 180) {
	layer = layer_get_id("bowback");
} else {
	layer = layer_get_id("bowfront");
}