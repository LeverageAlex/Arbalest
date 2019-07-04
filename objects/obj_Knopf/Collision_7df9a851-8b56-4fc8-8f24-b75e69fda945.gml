/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(mouse_check_button_pressed(mb_left)) {
switch(knopfNr) {
case 1:
global.schaden += 0.2;
break;
case 2:
global.sprunghoehe += 0.10
break;
case 3:
global.laufgeschwindigkeit += 0.2
	
}
//show_debug_message("treffer");
image_index++;
alarm[0] = 8;
}