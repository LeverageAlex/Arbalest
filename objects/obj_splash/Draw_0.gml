/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
draw_self()
if(zaehler < 60) {
draw_set_font(font_big);
draw_set_color(c_maroon);
draw_text(520, 1080- 140, "Um fortzufahren Leertaste druecken!");
}
else if(zaehler > 80) {
	zaehler = 0;
}
zaehler++;