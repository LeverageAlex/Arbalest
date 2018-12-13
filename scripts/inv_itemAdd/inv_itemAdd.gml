
var _type = argument0;
var indexAddedAt = -2;
if(array_findindex(obj_inventoryManager.inventory,_type) == -1)
{
	indexAddedAt = array_replace_value(obj_inventoryManager.inventory, ItemType.empty,_type)
}

if (indexAddedAt != -1)
	obj_inventoryManager.itemDefinitions[_type, ItemProperty.amount] +=1;
	
return (indexAddedAt != -1);