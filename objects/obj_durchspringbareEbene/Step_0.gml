/// @description Insert description here
// You can write your code in this editor
if(obj_Player.y > y + 50) {
absetzbar = false	
}
else if (obj_Player.y < y - 50){
absetzbar = true	
}

/*if(place_meeting(x, y - 30, obj_Player) && absetzbar) {
	obj_Player.vspdsperre = true;
}*/