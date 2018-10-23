var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


draw_set_font(font_counter);
draw_set_color(c_green)
draw_text(cx+cw/2 - 500,cy + 25,"Bullets:" + string(number));
