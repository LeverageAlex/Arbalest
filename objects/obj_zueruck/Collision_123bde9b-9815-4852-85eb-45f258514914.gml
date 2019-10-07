/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(mouse_check_button(1)) {
audio_play_sound(snd_klick,10, false);
//room_goto(r_hauptmenu);	
settings_speichern();

instance_destroy(obj_optionsmenu);
if(room == r_options) {

room_goto(r_hauptmenu);
}
else {
instance_create_layer(0, 0, "ins_restart", obj_preOptions)	
}
}