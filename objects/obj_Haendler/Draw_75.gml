/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(status) {
	draw_sprite(sp_inventar_halt, -1, guiHolderPosX - 20 ,guiHolderPosY - 75 - 16 - 300);	
	for(p = 0; p < 5; p++) {
		draw_sprite_stretched(global.itemDefinitions[inventar[p], ItemProperty.sprite], 0,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p) - 7,
	guiHolderPosY + guiHolderPadd - 146 - (66) - 2 - 162, 38, 38);	
	if(inventar[p] != ItemType.empty) {
		draw_text(	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p) - 7,
	guiHolderPosY + guiHolderPadd + 30 - 75 + 2 - 146 - 162, string(anzahl[p]));	
	}	
	}
	
if(mouse_check_button_pressed(2)) {
for(var n = 0; n < 5; n++) {
	
		if((device_mouse_x_to_gui( 0 ) > 806  + (n * 60) && device_mouse_x_to_gui( 0 ) < 849 + (n * 60)) && ((device_mouse_y_to_gui( 0 ) > 944 - 300 && device_mouse_y_to_gui( 0 ) < 989 - 300))) {
//show_message(array_find_pos(n));
if(inventar[n] != ItemType.empty && global.geld >= global.itemDefinitions[inventar[n], ItemProperty.value]) {
			global.geld -= global.itemDefinitions[inventar[n], ItemProperty.value];
			pos = n;
			anzahl[n] -= 1;
			inv_itemAdd(inventar[n]);
			if(anzahl[n] == 0) {
			inventar[n] = ItemType.empty;
			}
			//show_message("Gekauft! Schekler")
			zwischenspeicher = true;
}
	}
	
}
for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 806 + (n * 60) && device_mouse_x_to_gui( 0 ) < 849 + (n * 60)) && ((device_mouse_y_to_gui( 0 ) > 944 && device_mouse_y_to_gui( 0 ) < 989))) {
//show_message(array_find_pos(n));
			global.geld += global.itemDefinitions[global.inventory[n], ItemProperty.value];
			inv_RemoveItem(array_find_pos(n));
			
		
	}
}
}
}
if(!place_meeting(x, y, obj_Player) && status == true) {
status = false;	
obj_inventoryManager.status = false;
}