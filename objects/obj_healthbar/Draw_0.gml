/// Lebensanzeige
// Um Leben testweise zu verlieren, wurde ein hotkey auf g erstellt. ~Alex

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

x = cx+ 940;
y = cy + 60;
draw_self();
draw_set_color(c_red);
//draw_rectangle(cx+cw/2 + - 500, cy + 140, cx+cw/2 + - 400 - (100 - health), cy + 160, false);

draw_rectangle(cx+ 917, cy + 45, cx + 1012 - (95 - (0.95 * health )), cy + 51, false);


draw_set_color(c_green);
draw_text(cx+cw/2 + - 500,cy + 160,"Health =" + string(health));