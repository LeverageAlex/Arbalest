/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreib)
if(keyboard_check_direct(vk_alt) && keyboard_check_direct(vk_control) && keyboard_check_direct(ord("L")) && keyboard_check_direct(187)){
for(i = 0;i <= 10;i++){
instance_create_layer(obj_Player.x,5,"Vorne",obj_fallingcoin);	
instance_create_layer(obj_Player.x,5,"Vorne",obj_fallingcoin);	
instance_create_layer(obj_Player.x,5,"Vorne",obj_fallingcoin);	
}
}

if(keyboard_check_pressed(global.skillbaum) || (keyboard_check_pressed(vk_escape) && status)) { 
	if(status) {
instance_destroy(obj_Knopf);
instance_destroy(obj_balken);
	status = false;
	obj_Player.ungesperrt = true;
}
else if(!instance_exists(obj_dialog)){
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


}

