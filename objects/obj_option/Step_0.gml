/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(fullscreen.haken == true && !stateFull) {
	stateFull = true;
	window_set_fullscreen(true)
}
else if(fullscreen.haken == false && stateFull) {
	stateFull = false;
	window_set_fullscreen(false);
}
