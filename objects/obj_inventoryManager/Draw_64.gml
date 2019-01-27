/// @description Insert description here
// You can write your code in this editor

//draw_sprite(sp_inventar_voll, -1, guiHolderPosX - 20 ,0);


if(keyboard_check_direct(ord("I"))) {
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