/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/*if(keyboard_check_pressed(ord("G"))) {
	health = health - 2;
}
if(keyboard_check_pressed(ord("P"))) {
	global.ruestung -= 2;
}*/
image_speed = 0;
if(health == 0) {
room_goto(r_gameover);	
}