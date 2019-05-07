/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
draw_set_color(c_black);
draw_rectangle(0, 0, 1920, 1080, false);
draw_sprite(sp_magier, 0, 1500, 400);
draw_sprite(sp_player_attack_rechts, 0, 100, 600)
instance_destroy(obj_inventoryManager);

draw_set_color(c_white);

global.dialog_index = 2;
dialogseiteP = false;
if(global.dialog_index % 2 == 0) {
	dialogseiteP = true;
}


for(i = global.dialog_index; i >= 0; i--) {
text = ds_list_find_value(global.dialog, i);
if(dialogseiteP) {
draw_sprite(sp_sprechblase, 0, 700,  510 - (190*(global.dialog_index-i)))
}
else {
draw_sprite_ext( sp_sprechblase, 0, 700 + 420, 510 - (190*(global.dialog_index-i)), -1, 1, 0, -1, 1);	

}

draw_text(960 - 240/*(string_length(text)*9)*/, 540 - (190*(global.dialog_index-i)), text);
dialogseiteP = dialogseiteP == false;
}

