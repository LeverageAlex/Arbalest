/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

richtungr = (((obj_Player.x > x + 100 && obj_Player.x < x - 200) || (obj_Player.x < x + 400 && obj_Player.x > x + 30 ))&& obj_Player.y > y - 205 && obj_Player.y < y + 240);

if(state) {
if(richtungr) {
		//sprite_index = sp_Skelett_laufen;
		speed = 4;
		//image_speed = 6;	
		//image_angle = 0;
		//image_yscale = 1;
		direction = 0;
} else if(obj_Player.x < x - 7 && obj_Player.x > x - 700 && obj_Player.y > y - 205 && obj_Player.y < y + 240) {
	speed = 4;
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
	speed = 4;
		//image_angle = 0;
	
	//sprite_index  = sp_Skelett_laufen;
	//image_yscale = 1;

}