left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
down = keyboard_check(ord("S"));

var move = right - left;

if(locked == true) {
	
move = 0;	
}
if (block) {
move = 1;	
}

hspd = move * player_speed;

vspd = vspd + grv;

//Animationen




//jump
if(place_meeting(x,y+1,obj_wall )) && (jump)
{
	vspd = -20;	
}

//horizontal
if (place_meeting(x+hspd,y,obj_wall))
{
	while(!place_meeting(x+sign(hspd),y,obj_wall))
	{
		x = x +sign (hspd);
	}
	hspd = 0;
}
x = x + hspd;

//vertikal
if (place_meeting(x,y+vspd,obj_wall))
{
	while(!place_meeting(x,y+sign(vspd),obj_wall))
	{
		y = y + sign (vspd);
	}
	vspd = 0;
}
y = y + vspd;

//schnellles fallen

if(keyboard_check_pressed(ord("S"))){
 vspd = vspd + 4;
}
if(rechtswapped) {
	obj_weapon.image_angle = 0;
	obj_weapon.image_yscale = 0.5;
	rechtswapped = false;
	
} else if(leftswapped) {
		obj_weapon.image_angle = 180;
	obj_weapon.image_yscale = -0.5;
	leftswapped = false;
}

//schießen
/*if (weapon_state == 1){
	
}*/
if(firecooldown <= 10) 
{
 	if (firecooldown != 0)
	{
	firecooldown = firecooldown - 1;	
	}
}
//crouch
if(down)
{
	if (weapon_state == 0)
	
	{
	sprite_index = sp_playercrouch;
	}
	
	if (weapon_state == 1)
	
	{
	sprite_index = sp_playercrouch_with_w;
	}
	
	
	}
else{
	if (weapon_state == 0)
	
	{
		
//	sprite_index = sp_player_Khanh_Leander;
	if(hspd>0) {

	if(sprite_index != sp_bewegung_rechts) {
	sprite_index = sp_bewegung_rechts;
	image_speed = 5;
	}
			else if(idle) {
				image_speed = 5;
				idle = false;
		}
}
else if(hspd<0) {
	if(sprite_index != sp_bewegung_links) {
	sprite_index = sp_bewegung_links;
	
	image_speed = 5;
	}
				else if(idle) {
				image_speed = 5;
				idle = false;
		}
}
	else {
	//	sprite_index = sp_bewegung_rechts;
	image_index = 0;
	image_speed = 0;	
	idle = true;
	}
	}
	
	if (weapon_state == 1)
	
	{
	//sprite_index = sp_player_with_w;
	if(hspd>0) {
	if(sprite_index != sp_player_with_w) {
		//rechtswapped = true;
	sprite_index = sp_player_with_w;
	weapon_right = true;
	image_speed = 0.40;
	}
}
else if(hspd<0) {
	if(sprite_index != sp_bewegung_links_mit_w) {
	//	leftswapped = true;
	sprite_index = sp_bewegung_links_mit_w;
	weapon_right = false;
	image_speed = 0.40;
	}
}
	else {
	//	sprite_index = sp_bewegung_rechts;
	image_index = 0;
	image_speed = 0;	
	
	}
	}
	
	}
	
	with (obj_frame_indicator_and_w_state)
	{
	
	get_waepon_state = other.weapon_state;
	
	}
	
	//LevelUp
if(xp >= 50*level) {
xp -= 50*level;
level++;
}

//Animationen










