if(room_speed != 15) {
	room_speed = 15;
	with(obj_Player) {
		
		alarm[0] = 15*5;
	}
} else{
	
room_speed = 60;	
alarm[0] = 0;
}