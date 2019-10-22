/// @description Insert description here
// You can write your code in this editor
/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(keyboard_check_direct(global.klettern)) {
	other.vspd = -8;
	other.hspd = 0;
	other.grv = 0;
	other.locked = true;
	//other.springen = false;
	//other.block = true;
	
} else if(keyboard_check_direct(global.ducken)) {
	other.vspd = 8;
	other.hspd = 0;
	other.grv = 0;
	other.locked = true;
	//other.springen = false;
	//other.block = true;
	
} else {
	other.locked = false;
other.grv = 1.0;
//other.springen = true;
}

if(place_meeting(x, y-60, other)) {
other.locked = false;
other.grv = 1.0;
//other.springen = true;
}