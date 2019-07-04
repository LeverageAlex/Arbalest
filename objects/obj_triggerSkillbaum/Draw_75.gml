/// @description Insert description here
// You can write your code in this editor
if(status) {
draw_set_color(make_colour_rgb(142, 1, 145));
draw_rectangle(0, 0, 1920, 1080, false);	
draw_set_color(c_red)
draw_set_font(font_big);
draw_text(288, 288, "Jump");
draw_text(288, 416, "Leben");
draw_text(288, 544, "Schaden");
	
instance_create_layer(1280, 320, "leveldesign", obj_Knopf)
instance_create_layer(1280 , 448, "leveldesign", obj_Knopf)
instance_create_layer(1280, 576, "leveldesign", obj_Knopf)
instance_create_layer(704, 352, "leveldesign", obj_balken)
instance_create_layer(704, 480, "leveldesign", obj_balken)
instance_create_layer(704, 608, "leveldesign", obj_balken)
	
	
}