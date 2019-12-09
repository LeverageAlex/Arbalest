	
	reader = ini_open("saves.ini");

	//room_goto(ini_read_real("Room", "number", room));
	health = ini_read_real("Player", "Health", 100);
	global.ruestung = ini_read_real("Player", "Ruestung", 0);
	global.geld = ini_read_real("Player", "Money", 0);
	global.level = ini_read_real("Player", "Level", 1);
	global.xp = ini_read_real("Player", "XP", 0);
	global.spielername = ini_read_string("Player", "Name", "Spieler");
	
	global.schaden = ini_read_real("Player", "schaden", 1);
	global.sprunghoehe = ini_read_real("Player", "sprunghoehe", 1);
	global.laufgeschwindigkeit = ini_read_real("Player", "laufgeschwindigkeit", 1);

	inv_initialize()
	for(var i = 1; i <= MAX_INV_ITEMS; i++) {
	global.inventory[i - 1] = ItemType.empty;
	//	audio_play_sound(snd_keyboard_press, 10, false);
		
	//	inv_UseItem(_itemType);
		itemid = ini_read_real("Inventory", "Item" + string(i), ItemType.empty)
				
		if(itemid > 0) {
		
		//ini_write_string("Inventory", "ItemName" + string(i), global.itemDefinitions[_itemType, ItemProperty.name])
		amount = ini_read_real("Inventory", "ItemAmount" + string(i), 0);
		//if(itemid > 0) {
		global.inventory[i - 1] = itemid;
		
		global.itemDefinitions[global.inventory[i - 1], ItemProperty.amount] = amount;
		//}	
}
	}
	
//	show_debug_message("success")
	//show_message(ini_read_real("Room", "number", 0))
	room_goto(ini_read_real("Room", "number", 0))
	ini_close();

