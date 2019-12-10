/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/*global.klettern = ord("W");
global.links = ord("A");
global.rechts = ord("D");
global.ducken = ord("S");
global.springen = vk_space;*/
fullscreen = instance_create_layer(576, 352, "Vorne", obj_checkbox);
stateFull = window_get_fullscreen();
with(fullscreen) {
text = "Vollbild";	
haken = other.stateFull;
}
klettern = instance_create_layer(1064, 352, "Vorne", obj_option_key);
with(klettern) {
	wert = global.klettern;
	beschreibung = "klettern:";
	
}
links = instance_create_layer(1064, 452, "Vorne", obj_option_key);
with(links) {
	wert = global.links;
	beschreibung = "links:";
}
rechts = instance_create_layer(1064, 552, "Vorne", obj_option_key);
with(rechts) {
	wert = global.rechts;
	beschreibung = "rechts:";
}
/*ducken = instance_create_layer(1064, 652, "Vorne", obj_option_key);
with(ducken) {
	wert = global.ducken;
	beschreibung = "ducken:";
}*/
springen = instance_create_layer(1064, 652, "Vorne", obj_option_key);
with(springen) {
	wert = global.springen;
	beschreibung = "springen:";
}
skillbaum = instance_create_layer(1064, 752, "Vorne", obj_option_key);
with(skillbaum) {
	wert = global.skillbaum;
	beschreibung = "Skillbaum:";
}


xRadioButtonmenu = 1354;
yRadioButtonmenu = 400;

radiobutton1 = instance_create_layer(xRadioButtonmenu, yRadioButtonmenu, "Vorne", obj_radiobutton);
radiobutton2 = instance_create_layer(xRadioButtonmenu, yRadioButtonmenu + 60, "Vorne", obj_radiobutton);
radiobutton3 = instance_create_layer(xRadioButtonmenu, yRadioButtonmenu + 120, "Vorne", obj_radiobutton);


radiobutton1.text = "Einfach";
radiobutton2.text = "Mittel";
radiobutton3.text = "Schwierig";
aktuellerRbtn = 1;
switch(global.basisschwierigkeit) {
case 0.7: aktuellerRbtn = 0; radiobutton1.checked = true;
break;
case 1: aktuellerRbtn = 1; radiobutton2.checked = true;
break;
case 2: aktuellerRbtn = 2; radiobutton3.checked = true;
break;
}
