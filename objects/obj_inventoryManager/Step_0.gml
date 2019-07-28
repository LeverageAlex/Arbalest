/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

for(var i = 1; i <= MAX_ACTIVE_INV_ITEMS; i++) {
	if(keyboard_check_pressed(ord(string(i)))) {
	//	audio_play_sound(snd_keyboard_press, 10, false);
		var _itemType = global.inventory[i - 1];
		inv_UseItem(_itemType);
	}
	
}
if(status) {
	obj_Player.freeze = true;
}
else {
	obj_Player.freeze = false;
}