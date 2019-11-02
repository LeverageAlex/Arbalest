if((obj_Player.x - 130< x && obj_Player.x + 7 > x)  && obj_Player.y - 50 - 128*(a)< y && obj_Player.y + 15 /* + 64*(anzahl-1)*/> y) {

if(obj_Player.locked == false) {
	/*if(obj_Player.ruestung - 20 < 0) { 
		obj_Player.ruestung -= 20;
		health += obj_Player.ruestung;
	obj_Player.ruestung = 0;
	}
	else {
	obj_Player.ruestung -= 20;	
	}*/
	spieler_schaden(20);
}

if(obj_Player.x  -10< x && obj_Player.x +10 > x) {
	obj_Player.x -= 5;
	obj_Player.locked = true;

} else if(obj_Player.x + 15 > x +112 && obj_Player.x  - 15< x + 112){
	obj_Player.x += 5;
	obj_Player.locked = true;
} else if(obj_Player.y > y - 250) {
	
obj_Player.vspd = -13;
obj_Player.block = true;
alarm[1] = 30;
}


alarm[0] = room_speed;
}
/*for(i = 0; i < a; i++) {
if(place_meeting(x, y + 128*i, obj_bullet)) {
	with(obj_bullet) {
		instance_destroy();
	}
}
}*/

//obj_fall
//if((obj_fall.x - 130 < x && obj_fall.x + 130 > x)  /*&& /*obj_fall.y - 50 - 128*(a)< y && obj_fall.y + 15 /* + 64*(anzahl-1)*//*> y*/) {




