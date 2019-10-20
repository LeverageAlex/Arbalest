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
	
x = cx+ 120;
y = cy + 100;
draw_set_color(c_red);
draw_rectangle(cx+ 157, cy + 60, cx + 351 - (196 - (1.96 * health )), cy + 78, false);
/*if(health == 100) {
	//draw_rectangle(cx+ 345, cy + 60, cx + 352, cy + 78, false);
	
}*/
draw_set_color(c_blue);
draw_rectangle(cx + 157, cy +84, cx + 326 - (169 - (1.69 * global.ruestung )), cy + 102, false);
/*if(global.ruestung == 100) {
	draw_rectangle(cx+ 159, cy + 54, cx + 164, cy + 60, false);
	
}*/
draw_self();
draw_set_color(c_blue);
//draw_text(x - 40,cy + 138, string(obj_Player.level));
draw_set_font(font_level);
draw_text(x - 27,cy + 140, string(global.level));
//draw_rectangle(cx+cw/2 + - 500, cy + 140, cx+cw/2 + - 400 - (100 - health), cy + 160, false);

//draw_rectangle(cx+ 917, cy + 45, cx + 1012 - (95 - (0.95 * health )), cy + 51, false);


//draw_set_color(c_green);
//draw_text(cx+cw/2 + - 500,cy + 160,"Geld =" + string(global.geld));

draw_set_color(c_blue);
//draw_sprite(sp_pfeilanzeige, 0,cx+ 150, cy + 140);
