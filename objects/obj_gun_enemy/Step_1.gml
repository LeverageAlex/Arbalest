/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

//gun verfolgt player

//gun zeigt in richtung maus
//image_angle = point_direction(x,y,mouse_x,mouse_y);
x = save_x;
y = save_y;
image_angle = point_direction(x, y, obj_Player.x, obj_Player.y - 10)
firingdelay = firingdelay - 1;
recoil = max(0,recoil -1)

if(feuer)
{
	image_speed = 4;
	if(image_index = 7) {	
	feuer = false;
		rechnungx = 22*cos(degtorad(image_angle));
	rechnungy = -1*22*sin(degtorad(image_angle));
	recoil = 4;
	firingdelay = 10;
with(instance_create_layer(x + rechnungx,y + rechnungy,"ins_gun",obj_bullet)) {
direction =	 point_direction(x, y, obj_Player.x, obj_Player.y);
image_angle = direction;
eigen = false;

}
}

		
	
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

/*if (image_angle > 90) && (image_angle < 270) {
	image_yscale  = -1;
}
else{
	image_yscale = 1;
}*/