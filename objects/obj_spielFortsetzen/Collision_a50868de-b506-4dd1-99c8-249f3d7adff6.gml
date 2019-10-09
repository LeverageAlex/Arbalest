/// @description Insert description here
// You can write your code in this editor
if(room == r_gameover && mouse_check_button(1)) {
	audio_stop_sound(global.localsound);
audio_play_sound(snd_holz_hit, 10, false);
spiel_laden();	

}