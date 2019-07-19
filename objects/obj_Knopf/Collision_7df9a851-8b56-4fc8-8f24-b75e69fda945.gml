/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(mouse_check_button_pressed(mb_left)) {
	
 if(anzahlVerbrauchterSkillpunkte < global.level) {
switch(knopfNr) {
case 1:
if((global.schaden -1) / obj_Knopf.schaden < 4) {
global.schaden += obj_Knopf.schaden;
}
break;
case 2:
if((global.sprunghoehe - 1) / obj_Knopf.sprunghoehe < 4) {
global.sprunghoehe += obj_Knopf.sprunghoehe;
}
break;
case 3:
if((global.laufgeschwindigkeit -1) / obj_Knopf.laufspeed < 4) {
global.laufgeschwindigkeit += obj_Knopf.laufspeed
}
	
}
//show_debug_message("treffer");
image_index++;
alarm[0] = 8;
}
}