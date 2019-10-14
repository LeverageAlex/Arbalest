/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

	audio_stop_sound(global.localsound);
audio_play_sound(snd_holz_hit, 10, false);
//room_goto_next();	
instance_destroy(obj_spielFortsetzen);
instance_create_layer(0, 0, "Instances", obj_namenseingabeFeld);
instance_destroy();
