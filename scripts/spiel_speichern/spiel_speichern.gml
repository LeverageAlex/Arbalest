reader = ini_open("saves.ini");
	ini_write_real("Player", "Health", health);
	ini_write_real("Player", "Ruestung", global.ruestung);
	ini_write_real("Player", "Money", global.geld);
	
	for(var i = 1; i <= MAX_INV_ITEMS; i++) {

	//	audio_play_sound(snd_keyboard_press, 10, false);
		var _itemType = global.inventory[i - 1];
	//	inv_UseItem(_itemType);
		ini_write_string("Inventory", "Item" + string(i), _itemType)
		//ini_write_string("Inventory", "ItemName" + string(i), global.itemDefinitions[_itemType, ItemProperty.name])
		_amount = global.itemDefinitions[_itemType, ItemProperty.amount];

		ini_write_string("Inventory", "ItemAmount" + string(i), _amount);
}
	
	
	ini_write_string("Room", "number", room);
	ini_write_real("Player", "Level", global.level);
	ini_write_real("Player", "XP", global.xp);
	show_debug_message("success")
	ini_close();