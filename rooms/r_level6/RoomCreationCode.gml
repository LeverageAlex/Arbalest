global.localsound = audio_play_sound(snd_level_1, 5, true);
zeilenumbruch = 28;
global.toDo = 0;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Bist du der von dem sie erzählen er könne den Tod bezwingen?");
ds_list_add(global.dialog, "Wieso fragst du? Welches Leid hat dich heimgesucht?");
ds_list_add(global.dialog, "Meine Frau liegt im Sterben und sie wird es nicht mehr lange schaffen, ich kenne keinen Ausweg mehr");




room_init_dialog();