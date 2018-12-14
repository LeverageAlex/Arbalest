
var _type = argument0;

var _indexofGivenType = array_findindex(inventory, _type);

if(_indexofGivenType != -1) {
	
	itemDefinitions[_type, ItemProperty.amount] -= 1;
	
	if(itemDefinitions[_type, ItemProperty.amount] <= 0) {
		inventory[_indexofGivenType] = ItemType.empty;
		
	}
	
}