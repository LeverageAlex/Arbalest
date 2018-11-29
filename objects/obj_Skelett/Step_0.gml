/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(((obj_Player.x > x + 100 && obj_Player.x < x - 700) || (obj_Player.x < x + 500 && obj_Player.x > x + 30 ))&& obj_Player.y > y - 205 && obj_Player.y < y + 240) {
sprite_index = sp_Skelett_laufen;
		
speed = 2;
image_speed = 6;	
			direction = image_angle;
	
} else if(obj_Player.x > x && obj_Player.x < x + 100 && obj_Player.y > y - 205 && obj_Player.y < y + 240)  {
	sprite_index = sp_skelett_schlagunten;
	image_yscale = 1;
image_speed = 6;
		image_angle = 0;
speed = 0;
	
} else if(obj_Player.x < x && obj_Player.x > x - 47 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
		sprite_index = sp_skelett_schlagunten;
		image_yscale = -1;
		image_angle = 180;
			direction = image_angle;
image_speed = 6;
speed = 0;
	
} else if(obj_Player.x < x - 47 && obj_Player.x > x - 200 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
	speed = 2;
	direction = image_angle;
	sprite_index  = sp_Skelett_laufen;
		image_yscale = -1;
		image_angle = 180;
	
}

else {
	speed = 0;
	image_speed = 1;
	sprite_index = sp_Skelett_leerlauf;
	
}
/*if(obj_Player.x > x - 450 && obj_Player.x < x + 450 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
//direction = point_direction(x, y, obj_Player.x, obj_Player.y); // Give the bullet a direction
   speed = 3;
   if(obj_Player.x - x < 0) {
	direction = 180;   
	   	if(place_meeting(x - 30, y - 10, obj_wall)) {
	speed = 0;	
	}
   } else {
	direction = 0;  
	if(place_meeting(x+ 30, y - 10, obj_wall)) {
	speed = 0;	
	}
   }
   

}*/
if(place_meeting(x + 1, y, obj_wall)) {
	if(direction == 0) {
	speed = 0;	
	sprite_index = sp_Skelett_leerlauf;
	image_speed = 1;
	}
	
} else if(place_meeting(x - 1, y, obj_wall)) {
		if(direction == 180) {
			sprite_index = sp_Skelett_leerlauf;
			image_speed = 1;
	speed = 0;	
	}
}

