/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(keyboard_check_pressed(ord("G"))) {
	health = health - 2;
}
if(health < 0) {
	
	health = 0;
}