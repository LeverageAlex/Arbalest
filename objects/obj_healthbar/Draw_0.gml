/// Lebensanzeige
// Um Leben testweise zu verlieren, wurde ein hotkey auf g erstellt. ~Alex

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
if(health < 0) {
	
	health = 0;
	}
	else if(health > 100) {
		health = 100;
		
	}
	
x = cx+ 100;
y = cy + 60;
draw_set_color(c_red);
draw_rectangle(cx+ 77, cy + 42, cx + 172 - (95 - (0.95 * health )), cy + 50, false);
if(health == 100) {
	draw_rectangle(cx+ 172, cy + 42, cx + 174, cy + 48, false);
	
}
draw_set_color(c_blue);
draw_rectangle(cx + 77, cy + 54, cx + 159 - (82 - (0.82 * obj_Player.ruestung )), cy + 64, false);
if(obj_Player.ruestung == 100) {
	draw_rectangle(cx+ 159, cy + 54, cx + 164, cy + 60, false);
	
}
draw_self();
draw_set_color(c_blue);
draw_text(x - 56,cy + 81, string(obj_Player.level));
//draw_rectangle(cx+cw/2 + - 500, cy + 140, cx+cw/2 + - 400 - (100 - health), cy + 160, false);

//draw_rectangle(cx+ 917, cy + 45, cx + 1012 - (95 - (0.95 * health )), cy + 51, false);


draw_set_color(c_green);
draw_text(cx+cw/2 + - 500,cy + 160,"Health =" + string(health));