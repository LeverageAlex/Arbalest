/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(state) {
/*if(((obj_Player.x > x + 100 && obj_Player.x < x - 200) || (obj_Player.x < x + 400 && obj_Player.x > x + 30 ))&& obj_Player.y > y - 205 && obj_Player.y < y + 240) {
		//sprite_index = sp_Skelett_laufen;
		speed = 1.5;
		image_speed = 6;	
		image_angle = 0;
		image_yscale = 1;
		direction = image_angle;
} else */if(obj_Player.x < x - 47 && obj_Player.x > x - 200 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
	speed = 1.5;
	direction = 180;
	//sprite_index  = sp_Skelett_laufen;
	//image_yscale = -1;
	//image_angle = 180;
	
}
else {
speed = 0;	
}
}
else {
	speed = 1.5;
		//image_angle = 0;
	direction = 0;
	//sprite_index  = sp_Skelett_laufen;
	//image_yscale = 1;

}