global.number = 0;
global.schadenmodifikator = 1*global.basisschwierigkeit;
audio_stop_sound(global.localsound);
global.localsound = audio_play_sound(snd_level_1, 5, true);
global.wase = true;
spiel_speichern();



/*
global.number = 0;
global.schadenmodifikator = 0;
global.volume = 50;
global.localsound = audio_play_sound(snd_level_1, 5, true);
global.wase = true;
*/