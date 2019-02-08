/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(keyboard_check_pressed(ord("E"))) {
	audio_play_sound(snd_keyboard_press, 10, false);
	status = status == false;
	if(!status) {
	obj_inventoryManager.status = false;
	}
}
if(status) {
	obj_inventoryManager.status = true;
	obj_inventoryManager.status2 = false;
	
	
}