/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
audio_stop_sound(global.localsound);
audio_play_sound(snd_holz_hit, 10, false);

instance_destroy(obj_options);
instance_destroy(obj_exit);
instance_create_layer(300, 300, "Instances", obj_neuesSpiel)
instance_create_layer(700, 300, "Instances", obj_spielFortsetzen)
instance_destroy();
//room_goto_next();