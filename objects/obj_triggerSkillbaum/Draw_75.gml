/// @description Insert description here
// You can write your code in this editor
if(status) {
draw_set_color(make_colour_rgb(142, 1, 145));
draw_rectangle(0, 0, 1920, 1080, false);	
draw_set_color(c_red)
draw_set_font(font_fett2);
draw_text(288, 288, "Jump");
draw_text(288, 416, "Laufgeschwindigkeit");
draw_text(288, 544, "Schaden");
	

	
	
}
if(instance_exists(obj_Player)) {
draw_text(1920 - 280, 70, "Room: " + room_get_name(room) + "\nx=" + string(obj_Player.x) + " y=" + string(obj_Player.y))
}