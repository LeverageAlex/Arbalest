/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_shift)) {
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
	show_debug_message("success")
	ini_close();
	
}

if(keyboard_check_pressed(vk_f7)) {
	reader = ini_open("saves.ini");
	health = ini_read_real("Player", "Health", 100);
	global.ruestung = ini_read_real("Player", "Ruestung", 0);
	global.geld = ini_read_real("Player", "Money", 0);
	for(var i = 1; i <= MAX_INV_ITEMS; i++) {

	//	audio_play_sound(snd_keyboard_press, 10, false);
		
	//	inv_UseItem(_itemType);
		itemid = ini_read_real("Inventory", "Item" + string(i), ItemType.empty)
				
		if(itemid > 0) {
		
		//ini_write_string("Inventory", "ItemName" + string(i), global.itemDefinitions[_itemType, ItemProperty.name])
		amount = ini_read_string("Inventory", "ItemAmount" + string(i), 0);
		//if(itemid > 0) {
		global.inventory[i - 1] = itemid;
		
		global.itemDefinitions[global.inventory[i - 1], ItemProperty.amount] = amount;
		//}	
}
	}
	
	ini_write_string("Room", "number", room);
	show_debug_message("success")
	ini_close();
	
}