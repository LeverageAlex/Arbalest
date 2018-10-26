/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


if(place_meeting(x - 60, obj_Player.y, obj_Player)){
	obj_Player.x -= 5;
	
//}
//else if(place_meeting(x + 60, obj_Player.y, obj_Player)) {
//	obj_Player.x += 20;
} else {
	obj_Player.x += 5;
}
if(obj_Player.locked == false) {
health -= 30;
}
obj_Player.locked = true;
alarm[0] = room_speed;
