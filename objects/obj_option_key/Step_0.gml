/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(state) {
if(keyboard_check_pressed(vk_anykey)) {
audio_play_sound(snd_keyboard_press, 10, false);
wert = keyboard_key;	
	state = false;
}
}