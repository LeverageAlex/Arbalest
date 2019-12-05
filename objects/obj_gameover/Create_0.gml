/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
//orgFont = 	font_
alarm[0] = 60*6;
audio_stop_sound(global.localsound);
global.localsound = audio_play_sound(snd_gameover, 5, false);