_damage = argument0;

	if(obj_Player.ruestung - _damage < 0) { 
		obj_Player.ruestung -= _damage;
		health += obj_Player.ruestung;
	obj_Player.ruestung = 0;
	}
	else {
	obj_Player.ruestung -= _damage;	
	}