/// @description Insert description here
// You can write your code in this editor

firingdelay = 0;

recoil = 0;
image_xscale = 1;
image_yscale = 1;
if(obj_Player.weapon_state == 1) {
obj_Player.weapon_state = 0;
while(instance_exists(obj_weapon)) {
instance_destroy(obj_weapon)	
}
instance_destroy(obj_arm);
}
else if(obj_Player.weapon_state == 2) {
obj_Player.weapon_state = 0;	
instance_destroy();
}
else {
	obj_Player.weapon_state = 1;	
}