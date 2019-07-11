left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
//jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
longjump = keyboard_check_direct(vk_space);
//down = keyboard_check_direct(ord("S"));

if(ungesperrt) {
	



//var bbox_side;
var move = (right - left)*2;

/*if(transport) {
move += 1;	
transport = false;
}*/
if(freeze) {
	move = 0;
}


if(locked == true) {
	if(keyboard_check_pressed(vk_anykey)) {
locked = false;	
}
else {
move = 0;	
}
}
if (block) {
		if(keyboard_check_pressed(vk_anykey)) {
block = false;	
} 
else {
move = 1;	
}
}


hspd = move * player_speed;

vspd = vspd + grv;

//Animationen




//jumpstart
if(springen) {
	if(longjump && place_meeting(x,y+20,obj_wall ))
{

	jumpl = true;
}
//jumplong

if(jumpl == true && longjump == true){
	vspd = -jumpactive;
	jumpactive = 18;
	jumpcounter += 1;
	if(jumpcounter == round(14*global.sprunghoehe)){
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

//jup against wall

if(place_meeting(x,y-60,obj_wall)){
	jumpcounter = 0;
	jumpl = false;
	jumpactive = 0;
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

/*
if(tile_meeting(x + hspd, y , layer_tilemap_get_id("til_dirt"))) {
while(!tile_meeting(x + sign(hspd), y, layer_tilemap_get_id("til_dirt"))) {
x += sign(hspd);	
}
hspd = 0;
	
	
}
x = x + hspd;

if(tile_meeting(x, y + vspd, layer_tilemap_get_id("til_dirt"))) {
while(!tile_meeting(x, y + sign(vspd), layer_tilemap_get_id("til_dirt"))) {
y += sign(vspd);	
}
vspd = 0;
	
	
}
y = y + vspd;
*/

//horizontal
if (place_meeting(x+hspd*global.laufgeschwindigkeit,y,obj_wall))
{
	while(!place_meeting(x+sign(hspd*global.laufgeschwindigkeit),y,obj_wall))
	{
		x = x +sign (hspd*global.laufgeschwindigkeit);
	}
	hspd = 0;
}
x = x + hspd*global.laufgeschwindigkeit;




if (place_meeting(x,y+vspd,obj_wall))
{
	while(!place_meeting(x,y+ sign(vspd),obj_wall))
	{
		y = y + sign (vspd);
	}
	vspd = 0;
}
y = y + vspd;
//schnelles fallen

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
/*if(firecooldown <= 10) 
{*/
 	if (firecooldown != 0)
	{
	firecooldown = firecooldown - 1;	
	}
//}
//crouch

/*if(down)
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
	}*/
	
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
	if(sprite_index == sp_bewegung_rechts_mit_schwert) {
	sprite_index = sp_bewegung_rechts;	
	}
	else if(sprite_index == sp_bewegung_links_mit_schwert) {
		sprite_index = sp_bewegung_links;	
	}
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
	if(sprite_index == sp_bewegung_rechts_mit_schwert) {
	sprite_index = sp_bewegung_rechts;	
	}
	else if(sprite_index == sp_bewegung_links_mit_schwert) {
		sprite_index = sp_bewegung_links;	
	}
	
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
	if(sprite_index == sp_bewegung_rechts) {
	sprite_index = sp_bewegung_rechts_mit_schwert;	
	
	}
	else if(sprite_index == sp_bewegung_links) {
		sprite_index = sp_bewegung_links_mit_schwert;	
	}
	
	image_index = 0;
	image_speed = 0;	
	idle = true;
	}
	}

	}//}
	
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







}


