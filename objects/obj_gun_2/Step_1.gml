/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

//gun verfolgt player

//gun zeigt in richtung maus
image_angle = point_direction(x,y,mouse_x,mouse_y);


firingdelay = firingdelay - 1;
recoil = max(0,recoil -1)

if(mouse_check_button(mb_left)) && (firingdelay < 0)
{
		rechnungx = 60*cos(degtorad(image_angle));
	rechnungy = -1*60*sin(degtorad(image_angle));
	recoil = 4;
	firingdelay = 10;
	with(instance_create_layer(x -10 + rechnungx,y + rechnungy,"ins_gun",obj_bullet1)) {
	direction = other.image_angle;	
	}
		
	
}

//x = x - lengthdir_x(recoil,image_angle);
//y = y - lengthdir_y(recoil,image_angle);

/*if (image_angle > 90) && (image_angle < 270) {
	image_yscale  = -1;
}
else{
	image_yscale = 1;
}*/