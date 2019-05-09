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
for(i = global.dialog_index; i >= 0; i--) {
	
if(string_length(ds_list_find_value(global.dialog, i)) > zeilenumbruch) {	
		
		locid = global.dialog;
		text = ds_list_find_value(global.dialog, i);
		laenge = string_length(text)
		anzahl = floor(laenge / zeilenumbruch);
		show_debug_message(anzahl)
		for(z = zeilenumbruch; z > 0; z--) {
			
			if(string_char_at(text, z) == " ") {
				show_debug_message(string_insert("\n", text, z))
			ds_list_set(locid, i, string_insert("\n", text, z))	
			break;
			}
		}


	}
}