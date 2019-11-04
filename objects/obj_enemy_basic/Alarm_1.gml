/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/*if(obj_Player.x > x - 450 && obj_Player.x < x + 450 && obj_Player.y > y - 145 && obj_Player.y < y + 240) {
	

with (instance_create_layer(x - 15 ,y + 35,"ins_player",obj_bullet))
{
   direction = point_direction(x, y, obj_Player.x, obj_Player.y); // Give the bullet a direction
   speed = 6;
   image_angle = direction;
   eigen = false;
}
}
alarm[1] = room_speed * 1;*/

if(obj_Player.x > x - 1400 && obj_Player.x < x + 1400 && obj_Player.y > y - abstandY1 && obj_Player.y < y + abstandY2) {
	

	feuer = true;
}
alarm[1] = 100 * 1;