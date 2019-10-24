/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(!blockiertRechts && ((obj_Player.x > x + 60 && obj_Player.x < x + 700) || (obj_Player.x < x + 500 && obj_Player.x > x + 30 ))&& obj_Player.y > y - 205 && obj_Player.y < y + 240) {
		sprite_index = laufen;
		speed = 5;
		image_speed = 6;	
		image_angle = 0;
		//image_yscale = 1;
			image_xscale = scaleX;
		direction = image_angle;
	
} else if(!blockiertLinks && obj_Player.x < x - 40 && obj_Player.x > x - 600 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
	speed = -5;
	image_speed = 6;
	direction = image_angle;
	sprite_index  = laufen;
	//image_yscale = -1;
	//image_angle = 180;
	image_xscale = -scaleX;
	
}
else if(obj_Player.x > x + 13&& obj_Player.x < x + 240 && obj_Player.y > y - 100 && obj_Player.y < y + 220)  {
	sprite_index = schlagunten;
	//image_yscale = 1;
	image_xscale = scaleX;
	image_speed = 6;
	image_angle = 0;
	speed = 0;
	
} 
else if(obj_Player.x < x && obj_Player.x > x - 110 && obj_Player.y > y - 100 && obj_Player.y < y + 220) {
		sprite_index = schlagunten;
		//image_yscale = -1;
		//image_angle = 180;
		image_xscale = -scaleX;
		image_speed = 6;
		speed = 0;
	
}

else {
	speed = 0;
	image_speed = 1;
	sprite_index = idle;
	
}

if(place_meeting(x + 1, y -30, obj_wall)) {
	if(direction == 0) {
	speed = 0;	
	sprite_index = idle;
	image_speed = 1;
	}
	
} else if(place_meeting(x - 1, y - 30, obj_wall)) {
		if(direction == 180) {
			sprite_index = idle;
			image_speed = 1;
	speed = 0;	
	}
	

}

	if(leben <= 0) {
		global.xp += xp;
	instance_destroy();	
		
	}