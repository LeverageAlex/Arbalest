/// @description Insert description here
// You can write your code in this editor

if(firecooldown > 0) {
firecooldown--;	
}

var splinks = obj_Player.x <= x;
var sprechts = obj_Player.x > x;
var wandlinks = place_meeting(x - 120, y - 20, obj_wall);
var wandrechts = place_meeting(x + 140, y - 20, obj_wall);

if(splinks && obj_Player.x  + 120 >= x) {
	speed = 0;
	if(firecooldown == 0) {
	firecooldown = downZeit;	
		instance_create_layer(x - 80, y, "leveldesign", obj_hitboxPlayer)
	}
}
else if(sprechts && obj_Player.x  - 120 < x) {
	speed = 0;
		if(firecooldown == 0) {
	firecooldown = downZeit;	
	instance_create_layer(x + 80, y, "leveldesign", obj_hitboxPlayer)
	}
	
} else if(splinks && !wandlinks) {
	speed = -laufgeschwind;
}
else if(sprechts && !wandrechts) {
	speed = laufgeschwind;
}





if(leben <= 0) {
instance_destroy();	
}