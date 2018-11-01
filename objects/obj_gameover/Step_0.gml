/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if (keyboard_check_pressed(ord("F"))) {
	draw_set_font(font_counter);
	room_goto(global.number);
	
}
if(health == 0) {
	gameover = true;
	
}