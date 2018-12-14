if(obj_Player.weapon_state == 0) {

with(instance_create_layer(obj_Player.x + 30, obj_Player.y, "ins_player", obj_Schwert )) {
	sammeln = false;
	waffenstatus = true;
	obj_Player.weapon_state = 2;
	status = true;
	sprite_index = noone;
	}
}
else if(obj_Player.weapon_state == 1) {
	instance_destroy(obj_weapon);
	obj_Player.weapon_state = 2;
	with(instance_create_layer(obj_Player.x + 30, obj_Player.y, "ins_player", obj_Schwert )) {
	sammeln = false;
	waffenstatus = true;
	status = true;
	sprite_index = noone;
	}
	
	/*
	instance_destroy(obj_weapon)
	obj_Player.weapon_state = 0;
	/*with(instance_create_layer(obj_Player.x + 30, obj_Player.y, "ins_player", obj_Schwert )) {
	sammeln = false;
	waffenstatus = true;
	status = true;
	sprite_index = noone;
	}*/
}
else {
		instance_destroy(obj_Schwert)
	obj_Player.weapon_state = 0;
}