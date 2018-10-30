/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(obj_Player.x - x > -700 && x - obj_Player.x < 700 && y + 300  > obj_Player.y && y + - 300 < obj_Player.y ) {
//direction = point_direction(x, y, obj_Player.x, obj_Player.y); // Give the bullet a direction
   if(obj_Player.x - x < 0) {
	direction = 180;   
	   
   } else {
	direction = 0;   
   }
   speed = 3;
   
}