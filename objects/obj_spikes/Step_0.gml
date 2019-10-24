/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
/*if(aktiv) {
	if(hoch && image_index == 6) {
image_speed = 0;	
aktiv = false;
alarm[1] = 40;

	}
else if (!hoch && image_index == 0){
image_speed = 0;
aktiv = false;
alarm[0] = 80;
}	
}*/
if(!aktiv) {
	
if(hoch && image_index == 6) {
	aktiv = true;
	//show_message("oben" + string(aktiv))
	hoch = false;
	alarm[0] = 60;
	
} else if (!hoch && image_index == 0){
	hoch = true;
	aktiv = true;
	//show_message("unten" + string(aktiv))
		//show_message("fail")
	alarm[0] = 60;
	
}
else if(hoch && zaehler == animSpeed) {
	image_index++;
	//show_message("fail")
}
else if(!hoch && zaehler == animSpeed){
	image_index--;
	

	
}
zaehler++;
if(zaehler == animSpeed+1) {
zaehler = 0;	
}
}