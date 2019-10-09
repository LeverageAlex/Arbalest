/// @description Insert description here
// You can write your code in this editor

instance_create_layer(850, 300, "Vorne", obj_btnHauptmenu);
instance_create_layer(850, 500, "Vorne", obj_btnOeffneOptionen);
instance_create_layer(850, 700, "Vorne", obj_BtnExitMenu);

if(instance_exists(obj_optionsmenu)) {
instance_destroy(obj_optionsmenu);	
}