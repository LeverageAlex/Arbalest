/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(instance_exists(obj_secretwall)) {
	instanzid = obj_secretwall;
if (chanal == instanzid){
	with(instanzid) {
	instance_destroy();	
	}
	} 
}
instance_destroy();