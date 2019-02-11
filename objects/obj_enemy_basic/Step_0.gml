/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/*instance_create_layer(obj_enemy_basic.x+3,obj_enemy_basic.y + 10,"ins_player",obj_bullet)
with (obj_bullet)
{
   direction = point_direction(x, y, obj_Player.x, obj_Player.y); // Give the bullet a direction
   speed = 6;
}*/
if(feuer) {
			rechnungx = 10*cos(degtorad(image_angle));
	rechnungy = -1*10*sin(degtorad(image_angle));
with(instance_create_layer(x + rechnungx,y + rechnungy,"ins_gun",obj_bullet)) {
direction =	 point_direction(x, y, obj_Player.x, obj_Player.y);
sprite_index = sp_fireball;
image_angle = direction;
eigen = false;

}
feuer = false;
}

if(x > obj_Player.x) {
	if(image_xscale == 1) {
image_xscale = -1;	
x -= 30;
	}
	
}
else {
	if(image_xscale == -1) {
image_xscale = 1;	
x += 30;
	}
}