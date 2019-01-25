/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(timer >= 200) {
instanz = instance_create_layer(x - 50, y - 256, "leveldesign", obj_flammen);

if(image_yscale == -1) {
instanz.image_yscale = -1;	
instanz.y += 512;
	
}

	
timer = 0;	


}




timer++;