/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(1)) {
	settings_speichern()
	audio_stop_sound(global.localsound);
room_goto(r_init);	
	
}