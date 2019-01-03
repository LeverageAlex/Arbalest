left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
//jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
longjump = keyboard_check_direct(vk_space) || keyboard_check_direct(ord("W"));
down = keyboard_check_direct(ord("S"));



//var bbox_side;
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




//jumpstart
if(springen) {
	if(longjump && place_meeting(x,y+1,obj_wall ))
{

	jumpl = true;
}
//jumplong

if(jumpl == true && longjump == true){
	vspd = -jumpactive;
	jumpactive = 12;
	jumpcounter += 1;
	if(jumpcounter == 15){
		jumpl = false;
		jumpcounter = 0;
		jumpactive = 0;
	}
}
else{
	jumpl = false;
	jumpcounter = 0;
	jumpactive = 0;
}
}

//tilesetcollision
/*
//horizontal
if (hspd > 0){bbox_side = bbox_right}
else {bbox_side = bbox_left}

if (tilemap_get_at_pixel((tiledirt||tilestone),bbox_side+hspd,bbox_top) != 0) || (tilemap_get_at_pixel((tiledirt||tilestone),bbox_side+hspd,bbox_bottom) != 0)
{
	if (hspd > 0){ x = x - (x mod 32) +31 - (bbox_right - x)}
	else { x = x - (x mod 32) - (bbox_left - x)}
	hspd = 0;
}
x += hspd;

//vertical
if (vspd > 0){bbox_side = bbox_bottom}
else {bbox_side = bbox_top}


if (tilemap_get_at_pixel((tiledirt||tilestone),bbox_left,bbox_side+vspd) != 0) || (tilemap_get_at_pixel((tiledirt||tilestone),bbox_right,bbox_side+vspd) != 0)
{
	if (vspd > 0){ y = y - (y mod 32) +31 - (bbox_bottom - y)}
	else { y = y - (y mod 32) - (bbox_top - y)}
	vspd = 0;
}
y += vspd;
*/




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
	if(sprite_index != sp_playercrouch) {
	spr_old = sprite_index;
	}
	if (weapon_state == 0)
	
	{
		
	sprite_index = sp_playercrouch;
//	y -= 1;

	
	}
	
	if (weapon_state == 1)
	
	{
		
	sprite_index = sp_playercrouch_with_w;
	}
	
	downidle = true;
	}
else{
	if(downidle) {
		sprite_index = sp_bewegung_rechts;
		
		downidle = false;
	}
	
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
	if(sprite_index != sp_bewegung_rechts) {
		//rechtswapped = true;
	sprite_index = sp_bewegung_rechts;
	weapon_right = true;
	image_speed = 0.40;
	}
}
else if(hspd<0) {
	if(sprite_index != sp_bewegung_links) {
	//	leftswapped = true;
	sprite_index = sp_bewegung_links;
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
	else if(weapon_state = 2) 	{
	//sprite_index = sp_player_with_w;
	if(obj_Schwert.animation == false) {
	if(hspd>0) {
	if(sprite_index != sp_bewegung_rechts_mit_schwert) {
		//rechtswapped = true;
	sprite_index = sp_bewegung_rechts_mit_schwert;
	weapon_right = true;
	image_speed = 5;
	idle = true;
	}
					else if(idle) {
				image_speed = 5;
				idle = false;
		}
}
else if(hspd<0) {
	if(sprite_index != sp_bewegung_links_mit_schwert) {
	//	leftswapped = true;
	sprite_index = sp_bewegung_links_mit_schwert;
	weapon_right = false;
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

	}}
	
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










