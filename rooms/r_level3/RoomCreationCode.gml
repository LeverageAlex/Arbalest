audio_stop_sound(global.localsound);
global.localsound = audio_play_sound(snd_level_1, 5, true);
global.schadenmodifikator = 0.8*global.basisschwierigkeit;
zeilenumbruch = 28;
global.toDo = 0;
global.dialog = ds_list_create();
global.dialog_index = 10

ds_list_add(global.dialog, "Nun (custom Name) du bist endlich angekommen, ich habe dich schon erwartet!");
ds_list_add(global.dialog, "Wie, woher weißt du wer ich bin?!");
ds_list_add(global.dialog, "Ich weiß alles da ich der allwissende Schreck bin!");
ds_list_add(global.dialog, "Aber dann weißt du ja auch warum ich dich gesucht habe.");
ds_list_add(global.dialog, "Natürlich, deine Frau liegt im Sterben und du brauchst nun den Amber Bamber trank um ihr Leben zu retten! Jedoch brauche ich dafür ein paar besondere Zutaten um ihn dir zu brauen!");
ds_list_add(global.dialog, "Ok, ok sag mir nur was ich dir bringen muss!");
ds_list_add(global.dialog, "Ich brauche 3 Magische Relikte, zum einen das Juwel vom König um das magische Feuer zu machen. Dazu kommt noch der magische Bambus von dem Pilzkopf und zu guter Letzt ein paar magische Trüffel! Nun begib dich zuerst in den Bambus Wald um dir den magischen Bambus zu holen!");
ds_list_add(global.dialog, "Ok das schaff ich schon!");
ds_list_add(global.dialog, "Hinfort mit dir!");


room_init_dialog();
spiel_speichern();
global.zusatzpartner = true;