
zeilenumbruch = 27;
global.toDo = 0;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Ich bin mit all den Zutaten zurückgekehrt!");
ds_list_add(global.dialog, "Wunderbar! Gib her!");
ds_list_add(global.dialog, "Hier bitte.");
ds_list_add(global.dialog, "Ich werde nun den Trank brauen.");
ds_list_add(global.dialog, "Wird meine Frau dann auch ganz bestimmt gerettet werden können?");
ds_list_add(global.dialog, "Sicherlich ");
ds_list_add(global.dialog, "Bist du schon fertig mit der Herstellung des Trankes?");
ds_list_add(global.dialog, "Ja das bin ich! Aber er wird deine Frau nicht retten!");
ds_list_add(global.dialog, "Was?!");
ds_list_add(global.dialog, "Der Trank verstärkt nur noch weiter meine immensen Fähigkeiten! Hahahaha!");
ds_list_add(global.dialog, "Oh nein! Dafür wirst du bezahlen! Stirb!");
/*ds_list_add(global.dialog, "Bist du der von dem sie erzählen er könne den Tod bezwingen?");
ds_list_add(global.dialog, "Nun " + global.spielername + " du bist endlich angekommen, ich habe dich schon erwartet!?");
ds_list_add(global.dialog, "Wie, woher weißt du wer ich bin?!");
ds_list_add(global.dialog, "Ich weiß alles da ich der allwissende Schreck bin!");
ds_list_add(global.dialog, "Aber dann weißt du ja auch warum ich dich gesucht habe.");
ds_list_add(global.dialog, "Natürlich, deine Frau liegt im Sterben und du brauchst nun den Amber Bamber trank um ihr Leben zu retten! Jedoch brauche ich dafür ein paar besondere Zutaten um ihn dir zu brauen!");
ds_list_add(global.dialog, "Ok, ok sag mir nur was ich dir bringen muss!");
ds_list_add(global.dialog, "Ich brauche 3 Magische Relikte, zum einen das Juwel vom König um das magische Feuer zu machen. Dazu kommt noch der magische Bambus von dem Pilzkopf und zu guter Letzt ein paar magische Trüffel!");
ds_list_add(global.dialog, "Verstehe, aber wo finde ich diese?")
ds_list_add(global.dialog,  "Nun begib dich zuerst in den Bambus Wald um dir den magischen Bambus zu holen!")
ds_list_add(global.dialog, "Ok das schaff ich schon!");
ds_list_add(global.dialog, "Hinfort mit dir!");
*/
global.dialog_index = 0;
spiel_speichern();
room_init_dialog();
