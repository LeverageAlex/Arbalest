/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreib)

if(keyboard_check_pressed(global.skillbaum)) { 
	if(status) {
instance_destroy(obj_Knopf);
instance_destroy(obj_balken);
	status = false;
	obj_Player.ungesperrt = true;
}
else {
	obj_Player.ungesperrt = false;
with(instance_create_layer(1280, 320, "Instances", obj_Knopf)) {
	knopfNr = 2;
}
with(instance_create_layer(1280 , 448, "Instances", obj_Knopf)) {
knopfNr = 3;	
}
with(instance_create_layer(1280, 576, "Instances", obj_Knopf)) {
knopfNr = 1;	
}
with(instance_create_layer(1004, 352, "Instances", obj_balken)) {
knopfNr = 2;	
}
with(instance_create_layer(1004, 480, "Instances", obj_balken)) {
knopfNr = 3;	
}
with(instance_create_layer(1004, 608, "Instances", obj_balken)) {
knopfNr = 1;	
}
//instance_cre
status = true;
}


}