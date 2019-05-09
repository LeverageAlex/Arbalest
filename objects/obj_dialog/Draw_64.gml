/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
draw_set_color(c_black);
draw_rectangle(0, 0, 1920, 1080, false);
draw_sprite(sp_magier, 0, 1500, 400);
draw_sprite(sp_player_attack_rechts, 0, 100, 600)
instance_destroy(obj_inventoryManager);

draw_set_color(c_white);
global.dialog_index = 2;
dialogseiteP = false;
if(global.dialog_index % 2 == 0) {
	dialogseiteP = true;
}


for(i = global.dialog_index; i >= 0; i--) {
	/*if(string_length(ds_list_find_value(global.dialog_index -1, i)) > 10) {
		for(z = 0; z < string_length(ds_list_find_value(global.dialog_index - 1, i)); z++) {
			if(string_char_at(ds_list_find_value(global.dialog_index-1, i), z) == " ") {
				/*ds_list_find_index(global.dialog_index, i), z)*/
		/*ds_list_set(global.dialog, i , string_insert("\n", ds_list_find_value(global.dialog_index-1, i), z));
			}
		
		}
	}*/
	
	
	
	
	
	
	
	
text = ds_list_find_value(global.dialog, i);
if(dialogseiteP) {
	offset = -300;
draw_sprite(sp_sprechblase, 0, 595 + offset,  510 - (190*(global.dialog_index-i)))

}
else {
	offset = 300;
draw_sprite_ext( sp_sprechblase, 0, 700 + 520 + offset, 510 - (190*(global.dialog_index-i)), -1, 1, 0, -1, 1);	

}

draw_text(960 - 240/*(string_length(text)*9)*/ + offset, 540 - (190*(global.dialog_index-i)), text);
dialogseiteP = dialogseiteP == false;
}

