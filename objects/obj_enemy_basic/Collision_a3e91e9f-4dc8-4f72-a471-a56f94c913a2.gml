/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
spieler_schaden(25);

if(y + 10 > obj_Player.y) {
	obj_Player.vspd = -13;
} else if(x + 10< obj_Player.x) {
obj_Player.x += 20;

}
else {

obj_Player.x -= 20;


}
obj_Player.locked = true;
alarm[0] = room_speed;