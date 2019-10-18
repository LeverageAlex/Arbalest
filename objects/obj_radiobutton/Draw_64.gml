/// @description Insert description here
// You can write your code in this editor
draw_set_color(make_color_rgb(225, 225, 225));
//draw_circle(x, y, radius, false)
draw_set_color(c_black)
image_index = 0;
if(checked) {
	
	//draw_circle(x + radius/2, y, radius/2, false)
	image_index = 1;
}
draw_self();
draw_text(x + radius + 4, y - radius - 2, text);