/// @description Insert description here
// You can write your code in this editor


draw_sprite(sp_inventar_halter, -1, guiHolderPosX ,0);

for(var i = 0; i < MAX_ACTIVE_INV_ITEMS; i++) {
	itemDefIndex = inventory[i];
	if(itemDefIndex != noone) {
	draw_sprite(itemDefinitions[itemDefIndex, ItemProperty.sprite], -1,
	(guiHolderPosX + guiHolderPadd) + (guiHolderSlotOffset * i),
	guiHolderPosY + guiHolderPadd);	
		
	}
}