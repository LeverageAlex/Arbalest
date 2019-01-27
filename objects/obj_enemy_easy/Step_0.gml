/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
//if(obj_Player.x - x > -550 && x - obj_Player.x < 700 && y + 300  > obj_Player.y && y + - 300 < obj_Player.y ) {
if(obj_Player.x > x - 650 && obj_Player.x < x + 650 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
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
   

}