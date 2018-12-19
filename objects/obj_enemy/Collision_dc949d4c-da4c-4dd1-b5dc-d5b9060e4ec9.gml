/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
spieler_schaden(25);

if(obj_Player.x  -4< x && obj_Player.x +25 > x ) {
	obj_Player.x -= 5;
	obj_Player.locked = true;

/*} else if(obj_Player.x + 15 > x +20 && obj_Player.x  - 15< x + 20){
	obj_Player.x += 5;
	obj_Player.locked = true;*/
} else if(obj_Player.y > y - 250) {
	
obj_Player.vspd = -13;
obj_Player.block = true;
//alarm[1] = 30;
}

obj_Player.locked = true;
alarm[0] = 30;