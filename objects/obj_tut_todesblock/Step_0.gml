if((obj_Player.x - 68< x && obj_Player.x + 7 > x)  && obj_Player.y - 50 - 64*(anzahl -1)< y && obj_Player.y + 15 /* + 64*(anzahl-1)*/> y) {
if(obj_Player.locked == false) {
health -= 30;
}

if(obj_Player.x  -10< x && obj_Player.x +10 > x) {
	obj_Player.x -= 5;
	obj_Player.locked = true;

} else if(obj_Player.x + 15 > x +56 && obj_Player.x  - 15< x + 56){
	obj_Player.x += 5;
	obj_Player.locked = true;
} else if(obj_Player.y > y - 250) {
	
obj_Player.vspd = -10;
obj_Player.block = true;
alarm[1] = 30;
}


alarm[0] = room_speed;
}