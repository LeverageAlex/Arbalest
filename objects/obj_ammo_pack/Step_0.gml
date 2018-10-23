if (place_meeting(x,y,obj_Player)) {

if (keyboard_check_pressed(ord("E"))) {

		with (obj_magazin)
		{
		
		ammo = ammo + 30;
		
		}
		
		instance_destroy(self);
	
		}
	}