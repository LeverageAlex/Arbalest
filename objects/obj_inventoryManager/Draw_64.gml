/// @description Insert description here
// You can write your code in this editor

//draw_sprite(sp_inventar_voll, -1, guiHolderPosX - 20 ,0);

if(status) {
		draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,1920,1080, false);
	draw_set_alpha(1);
	draw_sprite(sp_inventarhalter_ganz, -1, guiHolderPosX - 20 ,guiHolderPosY - 279- 16);
	
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
	status = status == false;
	status2 = status;
	//zwischenspeicher = false;
}




for(var i = 0; i < MAX_ACTIVE_INV_ITEMS; i++) {
	itemDefIndex = global.inventory[i];
	if(itemDefIndex != ItemType.empty) {
	draw_sprite_stretched(global.itemDefinitions[itemDefIndex, ItemProperty.sprite], 0,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * i) - 7,
	guiHolderPosY + guiHolderPadd - 78 + 2, 38, 38);	
	
		draw_text(	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * i) - 7,
	guiHolderPosY + guiHolderPadd + 30 - 75 + 2, string(global.itemDefinitions[itemDefIndex, ItemProperty.amount]));	
		
	}
}



//Klicken
if(mouse_check_button_pressed(mb_left) && zwischenspeicher == false && status2) {
	
	//show_debug_message(device_mouse_x_to_gui( 0 ));
	//show_debug_message(device_mouse_y_to_gui( 0 ));
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 806 + (p * 60) && device_mouse_x_to_gui( 0 ) < 849 + (p * 52)) && ((device_mouse_y_to_gui( 0 ) > 739 + (i * 60) && device_mouse_y_to_gui( 0 ) < 784 + (i * 60)))) {

			//show_message(array_find_pos(5 + i*5 + p));
			pos = 5 + i*5 + p;
			item = array_find_pos(5 + i*5 + p);
			zwischenspeicher = true;
		}
		
		
	}
	}
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 806 + (n * 60) && device_mouse_x_to_gui( 0 ) < 849 + (n * 60)) && ((device_mouse_y_to_gui( 0 ) > 944 && device_mouse_y_to_gui( 0 ) < 989))) {
//show_message(array_find_pos(n));
			pos = n;
			item = array_find_pos(n);
			zwischenspeicher = true;
		
	}
	
	
} }

else if(mouse_check_button_pressed(mb_left) && zwischenspeicher == true && status2) {
	
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 806 + (p * 60) && device_mouse_x_to_gui( 0 ) < 849 + (p * 60)) && ((device_mouse_y_to_gui( 0 ) > 739 + (i * 60) && device_mouse_y_to_gui( 0 ) < 784 + (i * 60)))) {

			pos2 = 5 + i*5 + p;
			item2 = array_find_pos(5 + i*5 + p);
			array_swappos(item, item2, pos, pos2);
			zwischenspeicher = false;
		}
		
		
	}
	}
	
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 806 + (n * 60) && device_mouse_x_to_gui( 0 ) < 849 + (n * 60)) && ((device_mouse_y_to_gui( 0 ) > 944 && device_mouse_y_to_gui( 0 ) < 989))) {
//show_message(array_find_pos(n));
			item2 = array_find_pos(n);
			pos2= n;
			array_swappos(item, item2, pos, pos2);
			zwischenspeicher = false;
		
	}
	}
	
	
}
