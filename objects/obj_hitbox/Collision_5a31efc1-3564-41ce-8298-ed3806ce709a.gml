/// @description Insert description here
// You can write your code in this editor
other.leben -= 1;
other.damaged = true;
show_message(other.leben)
if(other.leben <= 0) {
instance_destroy(other)	
if(instance_exists(obj_koenig_spinnObj)) {
instance_destroy(obj_koenig_spinnObj);	
}
}