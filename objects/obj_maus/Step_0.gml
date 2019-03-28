/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(begraben) {
if(obj_Player.x < x && obj_Player.x + 200 > x) {
auftauchen = true;	
	
}



}
else if(!begraben) {
if(obj_Player.x < x) {
direction = 180;
image_xscale = 1;

}
else {
direction = 0;	
	image_xscale = -1;
}

}