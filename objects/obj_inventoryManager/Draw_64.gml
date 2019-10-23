/// @description Insert description here
// You can write your code in this editor

//draw_sprite(sp_inventar_voll, -1, guiHolderPosX - 20 ,0);

draw_set_font(font_level)
if(status) {
		draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,1920,1080, false);
	draw_set_alpha(1);
	draw_sprite(sp_inventarhalter_ganz, -1, guiHolderPosX - 20 ,guiHolderPosY - 279 - 102 - 16);
	for(var i = 1; i < 4; i++) {
		for(var p = 0; p < 5; p++) {
	itemDefIndex = global.inventory[p + (i*5)];
	if(itemDefIndex != ItemType.empty) {
	draw_sprite_stretched(global.itemDefinitions[itemDefIndex, ItemProperty.sprite], 0,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p) - 7,
	guiHolderPosY + guiHolderPadd - 182 - (3-i) * (99) - 2, 57, 57);	
	draw_set_color(c_blue);
		draw_text(	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p) - 7,
	guiHolderPosY + guiHolderPadd + 30 - 182 - (3-i) * (99) - 2, string(global.itemDefinitions[itemDefIndex, ItemProperty.amount]));	
	}
	}
}
}
else {
	draw_sprite(sp_inventar_halt, -1, guiHolderPosX - 20 ,guiHolderPosY - 75 - 16);	
}
if(keyboard_check_pressed(ord("I"))) {
/*	draw_sprite(sp_inventarhalter_ganz, -1, guiHolderPosX - 20 ,guiHolderPosY - 279- 16);
	
	for(var i = 1; i < 4; i++) {
		for(var p = 0; p < 5; p++) {
	itemDefIndex = global.inventory[p + (i*5)];
	if(itemDefIndex != ItemType.empty) {
	draw_sprite_stretched(global.itemDefinitions[itemDefIndex, ItemProperty.sprite], 0,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p) - 7,
	guiHolderPosY + guiHolderPadd - 146 - (3-i) * (66) - 2, 38, 38);	
	
		draw_text(	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p) - 7,
	guiHolderPosY + guiHolderPadd + 30 - 146 - (3-i) * (66) - 2, string(global.itemDefinitions[itemDefIndex, ItemProperty.amount]));	
	}
	}
}
	*/
	
	audio_play_sound(snd_keyboard_press, 10, false);

	status = status == false;
	status2 = status;
	
	if(status) {
	audio_sound_gain(global.localsound, 0.2, 0)	
	}
	else {
	audio_sound_gain(global.localsound, 0.5, 0)	
	}
	//zwischenspeicher = false;
}




for(var i = 0; i < MAX_ACTIVE_INV_ITEMS; i++) {
	itemDefIndex = global.inventory[i];
	if(itemDefIndex != ItemType.empty) {
	draw_sprite_stretched(global.itemDefinitions[itemDefIndex, ItemProperty.sprite], 0,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * i) - 7,
	guiHolderPosY + guiHolderPadd - 78 + 2, 57, 57);	
	//Keine Anzeige bei Schwert oder Bogen
	if(!(ItemType.schwert == itemDefIndex || ItemType.weapon == itemDefIndex)) {
			draw_set_color(c_blue);
		draw_text(	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * i) - 7,
	guiHolderPosY + guiHolderPadd + 30 - 75 + 2, string(global.itemDefinitions[itemDefIndex, ItemProperty.amount]));	
	}
	}
}



//Klicken
if(mouse_check_button_pressed(mb_left) && zwischenspeicher == false && status2) {
	
	//show_debug_message(device_mouse_x_to_gui( 0 ));
	//show_debug_message(device_mouse_y_to_gui( 0 ));
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 744 + (p * 84) && device_mouse_x_to_gui( 0 ) < 803 + (p * 84)) && ((device_mouse_y_to_gui( 0 ) > 623 + (i * 100) && device_mouse_y_to_gui( 0 ) < 680 + (i * 100)))) {

			//show_message(array_find_pos(5 + i*5 + p));
			pos = 5 + i*5 + p;
			item = array_find_pos(5 + i*5 + p);
			zwischenspeicher = true;
		}
		
		
	}
	}
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 744 + (n * 84) && device_mouse_x_to_gui( 0 ) < 803 + (n * 84)) && ((device_mouse_y_to_gui( 0 ) > 931 && device_mouse_y_to_gui( 0 ) < 988))) {
//show_message(array_find_pos(n));
			pos = n;
			item = array_find_pos(n);
			zwischenspeicher = true;
		
	}
	
	
} }

else if(mouse_check_button_pressed(mb_left) && zwischenspeicher == true && status2) {
	

	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 744 + (p * 84) && device_mouse_x_to_gui( 0 ) < 803 + (p * 84)) && ((device_mouse_y_to_gui( 0 ) > 623 + (i * 100) && device_mouse_y_to_gui( 0 ) < 680 + (i * 100)))) {

			pos2 = 5 + i*5 + p;
			item2 = array_find_pos(5 + i*5 + p);
			array_swappos(item, item2, pos, pos2);
			zwischenspeicher = false;
		}
		
		
	}
	}
	
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 744 + (n * 84) && device_mouse_x_to_gui( 0 ) < 803 + (n * 84)) && ((device_mouse_y_to_gui( 0 ) > 931 && device_mouse_y_to_gui( 0 ) < 988))) {
//show_message(array_find_pos(n));
			item2 = array_find_pos(n);
			pos2= n;
			array_swappos(item, item2, pos, pos2);
			zwischenspeicher = false;
		
	}
	}
	
	
}

if(zwischenspeicher) {
	draw_sprite_stretched(global.itemDefinitions[item, ItemProperty.sprite], 0, obj_cursor.x - 19, obj_cursor.y - 19, 38, 38);	
}



draw_sprite(sp_geldanzeige, 0, 1780, 4);
draw_set_font(font_level)
draw_set_color(c_gray)
draw_text(1830, 16, round(global.geld));





