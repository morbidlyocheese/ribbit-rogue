/// @description collision with arrow

if (!dead) {
	audio_play_sound(a_hurt, 1, false);
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
}