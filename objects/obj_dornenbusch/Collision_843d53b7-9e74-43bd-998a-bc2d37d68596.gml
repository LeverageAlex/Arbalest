if(obj_Player.locked == false) {
health -= 30;
}
if(place_meeting(x - 60, obj_Player.y, obj_Player)){
	obj_Player.x -= 5;
	obj_Player.locked = true;
//}
//else if(place_meeting(x + 60, obj_Player.y, obj_Player)) {
//	obj_Player.x += 20;
} else{
	obj_Player.x += 5;
	obj_Player.locked = false;
} 
	
