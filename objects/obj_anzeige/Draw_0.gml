/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if (story == true){
	obj_Player.locked = true;
draw_set_color(c_white);
draw_text_transformed(x, y,string_copy(text, 0, zaehler/4),1,1,0);
zaehler++;
}
if(string_length(text) <= zaehler) {
//story = false;
//obj_Player.locked = false;
}
