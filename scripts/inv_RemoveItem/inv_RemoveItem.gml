
var _type = argument0;

var _indexofGivenType = array_findindex(global.inventory, _type);

if(_indexofGivenType != -1) {
	
	global.itemDefinitions[_type, ItemProperty.amount] -= 1;
	
	if(global.itemDefinitions[_type, ItemProperty.amount] <= 0) {
		global.inventory[_indexofGivenType] = ItemType.empty;
		
	}
	
}