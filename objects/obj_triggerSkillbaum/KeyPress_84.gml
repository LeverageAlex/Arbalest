/// @description Insert description here
// You can write your code in this editor
if(status) {
instance_destroy(obj_Knopf);
instance_destroy(obj_balken);
	status = false;
	obj_Player.ungesperrt = true;
}
else {
	obj_Player.ungesperrt = false;
with(instance_create_layer(1280, 320, "ins_player", obj_Knopf)) {
	knopfNr = 2;
}
with(instance_create_layer(1280 , 448, "ins_player", obj_Knopf)) {
knopfNr = 3;	
}
with(instance_create_layer(1280, 576, "ins_player", obj_Knopf)) {
knopfNr = 1;	
}
with(instance_create_layer(1004, 352, "ins_player", obj_balken)) {
knopfNr = 2;	
}
with(instance_create_layer(1004, 480, "ins_player", obj_balken)) {
knopfNr = 3;	
}
with(instance_create_layer(1004, 608, "ins_player", obj_balken)) {
knopfNr = 1;	
}
//instance_cre
status = true;
}

