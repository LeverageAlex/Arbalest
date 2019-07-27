global.number = 0;
global.schadenmodifikator = 0.6;
global.localsound = audio_play_sound(snd_level_1, 5, true);
global.wase = true;
global.dialog_index = 0;
zeilenumbruch = 28;
global.toDo = 0;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Gegrüßt seist du, Holdes Hexenweib! Bitte rammen sie sich ins Knie! Goettes Goet Faust Yahoo Michael Armen Kirche Drache");
ds_list_add(global.dialog, "Planwirtschaft! Lorem Ipsum Paul mag kot auf den Stuhl den der riecht so geil");
ds_list_add(global.dialog, "Einheit");

room_init_dialog();