/// @description Insert description here
// You can write your code in this editor
//y = 0,018182 * xRec^2 + 0,175758 * xRec - 24,242424
//Aufgabe Moisel elliptische umlaufbahn
if(oberhalb && fahren >= 1) {
	fahren++;
	if(fahren < 90) {
		y++;
		
	}
	else {
		x--;
	fahren = 0;
	//show_message(y-offsetY)
	oberhalb = false;
	}
	
}
else if(!oberhalb && fahren >= 1) {
		fahren++;
	if(fahren < 90) {
		y--;
		
	}
	else {
		x++;
	fahren = 0;
	oberhalb = true;
	}

}
else if(oberhalb) {
xRec = x - obj_koenig.x /*- 20*/;

yWertfkt = ((xRec*xRec)/150)
y = yWertfkt + offsetY

if(xRec >= 80) {
	fahren++;
}
else {
	x++;
}
}
else {
xRec = x - obj_koenig.x /*- 20*/;

yWertfkt = -((xRec*xRec)/150)
y = yWertfkt + offsetY + 173

if(xRec <= -30) {
			fahren++;
}
else {
x--;	
}
}