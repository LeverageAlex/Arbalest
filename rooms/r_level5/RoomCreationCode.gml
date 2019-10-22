global.number = 0;
global.schadenmodifikator = 1.6*global.basisschwierigkeit;
audio_stop_sound(global.localsound);
global.localsound = audio_play_sound(snd_level_1, 5, true);
global.wase = true;

spiel_speichern();
//room_init_dialog();