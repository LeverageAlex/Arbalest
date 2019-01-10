/// @description Insert description here
// You can write your code in this editor

//draw_sprite(sp_inventar_voll, -1, guiHolderPosX - 20 ,0);


if(keyboard_check_direct(ord("I"))) {
	show_message("Keker");
	draw_sprite(sp_inventar_voll, -1, guiHolderPosX - 20 ,window_get_height() - 245);
	
	for(var i = 1; i < 4; i++) {
		for(var p = 0; p < 5; p++) {
	itemDefIndex = global.inventory[p + (i*5)];
	if(itemDefIndex != ItemType.empty) {
	draw_sprite_stretched(global.itemDefinitions[itemDefIndex, ItemProperty.sprite], 0,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p),
	guiHolderPosY + guiHolderPadd + window_get_height() - 146 - (3-i) * (50), 38, 38);	
	
		draw_text(	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * p),
	guiHolderPosY + guiHolderPadd + 30 + window_get_height() - 146 - (3-i) * (50), string(global.itemDefinitions[itemDefIndex, ItemProperty.amount]));	
	}
	}
}
	
}
else {
	draw_sprite(sp_inventar_halter, -1, guiHolderPosX - 20 ,window_get_height() - 75);
}

for(var i = 0; i < MAX_ACTIVE_INV_ITEMS; i++) {
	itemDefIndex = global.inventory[i];
	if(itemDefIndex != ItemType.empty) {
	draw_sprite_stretched(global.itemDefinitions[itemDefIndex, ItemProperty.sprite], 0,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * i),
	guiHolderPosY + guiHolderPadd + window_get_height() - 78, 38, 38);	
	
		draw_text(	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * i),
	guiHolderPosY + guiHolderPadd + 30 + window_get_height() - 75, string(global.itemDefinitions[itemDefIndex, ItemProperty.amount]));	
		
	}
}