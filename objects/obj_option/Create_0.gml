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
ducken = instance_create_layer(1064, 652, "Vorne", obj_option_key);
with(ducken) {
	wert = global.ducken;
	beschreibung = "ducken:";
}
springen = instance_create_layer(1064, 752, "Vorne", obj_option_key);
with(springen) {
	wert = global.springen;
	beschreibung = "springen:";
}
skillbaum = instance_create_layer(1064, 852, "Vorne", obj_option_key);
with(skillbaum) {
	wert = global.skillbaum;
	beschreibung = "Skillbaum:";
}
