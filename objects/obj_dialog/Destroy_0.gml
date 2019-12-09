/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
instance_create_layer(x,y, "leveldesign", obj_inventoryManager)     //HAGEDA!
obj_Player.freeze = false;
audio_stop_sound(global.localsound);
if(room != r_kingfight) {
room_goto_next();
}