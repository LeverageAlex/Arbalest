/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if((place_meeting(x + 40, y -20, obj_wall) || place_meeting(x + 40, y -70, obj_wall))) {
	//x--;

	blockiertRechts = true;
	
} 
if((place_meeting(x - 40, y - 20, obj_wall))) {
blockiertLinks = true;

	

} 


if(!blockiertRechts && ((obj_Player.x > x + 60 && obj_Player.x < x + 700) || (obj_Player.x < x + 500 && obj_Player.x > x + 30 ))&& obj_Player.y > y - 205 && obj_Player.y < y + 240) {
		sprite_index = laufen;
		speed = 5;
		image_speed = 6;	
		image_angle = 0;
		//image_yscale = 1;
		if(image_xscale != scaleX) {
		x += 25;	
		}
			image_xscale = scaleX;
		direction = image_angle;
	
} else if(!blockiertLinks && (obj_Player.x < x - 60 && obj_Player.x > x - 600 && obj_Player.y > y - 265 && obj_Player.y < y + 270)) {
	speed = -5;
	image_speed = 6;
	direction = image_angle;
	sprite_index  = laufen;
	//image_yscale = -1;
	//image_angle = 180;
			if(image_xscale != -scaleX) {
		x -= 25;	
		}
	image_xscale = -scaleX;
	
}
else if(obj_Player.x > x + 7&& obj_Player.x < x + 290 && obj_Player.y > y - 100 && obj_Player.y < y + 220)  {
	sprite_index = schlagunten;
	//image_yscale = 1;
	image_xscale = scaleX;
	image_speed = 7;
	image_angle = 0;
	speed = 0;
	
} 
else if(obj_Player.x < x && obj_Player.x > x - 290 && obj_Player.y > y - 100 && obj_Player.y < y + 220) {
		sprite_index = schlagunten;
		//image_yscale = -1;
		//image_angle = 180;
		image_xscale = -scaleX;
		image_speed = 7;
		speed = 0;
	
}

else {
	speed = 0;
	image_speed = 1;
	sprite_index = idle;
	
}

richtungL = false;
if(speed < 0) {
richtungL = true;	
}


	if(leben <= 0) {
		global.xp += xp;
	instance_destroy();	
		
	}