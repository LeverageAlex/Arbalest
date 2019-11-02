/// @description Insert description here
// You can write your code in this editor
if(realeZeit >= spawnZeit) {
	instance_create_layer(x, y, "leveldesign", obj_wache);
	realeZeit = -1;
}

realeZeit++;