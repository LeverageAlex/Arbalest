/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_preOptions)) {
instance_destroy(obj_preOptions);
//show_debug_message("dereffer")
}
else {
instance_create_layer(0,0, "ins_restart", obj_preOptions);	
}