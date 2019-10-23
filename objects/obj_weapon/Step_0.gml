/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(obj_Player.ungesperrt) {
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
	x = obj_Player.x + 30;
	y = obj_Player.y
	image_yscale = yscale;
	
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


		x = obj_Player.x - 30;	
		y = obj_Player.y;	
		image_yscale = -yscale;
		
		}
	direction = point_direction(x,y, mouse_x, mouse_y);
	image_angle = direction;
	

	rechnungx = 9*cos(degtorad(image_angle));
	rechnungy = -1*9*sin(degtorad(image_angle));
	
		if (array_findindex(global.inventory, ItemType.pfeile) > -1) {
		
if(mouse_check_button(mb_left)&& obj_Player.firecooldown = 0)

		{	

			image_speed = 4;
			counter++;
			if(counter > 10) {
				audio_play_sound(snd_bogen_abschuss, 10, false);
				counter = 0;
inv_RemoveItem(ItemType.pfeile);
with(instance_create_layer(x+rechnungx,y  + rechnungy,"ins_player",obj_bullet))
			{
				sprite_index = sp_pfeil;
				schadenArrow = other.pfeildamage;
			
			}
			

obj_Player.firecooldown = obj_Player.downrate;
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
	
	
	
	
	
	
	
	
	
	
}}

if(obj_Player.weapon_state == 0) {
instance_destroy()	;
}