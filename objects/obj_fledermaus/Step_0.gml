/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

richtungr = (((obj_Player.x > x + 100 && obj_Player.x < x - 200) || (obj_Player.x < x + 600 && obj_Player.x > x + 30 ))&& obj_Player.y > y - 205 && obj_Player.y < y + 240);


blockiertRechts = false;
blockiertLinks = false;
if(place_meeting(x + 11, y, obj_todesblockteil2)) {
	//x -= 5;
	//show_message("triggered")
	blockiertRechts = true;
	//obj_fall.locked = true;

} else if(place_meeting(x - 11, y, obj_todesblockteil2)){
	//x += 5;
	//show_message("triggered")
	blockiertLinks = true;
	//obj_fall.locked = true;
}


if(state) {
if(richtungr) {
		//sprite_index = sp_Skelett_laufen;
		if(!blockiertRechts && !place_meeting(x+4, y, obj_wall)) {
		speed = 4;
		kakx = x;
		//image_speed = 6;	
		//image_angle = 0;
		//image_yscale = 1;
		direction = 0;
		}
		else {
		speed = 0;	
		}
} else if(obj_Player.x < x - 7 && obj_Player.x > x - 700 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
	if(!blockiertLinks && !place_meeting(x-4, y, obj_wall)) {
	speed = 4;
	direction = 180;
	//sprite_index  = sp_Skelett_laufen;
	//image_yscale = -1;
	//image_angle = 180;
	}
	else {
	speed = 0;	
	}
}
else {
speed = 0;	
}
}
else {
	speed = 4;
		//image_angle = 0;
	
	//sprite_index  = sp_Skelett_laufen;
	//image_yscale = 1;

}


aufundabstop = false;	
//Y Korrektur
if(x - 1000 < obj_Player.x && x + 1000 > obj_Player.x && y + 950 > obj_Player.y && y - 950 < obj_Player.y && (((y + 20 > obj_Player.y) && !(y - 20 < obj_Player.y)) || (!(y + 20 > obj_Player.y) && (y - 20 < obj_Player.y)))) {

if(y < obj_Player.y -20 && !place_meeting(x, y+2, obj_wall)) {
	aufundabstop = true;
	y += 2;
	hochfahren = false;
	kaky = y;
}else if (y > obj_Player.y - 20 && !place_meeting(x, y-2, obj_wall)){
	aufundabstop = true;
y -= 2;	
hochfahren = true;
	kaky = y;
}
else {

}
}


if(y > kaky - 24 && hochfahren && !place_meeting(x, y-0.65, obj_wall) && !aufundabstop) {
y -= 0.65;	
//image_angle++;
if(y <= kaky - 18) {
	hochfahren = false;
}
}
else if(y < kaky + 24 && !hochfahren && !place_meeting(x, y+0.65, obj_wall) && !aufundabstop) {
	y += 0.65;
//	image_angle++;
	if(y >= kaky + 18) {
	hochfahren = true;
}
}


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



if(leben <= 0) {
	global.xp += xp;
instance_destroy();	
}