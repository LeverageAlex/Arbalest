/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_vbar);
instance_destroy(obj_zueruck);
instance_destroy(obj_option);
instance_destroy(obj_respawnknopf)
obj_Player.ungesperrt = true;
instance_create_layer(0, 0, "Instances", obj_inventoryManager);