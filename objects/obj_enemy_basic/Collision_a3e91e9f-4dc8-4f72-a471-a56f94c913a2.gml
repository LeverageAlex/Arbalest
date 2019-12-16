/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
spieler_schaden(5 + 8*global.schadenmodifikator);

if(y + 10 > obj_Player.y) {
	obj_Player.vspd = -13;
	obj_Player.block = true;
} else if(x + 10< obj_Player.x) {
obj_Player.x += 20;

}
else {

obj_Player.x -= 20;


}
obj_Player.locked = true;

alarm[0] = 30;