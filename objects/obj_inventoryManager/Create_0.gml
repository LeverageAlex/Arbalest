guiHolderWidth = sprite_get_width(sp_inventar_halt);
guiHolderPosX = (view_get_wport(0) /2) - (guiHolderWidth / 2);
guiHolderPadd = 0;
guiHolderPosY = view_get_hport(0) - sprite_get_height(sp_inventar_halt) + 16;
guiHolderSlotOffset = 56 + guiHolderPadd;


inv_initialize();
