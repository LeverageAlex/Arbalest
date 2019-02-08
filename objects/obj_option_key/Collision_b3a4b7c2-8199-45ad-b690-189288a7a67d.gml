/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(mouse_check_button_pressed(1)) {
/*	while (!keyboard_check_pressed(vk_anykey)) { 
		continue
		}
wert = keyboard_lastkey;*/
audio_play_sound(snd_klick, 10, false);
state = true;
}