reader = ini_open("saves.ini");
	ini_write_real("Player", "Health", health);
	ini_write_real("Player", "Ruestung", global.ruestung);
	ini_write_real("Player", "Money", global.geld);
	ini_write_string("Player", "Name", global.spielername)
	for(var i = 1; i <= MAX_INV_ITEMS; i++) {

	//	audio_play_sound(snd_keyboard_press, 10, false);
		var _itemType = global.inventory[i - 1];
	//	inv_UseItem(_itemType);
		ini_write_string("Inventory", "Item" + string(i), _itemType)
		//ini_write_string("Inventory", "ItemName" + string(i), global.itemDefinitions[_itemType, ItemProperty.name])
		_amount = global.itemDefinitions[_itemType, ItemProperty.amount];

		ini_write_real("Inventory", "ItemAmount" + string(i), _amount);
}
	
	
	ini_write_real("Room", "number", room);
	ini_write_real("Player", "Level", global.level);
	ini_write_real("Player", "XP", global.xp);
	
	ini_write_real("Player", "schaden", global.schaden);
	ini_write_real("Player", "sprunghoehe", global.sprunghoehe);
	ini_write_real("Player", "laufgeschwindigkeit", global.laufgeschwindigkeit);
	
	//SETTINGS

	
	show_debug_message("success")
	ini_close();