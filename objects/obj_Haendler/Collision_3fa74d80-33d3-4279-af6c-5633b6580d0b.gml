/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(keyboard_check_pressed(ord("E"))) {
	status = status == false;
	if(!status) {
	obj_inventoryManager.status = false;
	}
}
if(status) {
	obj_inventoryManager.status = true;
	obj_inventoryManager.status2 = false;
	
	
}