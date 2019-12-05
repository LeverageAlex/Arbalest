/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
//if(obj_Player.x - x > -550 && x - obj_Player.x < 700 && y + 300  > obj_Player.y && y + - 300 < obj_Player.y ) {



if(!blockiertLinks && obj_Player.x > x - 850 && obj_Player.x < x && obj_Player.y > y - 305 && obj_Player.y < y + 340) {
//direction = point_direction(x, y, obj_Player.x, obj_Player.y); // Give the bullet a direction
   speed = 3;
	direction = 180;
	if(sprite_index == sp_toad) {
	image_speed = 4;
	}
	image_xscale = 1;
}
else if(!blockiertRechts && obj_Player.x > x && obj_Player.x < x + 850 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
	   	speed = 3;
		direction = 0;
		if(sprite_index == sp_toad) {
		image_speed = 4;
		}
		image_xscale = -1;
}
else {

speed = 0;	

}
	
	if(place_meeting(x - 30, y, obj_wall) && direction == 180) {
	speed = 0;	
		
   } else if(place_meeting(x + 30, y , obj_wall)  && direction == 0) {
	speed = 0;	
	
   } else if(place_meeting(x + 30, y - 30 , obj_wall)  && direction == 0) {
	speed = 0;	
	
   } else if(place_meeting(x - 30, y - 30, obj_wall) && direction == 180) {
	speed = 0;	
		
   }
   
   
   
   if(damagede) {
	   if(sprite_index != sp_toad_schaden) {
		   	image_index = 0;
	   }
	sprite_index = sp_toad_schaden;

	damagede = false;
	 //show_message("Nice")
	 toadCount = 1;
   }
   
   
if(speed == 0) {
image_speed = 0;	
}

if (hp <= 0) 
{
global.xp += xp;

instance_create_layer(x, y, layer, obj_toad_die)
instance_destroy();
}

if(toadCount > 0) {
toadCount++;
sprite_index = sp_toad_schaden;
}


if(toadCount >= toadZaehler && image_index >= 4) {
	sprite_index = sp_toad;
	toadCount = 0;
	
	image_speed = 4;
	
} else if(toadCount >= toadZaehler) {
	image_speed = 0;
	image_index += 1;
	toadCount = 1;
}