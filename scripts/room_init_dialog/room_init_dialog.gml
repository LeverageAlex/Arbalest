/*for(i = global.dialog_index; i >= 0; i--) {
	
if(string_length(ds_list_find_value(global.dialog, i)) > zeilenumbruch) {	
		
		locid = global.dialog;
		text = ds_list_find_value(global.dialog, i);
		laenge = string_length(text)
		anzahl = floor(laenge / zeilenumbruch);
		for(p = 0; p < anzahl; p++) {
		for(z = zeilenumbruch*(p); z > zeilenumbruch*(p-1); z--) {
			
			if(string_char_at(text, z) == " ") {
				//show_debug_message(string_insert("\n", text, z))
			ds_list_set(locid, i, string_insert("\n", text, z))	
			break;
			}
		}

		}
	}
}*/
for(i = ds_list_size(global.dialog)-1; i >= 0; i--) {
	
if(string_length(ds_list_find_value(global.dialog, i)) > zeilenumbruch) {	
		
		locid = global.dialog;
		text = ds_list_find_value(global.dialog, i);
		laenge = string_length(text)
		anzahl = floor(laenge / zeilenumbruch);
		show_debug_message(anzahl)
		for(k = 1; k < anzahl+1; k++) {
			text = ds_list_find_value(global.dialog, i);
		for(z = zeilenumbruch*k; z > zeilenumbruch*(k-1); z--) {
			
			if(string_char_at(text, z) == " ") {
				//show_debug_message(string_insert("\n", text, z))
			ds_list_set(locid, i, string_insert("\n", text, z))	
			break;
			}
		}

		}
	}
}
global.zusatzpartner = false;
global.roomIndex = room;
//spiel_speichern();

//global.schaden = 1;
//global.sprunghoehe = 1;
//global.laufgeschwindigkeit = 1;