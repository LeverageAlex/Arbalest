/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(status && mouse_check_button_pressed(1)) {
	if(obj_Player.weapon_right == true) {
		obj_Player.sprite_index = sp_player_attack_rechts;
		obj_Player.image_speed = 5;
		animation = true;
	}
 else {
	obj_Player.sprite_index = sp_player_attack_links;
	obj_Player.image_speed = 5;
	animation = true;
 }
	
	
	
	
	
}
if(animation) {
	if(obj_Player.image_index == 17) {
	animation = false;
	
	
	}
	
}