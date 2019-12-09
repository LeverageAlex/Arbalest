/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
//Alexander Levi Israel Fink


if(begraben) {
	if(!auftauchen) {
if((obj_Player.x < x && obj_Player.x + 500 > x) || (obj_Player.x  > x && obj_Player.x -500 < x)) {
auftauchen = true;	
	}
}
	else {
	if(place_meeting(x, y - 20, obj_wall)) {
		y -= 25;
		
	}
	else {
	begraben = false;	
	}
		
		
		
		
	}


}
else if(!begraben) {
	speed = 7;
	image_speed = 4;
if(!blockiertLinks && obj_Player.x + 70 < x) {
direction = 180;
image_xscale = 1;

}
else if(!blockiertRechts && obj_Player.x - 70 > x) {
direction = 0;	
	image_xscale = -1;
} else {
speed = 0;	
image_speed = 0;
}


if(place_meeting(x+ 7, y - 10, obj_wall) && x < obj_Player.x) {
speed = 0;
image_speed = 0;
} else if(place_meeting(x - 7, y - 10, obj_wall) && x > obj_Player.x) {
speed = 0;
image_speed = 0;
}


}

if(leben < 1) {
	global.xp += xp;
gegner_drop();	
	instance_destroy();
}