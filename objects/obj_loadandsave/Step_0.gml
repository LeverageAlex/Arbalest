/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_shift)) {
	reader = ini_open("saves.ini");
	ini_write_string("Player", "Health", health);
	ini_write_string("Player", "Ruestung", global.ruestung);
	
	for(var i = 1; i <= MAX_INV_ITEMS; i++) {

	//	audio_play_sound(snd_keyboard_press, 10, false);
		var _itemType = global.inventory[i - 1];
	//	inv_UseItem(_itemType);
		ini_write_string("Inventory", "Item" + string(i), _itemType)
		//ini_write_string("Inventory", "ItemName" + string(i), global.itemDefinitions[_itemType, ItemProperty.name])
		ini_write_string("Inventory", "ItemAmount" + string(i), global.itemDefinitions[_itemType, ItemProperty.amount]);
}
	
	
	ini_write_string("Room", "number", room);
	show_debug_message("success")
	ini_close();
	
}

if(keyboard_check_pressed(vk_f7)) {
	reader = ini_open("saves.ini");
	ini_write_string("Player", "Health", health);
	ini_write_string("Player", "Ruestung", global.ruestung);
	
	for(var i = 1; i <= MAX_INV_ITEMS; i++) {

	//	audio_play_sound(snd_keyboard_press, 10, false);
		var _itemType = global.inventory[i - 1];
	//	inv_UseItem(_itemType);
		ini_write_string("Inventory", "Item" + string(i), _itemType)
		//ini_write_string("Inventory", "ItemName" + string(i), global.itemDefinitions[_itemType, ItemProperty.name])
		ini_write_string("Inventory", "ItemAmount" + string(i), global.itemDefinitions[_itemType, ItemProperty.amount]);
}
	
	
	ini_write_string("Room", "number", room);
	show_debug_message("success")
	ini_close();
	
}