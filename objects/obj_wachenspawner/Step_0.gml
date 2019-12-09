/// @description Insert description here
// You can write your code in this editor
if(realeZeit >= spawnZeit) {
	if(!instance_exists(referenzSpawn)) {
	referenzSpawn = instance_create_layer(x, y, "leveldesign", a);
	realeZeit = -1;
	}
}

realeZeit++;