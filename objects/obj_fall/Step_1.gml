/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(!place_meeting(x,y+5, obj_wall)) {
	y += wert;
	wert *= 1.04;
}
if(damaged && timerDmg <= 60) {
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
else if(timerDmg > 60) {
	pulsierend = 0;
	image_blend = -1;
timerDmg = 0;
damaged = false;
}