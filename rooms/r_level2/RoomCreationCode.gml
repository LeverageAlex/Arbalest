
global.schadenmodifikator = 0.6*global.basisschwierigkeit;
audio_stop_sound(global.localsound);
global.localsound = audio_play_sound(snd_level_1, 5, true);

spiel_speichern();