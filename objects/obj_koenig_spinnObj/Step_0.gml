/// @description Insert description here
// You can write your code in this editor
//y = 0,018182 * xRec^2 + 0,175758 * xRec - 24,242424
//Aufgabe Moisel elliptische umlaufbahn
if(oberhalb && fahren >= 1) {
	fahren += geschwindigkeit;
	if(fahren < 136) {
		y  += geschwindigkeit;
		
	}
	else {
		x -= geschwindigkeit;
	fahren = 0;
	//show_message(y-offsetY)
	oberhalb = false;
	}
	
}
else if(!oberhalb && fahren >= 1) {
		fahren += geschwindigkeit;
	if(fahren < 207) {
		y -= geschwindigkeit;
		
	}
	else {
		x += geschwindigkeit;
	fahren = 0;
	oberhalb = true;
	}

}
else if(oberhalb) {
xRec = x - obj_endBoss.x - 8;

yWertfkt = ((xRec*xRec)/170) - 20
y = yWertfkt + offsetY

if(xRec >= 80) {
	fahren++;
}
else {
	x += geschwindigkeit;
}
}
else {
xRec = x - obj_endBoss.x - 8;

yWertfkt = -((xRec*xRec)/170)
y = yWertfkt + offsetY + 173 +20

if(xRec <= -30) {
			fahren++;
}
else {
 x-= geschwindigkeit;	
}
}