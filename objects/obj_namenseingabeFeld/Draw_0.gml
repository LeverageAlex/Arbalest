/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_lime);
draw_set_halign(fa_center);
draw_text(230 + verschiebungX, -25 + verschiebungY, "Bitte geben sie ihren Namen ein und")
draw_text(230 + verschiebungX, 15 + verschiebungY, "bestätigen diesen mit der ENTER-Taste")
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_rectangle(100 + verschiebungX, 75 + verschiebungY, 452 +verschiebungX, 135 + verschiebungY, false)
draw_set_color(c_white);
draw_rectangle(100 + verschiebungX, 75 + verschiebungY, 452 + verschiebungX, 135 + verschiebungY, true)
draw_set_color(c_aqua);
draw_text(105 + verschiebungX, 80 + verschiebungY, text + cursor);