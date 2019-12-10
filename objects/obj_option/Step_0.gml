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
global.klettern = klettern.wert;
global.links =	links.wert;
global.rechts = rechts.wert;
//global.ducken = ducken.wert;
global.springen = springen.wert;
global.skillbaum = skillbaum.wert;
with(obj_option) {
if(radiobutton1.checked && aktuellerRbtn != 0) {
	aktuellerRbtn = 0;
	radiobutton2.checked = false;
	radiobutton3.checked = false;
	global.basisschwierigkeit = 0.7;
}
else if(radiobutton2.checked && aktuellerRbtn != 1){
		aktuellerRbtn = 1;
		radiobutton1.checked = false;
		radiobutton3.checked = false;
		global.basisschwierigkeit = 1;
}

else if(radiobutton3.checked && aktuellerRbtn != 2){
	aktuellerRbtn = 2;
	radiobutton1.checked = false;
	radiobutton2.checked = false;
	global.basisschwierigkeit = 2;
}
}