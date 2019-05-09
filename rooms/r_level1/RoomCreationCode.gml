global.number = 0;
global.schadenmodifikator = 0;
global.volume = 50;
global.localsound = audio_play_sound(snd_level_1, 5, true);
global.wase = true;
global.dialog_index = 2;
zeilenumbruch = 25;
global.dialog = ds_list_create();
ds_list_add(global.dialog, "Gegrüßt seist du, Holdes Hexenweib! Bitte fausten sie sich ins Knie! Goettes Goet Faust");
ds_list_add(global.dialog, "Planwirtschaft! ");
ds_list_add(global.dialog, "Einheit");

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