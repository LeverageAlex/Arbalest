/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
dialog_aktiv = false;
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
room_init_dialog();
dialog = instance_create_layer(1, 1, "Vorne", obj_dialog);
dialog.dialogpartner = sp_koenig; 