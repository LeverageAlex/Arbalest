/// @description Insert description here
// You can write your code in this editor
if(room != r_level6) {
	audio_stop_sound(global.localsound)
room_goto_next()
}
else {
	audio_stop_sound(global.localsound)
	room_goto(r_victoryscreen)	
}