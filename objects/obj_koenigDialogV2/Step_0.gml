/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(aktiverDialog && !instance_exists(obj_dialog)) {
//	show_message("erstelle König")
instance_create_layer(1984, 1344, "leveldesign", obj_koenigEcht)
instance_destroy();
}