/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
if(gameover) {
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

fade_alpha = clamp(fade_alpha * 1.1, 0, 1);
draw_set_alpha(fade_alpha);
draw_set_font(font_counter);
draw_set_color(c_red);

draw_set_color(c_black);
draw_rectangle(cx, cy, cx + cw, cy + cw, false);
draw_set_alpha(1);
if(fade_alpha == 1) {
gameover = false;	
	draw_set_alpha(1);
//	transition_kind = 5;
	room_goto(4);
}
}

