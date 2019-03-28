/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
//Alexander Levi Israel Fink


if(begraben) {
	if(!auftauchen) {
if((obj_Player.x < x && obj_Player.x + 200 > x) || (obj_Player.x  > x && obj_Player.x -200 < x)) {
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
	speed = 5;
if(obj_Player.x < x) {
direction = 180;
image_xscale = 1;

}
else {
direction = 0;	
	image_xscale = -1;
}

}

