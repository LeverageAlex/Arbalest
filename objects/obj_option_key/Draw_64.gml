/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
draw_self();
draw_set_font(font_fett)
draw_set_color(c_black);
draw_text(x + 12,y,chr(wert));
draw_text(x - 200 /*- 18*(string_length(beschreibung)-1)*/, y, beschreibung);
draw_set_font(font_counter)