_damage = argument0;

	if(global.ruestung - _damage < 0) { 
		global.ruestung -= _damage;
		health += global.ruestung;
	global.ruestung = 0;
	}
	else {
	global.ruestung -= _damage;	
	}
	if(_damage > 0) {
		obj_Player.damaged = true;
	}