/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(timer) {
	zaehler++;
	if(zaehler == 60*6) {

	//room_goto(r_victoryscreen);
	room_goto_next();
	}
}


if(y > kaky - 30 && hochfahren) {
y--;	
image_angle++;
if(y == kaky - 24) {
	hochfahren = false;
}
}
else if(y < kaky + 30 && !hochfahren) {
	y++;
	image_angle++;
	if(y == kaky + 24) {
	hochfahren = true;
}
}
