/// @description Insert description here
// You can write your code in this editor


if(obj_Player.x + 80 < x) {
spielerLinks = true;	
laufend = true;
}
else if(obj_Player.x - 80 > x){
spielerLinks = false;	
laufend = true;
}
else {
laufend = false;
}


if(obj_Player.y + 50 > y && obj_Player.y - 50 < y) {
	yReichweite = true;
}
else {
yReichweite = false;	
}



if(status == 0) {
	if(spielerLinks) {
	if(laufend) {
	x--;
	}
	else if(!laufend && yReichweite) {
	instance_create_layer(x - 60, y, "ins_player", obj_hitboxPlayer);
	}
	}
	else if(!spielerLinks) {
	
	
	if(laufend) {
	x++;
	}
	else if(!laufend) {
	
	}
	
	
	}	
}
else if(status == 1) {
	
	
}