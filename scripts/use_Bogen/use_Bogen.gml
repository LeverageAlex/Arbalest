if(obj_Player.weapon_state == 0) {

with(instance_create_layer(obj_Player.x + 30, obj_Player.y, "ins_player", obj_weapon )) {
	sammeln = false;
	waffenstatus = true;
	obj_Player.weapon_state = 1;
	}
}
else if(obj_Player.weapon_state == 2) {
	instance_destroy(obj_Schwert);
	obj_Player.weapon_state = 1;
	with(instance_create_layer(obj_Player.x + 30, obj_Player.y, "ins_player", obj_weapon )) {
	sammeln = false;
	waffenstatus = true;
	}
	/*
	with(instance_create_layer(obj_Player.x + 30, obj_Player.y, "ins_player", obj_weapon )) {
	sammeln = false;
	waffenstatus = true;
	}
	obj_Player.weapon_state = 1;
	obj_Schwert.status = false;
	instance_destroy(obj_Schwert)
	obj_Player.weapon_state = 0;*/
}
else {
		instance_destroy(obj_weapon)
	obj_Player.weapon_state = 0;
}