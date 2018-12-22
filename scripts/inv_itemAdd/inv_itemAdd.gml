
var _type = argument0;
var indexAddedAt = -2;
if(array_findindex(global.inventory,_type) == -1)
{
	indexAddedAt = array_replace_value(global.inventory, ItemType.empty,_type)
}

if (indexAddedAt != -1)
	global.itemDefinitions[_type, ItemProperty.amount] +=1;
	
return (indexAddedAt != -1);