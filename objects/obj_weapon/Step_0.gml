/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(waffenstatus) {
	//sämtliche Waffenanimationen
		if(obj_Player.weapon_right) {
					obj_Player.x = obj_Player.x - obj_Player.hspd;
	
	if (place_meeting(obj_Player.x + 10 +obj_Player.hspd,y,obj_wall) && obj_Player.sprite_index == sp_player_with_w)
{
	while(!place_meeting(obj_Player.x + 10+sign(obj_Player.hspd),y,obj_wall))
	{
		obj_Player.x = obj_Player.x +sign (obj_Player.hspd);
	}
	obj_Player.hspd = 0;
}
obj_Player.x = obj_Player.x + obj_Player.hspd;
	x = obj_Player.x + 10;
	y = obj_Player.y
	image_yscale = 0.5;
	
		} else { 
					obj_Player.x = obj_Player.x - obj_Player.hspd;
	
	if (place_meeting(obj_Player.x - 30 -obj_Player.hspd,y,obj_wall) && obj_Player.sprite_index == sp_bewegung_links_mit_w)
{
	while(!place_meeting(obj_Player.x - 30 +sign(obj_Player.hspd),y,obj_wall))
	{
		obj_Player.x = obj_Player.x +sign (obj_Player.hspd);
	}

	obj_Player.hspd = 0;
		if(keyboard_check_pressed(ord("D"))) {
		obj_Player.hspd = 1;
	}
}

obj_Player.x = obj_Player.x + obj_Player.hspd;


		x = obj_Player.x - 20;	
		y = obj_Player.y;	
		image_yscale = -0.5;
		
		}
	direction = point_direction(x,y, mouse_x, mouse_y);
	if(obj_Player.weapon_right && ((direction > 90) && (direction < 270))) {
		obj_Player.stop = true;
	} else if((!obj_Player.weapon_right) && ((direction < 90) || (direction > 270))) {

	obj_Player.stop = true;
	
	}
	else {
	image_angle = direction
	obj_Player.stop = false;	
	}

	rechnungx = 9*cos(degtorad(image_angle));
	rechnungy = -1*9*sin(degtorad(image_angle));
	
		if (obj_Player.ammonition > 0) {
		
if(mouse_check_button(mb_left)&& obj_Player.firecooldown = 0)

		{	
			image_speed = 4;
			counter++;
			if(counter > 10) {
				counter = 0;
			if(!obj_Player.stop) {
with(instance_create_layer(x+rechnungx,y - 2 + rechnungy,"ins_player",obj_bullet))
			{
				sprite_index = sp_pfeil;
			}
			}
			
	//decreases ammo
	with (obj_magazin)
		{
	
			ammo = ammo - 1;
	
		}	
firecooldown = 15;
		} 
		
		
		
	}
	else {
			image_speed = 0;
			image_index = 0;
			counter = 0;
		}
}
else {
			image_speed = 0;
			image_index = 0;	
			counter = 0;
}
	
	
	
	
	
	
	
	
	
	
}