left = keyboard_check(global.links);
right = keyboard_check(global.rechts);
//jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
longjump = keyboard_check_direct(global.springen);
//down = keyboard_check_direct(ord("S"));
//show_debug_message("Hier sind sie")
//show_debug_message(global.links);
//show_debug_message(global.rechts);
//show_debug_message(global.springen)
if(ungesperrt) {
	



//var bbox_side;
var move = (right - left)*2;

/*if(transport) {
move += 1;	
transport = false;
}*/
if(freeze) {
	move = 0;
	longjump = false
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

/*if(vspdsperre) {
vspd = 0;	
}
vspdsperre = false;*/

//Animationen




//jumpstart
if(springen) {
	if(longjump && (place_meeting(x,y+10,obj_wall ) || place_meeting(x, y+20, obj_Leiter) || place_meeting(x, y+10, obj_durchspringbareEbene)) && (!place_meeting(x, y -30, obj_Leiter)))
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

if(place_meeting(x,y-30,obj_wall)){
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


if (place_meeting(x+hspd*global.laufgeschwindigkeit,y,obj_durchspringbareEbene) && obj_durchspringbareEbene.absetzbar)
{
	while(!place_meeting(x+sign(hspd*global.laufgeschwindigkeit),y,obj_durchspringbareEbene))
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

if (place_meeting(x,y+vspd,obj_durchspringbareEbene) && obj_durchspringbareEbene.absetzbar)
{
	while(!place_meeting(x,y+ sign(vspd),obj_durchspringbareEbene))
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

	if(aktiverRR) {
	sprite_index = sp_bewegung_rechts;
	image_xscale = 1
	aktiverRR = false
	image_speed = 3;
	}
			else if(idle) {
				
				image_speed = 3;
				idle = false;
		}
}
else if(hspd<0) {
	if(aktiverRR == false) {
	sprite_index = sp_bewegung_rechts;
	image_xscale = -1;
	aktiverRR = true;
	image_speed = 3;
	}
				else if(idle) {
				image_speed = 3;
				idle = false;
		}
}
	else {
	//	sprite_index = sp_bewegung_rechts;
	if(sprite_index == sp_bewegung_rechts_mit_schwert) {
	sprite_index = sp_bewegung_rechts;	
	}/*
	else if(sprite_index == sp_bewegung_links_mit_schwert) {
		sprite_index = sp_bewegung_links;	
	}*/
	image_index = 0;
	image_speed = 0;	
	idle = true;
	}
	}
	
	if (weapon_state == 1)
	
	{
		hspdlocal = hspd;
						if(mouse_check_button(mb_left) && mouse_x < obj_Player.x/* && obj_Player.weapon_right*/) {
			obj_Player.weapon_right = false;	
			if(hspd != 0) {
			image_speed = 3;	
			}
			else {
				image_speed = 0;
			}
			hspd = -1;
			schuss = true;
			sprite_index = sp_bewegung_rechts;
			image_xscale = -1
			}
			else if(mouse_check_button(mb_left)&& mouse_x > obj_Player.x /*&& !obj_Player.weapon_right*/){
				obj_Player.weapon_right = true;
							if(hspd != 0) {
			image_speed = 3;	
			}
			else {
				image_speed = 0;
			}
				schuss = true;
				sprite_index = sp_bewegung_rechts;
				image_xscale = 1
				hspd = 1;
			}
	//sprite_index = sp_player_with_w;
	if(hspd>0) {
	if(sprite_index != sp_bewegung_rechts && !schuss) {
		//rechtswapped = true;
	sprite_index = sp_bewegung_rechts;
	weapon_right = true;

	image_speed = 3;
	}
		/*if(schuss) {
		sprite_index = sp_bewegung_links;
	}
		schuss = false;*/
}
else if(hspd<0) {
	if(image_xscale == 1&& !schuss) {
	//	leftswapped = true;
	sprite_index = sp_bewegung_rechts;
	image_xscale = -1;
	weapon_right = false;

	image_speed = 3;
	}
	/*if(schuss) {
sprite_index = sp_bewegung_rechts;
	}
		schuss = false;*/
}
	else {
	//	sprite_index = sp_bewegung_rechts;
	if(sprite_index == sp_bewegung_rechts_mit_schwert) {
	sprite_index = sp_bewegung_rechts;	
	}/*
	else if(sprite_index == sp_bewegung_links_mit_schwert) {
		sprite_index = sp_bewegung_links;	
	}*/
	
	image_index = 0;
	//image_speed = 0;	
	
	}
	
	}
	else if(weapon_state = 2) 	{
	//sprite_index = sp_player_with_w;
	if(obj_Schwert.animation == false) {
	if(hspd>0) {
		image_xscale = 1;
	if(aktiverRR) {
		//rechtswapped = true;
	sprite_index = sp_bewegung_rechts_mit_schwert;
	image_xscale = 1
	aktiverRR = false
	weapon_right = true;
	image_speed = 2.5;
	idle = true;
	}
					else if(idle) {
				image_speed = 2.5;
				idle = false;
				
		}
}
else if(hspd<0) {
	image_xscale = -1;
	if(!aktiverRR) {
	//	leftswapped = true;
	sprite_index = sp_bewegung_rechts_mit_schwert;
	image_xscale = -1;
	weapon_right = false;
	aktiverRR = true
	image_speed = 2.5;
	
	}
		
				else if(idle) {
				image_speed = 2.5;
				idle = false;
				}
}
	else {
	//	sprite_index = sp_bewegung_rechts;
	if(sprite_index == sp_bewegung_rechts) {
	sprite_index = sp_bewegung_rechts_mit_schwert;	
	
	}/*
	else if(sprite_index == sp_bewegung_links) {
		sprite_index = sp_bewegung_links_mit_schwert;	
	}*/
	
	image_index = 0;
	image_speed = 0;	
	idle = true;
	}
	if(sprite_index == sp_player_attack_rechts) {
	sprite_index = sp_bewegung_rechts_mit_schwert;	
	}
	}

	}//}
	
	with (obj_frame_indicator_and_w_state)
	{
	
	get_waepon_state = other.weapon_state;
	
	}
if(schuss) {
hspd = hspdlocal;	
}

	//LevelUp
if(global.xp >= 50*global.level) {
global.xp -= 50*global.level;
// zu fixen

global.level++;
with(instance_create_layer(x,y, "ins_player", obj_text_hochfahren)) {
text = "Level Up!";
}
}
obj_healthbar.image_index = (16*global.xp)/(50*global.level)
//Animationen

if(place_meeting(x,y-44, obj_wasser)) {
	letzterAtem++;
	if(letzterAtem > 150) {
spieler_schaden(0.08);

	
}
if(vspd > 4) {
vspd -= 5;	
//show_debug_message("erreicht 1")
}
else if(vspd > 0.4){
vspd -= 0.4;
//show_debug_message("erreicht 2")
}
else {
vspd += 0.6;
//show_debug_message("erreicht")
}


}
else {
letzterAtem = 0;	
}



}
//Hitanimation
if(damaged && timerDmg <= 40) {
	if(pulsierend < 7) {
	image_blend = c_red;
	}
	else {
		image_blend = -1;
		if (pulsierend == 14) pulsierend = 0;
	}
	timerDmg++;
	pulsierend++;
	
}
else if(timerDmg > 40) {
	pulsierend = 0;
	image_blend = -1;
timerDmg = 0;
damaged = false;
}

schuss = false;



