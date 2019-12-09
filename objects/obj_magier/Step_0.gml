/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(timer) {
	zaehler++;
	if(zaehler == 60*6) {

	//room_goto(r_victoryscreen);
	audio_stop_sound(global.localsound);
	
	nextTurn = true;
	}
}

if(!freeze) {
if(y > kaky - 24 && hochfahren) {
y -= 0.65;	
//image_angle++;
if(y <= kaky - 18) {
	hochfahren = false;
}
}
else if(y < kaky + 24 && !hochfahren) {
	y += 0.65;
//	image_angle++;
	if(y >= kaky + 18) {
	hochfahren = true;
}
}
}
if(nextTurn && room != r_level6 && room != r_kingfight) {
	room_goto_next();	
} 