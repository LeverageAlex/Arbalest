var _type = argument0;
var _itemScript = obj_inventoryManager.itemDefinitions[_type, ItemProperty.useScript];


script_execute(_itemScript);
inv_RemoveItem(_type);