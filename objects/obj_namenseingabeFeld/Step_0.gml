/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_anykey)) {
audio_play_sound(snd_keyboard_press, 10, false);
if(keyboard_check_pressed(vk_backspace))
{
	text = string_copy(text, 1, string_length(text)-1);
}
else if(keyboard_key == vk_enter) {
	//Weiter
	if(string_length(text) > 0) {
	global.spielername = text;
	reader = ini_open("saves.ini");
		ini_write_string("Settings", "Spielername", global.spielername);
		ini_close();
	room_goto_next();	
	}
}else if(keyboard_key == vk_space) {
	
}
else if(string_width(text) < limit){
text += chr(keyboard_key);
}
}