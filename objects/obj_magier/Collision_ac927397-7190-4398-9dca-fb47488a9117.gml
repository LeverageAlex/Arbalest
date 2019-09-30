/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreibenlocj
if(!timer) {
		audio_stop_sound(global.localsound);
		global.localsound = audio_play_sound(snd_victory, 10, true);	
}
/*referenz.story = true;
obj_Player.locked = true;*/
timer = true;
instance_create_layer(x, y, "Vorne", obj_dialog);