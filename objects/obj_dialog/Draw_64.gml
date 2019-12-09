/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
draw_set_color(c_black);
draw_rectangle(0, 0, 1920, 1080, false);
if(room != r_kingfight) {
draw_sprite(dialogpartner, 0, 1650, 400);
}
else {
draw_sprite(sp_koenig, 0, 1650, 400);	
}
draw_sprite(sp_player_attack_rechts, 0, 100, 600)
instance_destroy(obj_inventoryManager);

draw_set_color(c_white);
dialogseiteP = false;


if(global.dialog_index % 2 == 0) {
	dialogseiteP = true;
}

if(global.zusatzpartner) {
dialogseiteP = dialogseiteP == false;	
}


for(i = global.dialog_index; i >= 0; i--) {
	
	
text = ds_list_find_value(global.dialog, i);
yscaleblase = 0.4+0.005*string_length(text);
if(ds_list_size(vorgaengerX) < global.dialog_index) {
	ds_list_add(vorgaengerX, 334 * yscaleblase)
}
abstand = 0;
if(i != global.dialog_index) {
	
	for(z = i; z < global.dialog_index; z++) {
	//	show_message("abstand: " + string(abstand) + "vorgaengerX: " + string(vorgaengerX) + " z: " + string(z))
		abstand += ds_list_find_value(vorgaengerX, z);
		
	}
}


if(dialogseiteP) {
	offset = -300;
draw_sprite_ext(sp_sprechblase, 0, 595 + offset,  510 - abstand/*(190*(global.dialog_index-i))*/, 1, yscaleblase, 0, -1, 1)

}
else {
	offset = 300;
draw_sprite_ext( sp_sprechblase, 0, 700 + 520 + offset, 510 - abstand/*(190*(global.dialog_index-i))*/, -1, yscaleblase, 0, -1, 1);	

}

if(i != global.dialog_index) {
draw_text(920 - 240/*(string_length(text)*9)*/ + offset, 540 - abstand/*(190*(global.dialog_index-i))*/, text);
}
else {
	draw_text(920 - 240/*(string_length(text)*9)*/ + offset, 540 - abstand/*(190*(global.dialog_index-i))*/, string_copy(text, 0, zaehler/4));
}
dialogseiteP = dialogseiteP == false;
}

zaehler++;