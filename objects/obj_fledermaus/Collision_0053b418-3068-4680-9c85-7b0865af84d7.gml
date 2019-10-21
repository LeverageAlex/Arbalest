/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(!richtungr) {
if(place_meeting(x + 14,y, obj_Player) && state) {
state = false;
//x -= 5;
direction = 0;
spieler_schaden(13);
alarm[0] = 20;


}
}
else {
	if(place_meeting(x - 14,y, obj_Player) && state) {
state = false;
//x -= 5;
direction = 180;
spieler_schaden(13);
alarm[0] = 20;
}
}

if(leben < 0) {
	global.xp += xp;
	//gegner_drop()
instance_destroy();	
}