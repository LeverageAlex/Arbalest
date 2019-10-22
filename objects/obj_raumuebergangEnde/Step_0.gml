/// @description Insert description here
// You can write your code in this editor
if(beginn) {
aktuellesX1 += geschwindigkeit;
aktuellesX2 -= geschwindigkeit;



}
else {
aktuellesX1 -= geschwindigkeit;
aktuellesX2 += geschwindigkeit;

if(aktuellesX1 < -10 && aktuellesX2 > 1940) {
	obj_Player.freeze = false;
	instance_destroy();
}

}
if(aktuellesX1 > window_get_width()* 4 / 7) {
room_goto_next();	
}
obj_Player.freeze = true;