/// @description Insert description here

var enemies = instance_number(o_enemy);
var all_dead = true;

for (var i = 0; i < enemies; i++) {
	if(!instance_find(o_enemy, i).dead) all_dead = false;
}

if (all_dead) game_restart();
