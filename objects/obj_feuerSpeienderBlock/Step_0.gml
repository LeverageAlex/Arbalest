/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(timer >= 200) {
instanz = instance_create_layer(x - 25, y - 128, "leveldesign", obj_flammen);

if(image_yscale == -1) {
instanz.image_yscale = -1;	
instanz.y += 256;
	
}

	
timer = 0;	


}




timer++;