/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(keyboard_check_pressed(ord("E"))) {
	audio_play_sound(snd_keyboard_press, 10, false);
	status = status == false;
	if(!status) {
	obj_inventoryManager.status = false;

	audio_sound_gain(global.localsound, volume, 0)	
	
	
	}
	else {
		volume = global.volume;
	audio_sound_gain(global.localsound, volume / 2, 0)	

	}
}
if(status) {
	if(instance_exists(obj_inventoryManager)) {
	obj_inventoryManager.status = true;
	obj_inventoryManager.status2 = false;
	}
if(instance_exists(obj_optionsmenu)) {
	instance_destroy(obj_optionsmenu)
}
}
else {
	malen = true;
}