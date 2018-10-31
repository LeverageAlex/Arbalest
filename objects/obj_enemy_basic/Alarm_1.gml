/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(obj_Player.x > x - 450 && obj_Player.x < x + 450 && obj_Player.y > y - 180 && obj_Player.y < y + 180) {
	

with (instance_create_layer(obj_enemy_basic.x - 15 ,obj_enemy_basic.y + 35,"ins_player",obj_bullet))
{
   direction = point_direction(x, y, obj_Player.x, obj_Player.y); // Give the bullet a direction
   speed = 6;
   image_angle = direction;
   eigen = false;
}
}
alarm[1] = room_speed * 1;