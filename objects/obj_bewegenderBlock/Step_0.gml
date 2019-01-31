/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(richtung &&startX + a*128 <= x) {
	
	richtung = false;
}
else if(!richtung && startX >= x){
	x -= 3;
	richtung = true;
}

else {
if(richtung) {
x += 3;


}
else {
x -= 3;	
}
}






with(obj_Player) {

if(place_meeting(x,y + 4, other)) {
	if(other.richtung = true) {
	x += 3;
	}
	else {
	x -= 3;	
	}
//	transport = true;
}
	
}