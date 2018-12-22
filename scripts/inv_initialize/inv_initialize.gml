#macro MAX_ACTIVE_INV_ITEMS 5
#macro MAX_INV_ITEMS 20

if(room == 0) {

global.inventory[MAX_INV_ITEMS] = ItemType.empty;


/*for(var i = 0; i < MAX_ACTIVE_INV_ITEMS; i++) {
inventory[i] = noone;
}*/

inv_DeclareItemDefinitions();

}