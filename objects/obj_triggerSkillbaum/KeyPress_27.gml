/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_optionsmenu)) {
instance_destroy(obj_optionsmenu);
show_debug_message("dereffer")
}
else {
instance_create_layer(0,0, "leveldesign", obj_optionsmenu);	
}