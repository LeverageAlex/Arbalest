if((obj_Player.x - 68< x && obj_Player.x + 7 > x)  && obj_Player.y - 50< y && obj_Player.y + 15> y) {
if(obj_Player.locked == false) {
health -= 30;
}
//if(place_meeting(x - 60, obj_Player.y, obj_Player)){
if(obj_Player.x  -20< x && obj_Player.x +10 > x) {
	obj_Player.x -= 5;
	obj_Player.locked = true;
//}
//else if(place_meeting(x + 60, obj_Player.y, obj_Player)) {
//	obj_Player.x += 20;
} else if(obj_Player.x + 10 > x +56 && obj_Player.x  - 10< x + 56){
	obj_Player.x += 5;
	obj_Player.locked = true;
} else if(obj_Player.y > y - 250) {
	
obj_Player.vspd = -20;
obj_Player.block = true;
alarm[1] = room_speed;
//obj_Player.hspd = 200;
//obj_Player.move = +300;
}


alarm[0] = room_speed;
}