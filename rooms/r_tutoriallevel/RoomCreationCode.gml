global.number = 0;
global.schadenmodifikator = -0.2*global.basisschwierigkeit;
//global.volume = 50;
global.localsound = audio_play_sound(snd_level_1, 5, true);
zeilenumbruch = 28;
global.toDo = 0;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Jetzt geht's los! ");
room_init_dialog()
spiel_speichern();