/// @description Insert description here
// You can write your code in this editor
if(!timer) {
		audio_stop_sound(global.localsound);
		global.localsound = audio_play_sound(snd_victory, 10, true);	
}
/*referenz.story = true;
obj_Player.locked = true;*/
//timer = true;
instanz = instance_create_layer(x, y, "Vorne", obj_dialog);
instanz.dialogpartner = sp_magier
obj_Player.x -= 100;
aktiverDialog = true;