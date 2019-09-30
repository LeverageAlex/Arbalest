global.number = 0;
global.schadenmodifikator = 0.2;
global.volume = 50;
audio_stop_sound(global.localsound);
global.localsound = audio_play_sound(snd_level_1, 5, true);
zeilenumbruch = 28;
global.toDo = 0;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Gegrüßt seist du, Holdes Hexenweib! Bitte rammen sie sich ins Knie! Goettes Goet Faust Yahoo Michael Armen Kirche Drache");
ds_list_add(global.dialog, "Planwirtschaft! Lorem Ipsum Paul mag kot auf den Stuhl den der riecht so geil");
ds_list_add(global.dialog, "Einheit");

room_init_dialog();
