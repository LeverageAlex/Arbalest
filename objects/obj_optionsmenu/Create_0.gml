/// @description Insert description here
// You can write your code in this editor
instance_create_layer(288, 576, "Instances", obj_vbar);

instance_create_layer(544, 352, "Vorne", obj_option);
instance_create_layer(1600, 800, "Vorne", obj_zueruck);
//instance_create_layer(1200, 800, "Vorne", obj_respawnknopf);

obj_Player.ungesperrt = false;
instance_destroy(obj_inventoryManager)

