/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_Player)) {
obj_Player.letzterAtem++;	
obj_Player.grv = 0.03;
if(obj_Player.vspd > 0.5 && global.wase) {
	obj_Player.vspd -= 1.9
}
else if(obj_Player.vspd > 0.1 && global.wase) {
	obj_Player.vspd -= 0.09
	global.wase = false;
	alarm[0] = 0.2
}
}
else {
	obj_Player.letzterAtem = 0;
}
if(obj_Player.letzterAtem > 50) {
spieler_schaden(0.4);

	
}