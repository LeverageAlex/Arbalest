/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(keyboard_check_pressed(ord("E"))) {
	audio_play_sound(snd_keyboard_press, 10, false);
	status = status == false;
	if(!status) {
	obj_inventoryManager.status = false;

	audio_sound_gain(global.localsound, 0.5, 0)	
	
	}
	else {
	audio_sound_gain(global.localsound, 0.2, 0)	

	}
}
if(status) {
	obj_inventoryManager.status = true;
	obj_inventoryManager.status2 = false;
	
	
}