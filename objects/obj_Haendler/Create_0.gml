/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
guiHolderWidth = sprite_get_width(sp_inventar_halt);
guiHolderPosX = (view_get_wport(0) /2) - (guiHolderWidth / 2);
guiHolderPadd = 0;
guiHolderPosY = view_get_hport(0) - sprite_get_height(sp_inventar_halt) + 16;
guiHolderSlotOffset = 56 + guiHolderPadd;
status = false;

for(i = 0; i < 5; i++) {
inventar[i] = choose(ItemType.apfel, ItemType.weapon, ItemType.schwert, ItemType.zeitlupe , ItemType.ruestung); 
anzahl[i] = irandom(3) + 1;
for(z = 0; z < i; z++) {
if(inventar[z] == inventar[i]) {
	i--;
	break;
}
}
}




