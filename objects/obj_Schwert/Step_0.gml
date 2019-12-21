/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(obj_Player.ungesperrt) {
if(status && mouse_check_button_pressed(1)) {
	if(sound) {
	audio_play_sound(snd_schwert_schlag, 10, false);
	sound = false;
	}
	else {
	audio_play_sound(snd_schwert_schlag2, 10, false);
	sound = true;
	}
	if(mouse_x > obj_Player.x) {
		obj_Player.sprite_index = sp_player_attack_rechts;
		obj_Player.image_xscale = 1;
		obj_Player.image_speed = 3;
		animation = true;
		instance_create_layer(obj_Player.x + 35, obj_Player.y, "Instances", obj_hitbox);
	}
 else {
	obj_Player.sprite_index = sp_player_attack_rechts;
	obj_Player.image_speed = 3;
	obj_Player.image_xscale = -1;
	animation = true;
	instance_create_layer(obj_Player.x - 35, obj_Player.y, "Instances", obj_hitbox);
 }
	
	
	
	
	
}
if(animation) {
	if(obj_Player.image_index >= 5) {
	animation = false;
	obj_Player.speed = 0;
	obj_Player.idle = true;
	//obj_Player.sprite_index = sp_bewegung_rechts;
	
	}
	
}
}