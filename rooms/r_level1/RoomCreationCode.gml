global.localsound = audio_play_sound(snd_level_1, 5, true);
global.schadenmodifikator = 0.3*global.basisschwierigkeit;
zeilenumbruch = 27;
global.toDo = 0;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Bist du der von dem sie erzählen er könne den Tod bezwingen?");
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



spiel_speichern();
room_init_dialog();



/*for(i = global.dialog_index; i >= 0; i--) {
	
if(string_length(ds_list_find_value(global.dialog, i)) > zeilenumbruch) {	
		
		locid = global.dialog;
		text = ds_list_find_value(global.dialog, i);
		laenge = string_length(text)
		for(z = zeilenumbruch; z > 0; z--) {
			
			if(string_char_at(text, z) == " ") {
				show_debug_message(string_insert("\n", text, z))
			ds_list_set(locid, i, string_insert("\n", text, z))	
			break;
			}
		}


	}
}*/