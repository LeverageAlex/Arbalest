/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(!place_meeting(x,y+5, obj_wall)) {
	y += wert;
	wert *= 1.04;
}
if(damaged && timerDmg <= 70) {
	image_blend = c_red;
	timerDmg++;
}
else if(timerDmg > 70) {
timerDmg = 0;
damaged = false;
}