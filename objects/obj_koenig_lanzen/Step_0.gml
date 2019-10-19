/// @description Insert description here
// You can write your code in this editor
if(abgeschossen) {
	geflogen++;
	if(geflogen >= range) {
	instance_destroy()	
	}
	speed = 4;
	image_yscale *= 1.005;
	image_xscale *= 1.01;
}