item1 = argument0;
item2 = argument1;

var save = array_findindex(obj_inventoryManager.inventory, item1);
var save2 = array_findindex(obj_inventoryManager.inventory, item2);

obj_inventoryManager.inventory[save2] = item1;
obj_inventoryManager.inventory[save] = item2;

show_message("Swapped")