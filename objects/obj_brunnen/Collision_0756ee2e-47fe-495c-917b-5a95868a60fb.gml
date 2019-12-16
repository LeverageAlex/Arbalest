/// @description Insert description here
// You can write your code in this editor
	audio_stop_sound(global.localsound)
//room_goto_next()
if(!aktiv) {
instance_create_layer(x, y, "Vorne", obj_raumuebergangEnde)
aktiv = true;
}
