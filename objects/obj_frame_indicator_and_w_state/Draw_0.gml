var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


draw_set_font(font_counter);
draw_set_color(c_green);
draw_text(cx+cw/2 + - 500,cy + 95, "FPS = " + string(frames_per_sec));
draw_text(cx+cw/2 + - 500,cy + 110,"Weapon_State =" + string(get_waepon_state));
