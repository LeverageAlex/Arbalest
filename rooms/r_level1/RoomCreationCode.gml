global.localsound = audio_play_sound(snd_level_1, 5, true);
zeilenumbruch = 28;
global.toDo = 0;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Bist du der von dem sie erzählen er könne den Tod bezwingen?");
ds_list_add(global.dialog, "Wieso fragst du? Welches Leid hat dich heimgesucht?");
ds_list_add(global.dialog, "Meine Frau liegt im Sterben und sie wird es nicht mehr lange schaffen, ich kenne keinen Ausweg mehr");
ds_list_add(global.dialog, "Wie hast du mich gefunden?");
ds_list_add(global.dialog, "Ich wollte meinen Frust in einer Kneipe wegtrinken, wollte mich in eine ähnliche Situation bringen wie meine Frau, dort erzählte ich mein Leid einem Fremden der mir von dir erzählte, er sagte du wärst in der Lage den Tod zu heilen");
ds_list_add(global.dialog, "Niemand ist in der Lage den Tod zu heilen, ich kann ihn bestenfalls herauszögern. Und auch das ist eine sehr schwere Aufgabe für die ich zu alt bin.");
ds_list_add(global.dialog, "Auch wenn du ihn nur herauszögern kannst, jede Sekunde mit meiner Frau ist alles für mich");
ds_list_add(global.dialog, "Wie ich sagte, ich bin zu alt und schwach, für den Zauber benötige ich Materialien die nur an den gefährlichsten Orten der Stadt...");
ds_list_add(global.dialog, "Dann schick mich. Ich werde alles für dich holen, du musst mir nur sagen was du brauchst");
ds_list_add(global.dialog, "Bist du dir im klarren darüber welche Gefahr da auf dich wartet?");
ds_list_add(global.dialog, "Das ist mir egal, jede Gefahr die ich für meine Frau auf mich nehme ist alles Risiko wert.");
ds_list_add(global.dialog, "nun dann, ich werde dir helfen. Das erste was du brauchst ist das Juwel des Königs. Er stahl es mir vor Jahren und es ist die die Quelle für die stärkste Magie auf dieser Seite der schwarzen Berge. Du kannst über die Kanalisation in das Schloss kommen. Wenn du es hast, komm hier her zurück und ich gebe dir die nächste Aufgabe");
ds_list_add(global.dialog, "Nun dann, auf Wiedersehen");
ds_list_add(global.dialog, "Ich werde dich erwarten");



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