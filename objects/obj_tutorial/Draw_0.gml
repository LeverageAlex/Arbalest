/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
	if(leben != health) {
	draw_set_color(c_blue);
	draw_arrow(obj_healthbar.x + 240, obj_healthbar.y - 14, obj_healthbar.x + 80, obj_healthbar.y - 14, 40);
	draw_set_color(c_red);
	draw_text(obj_healthbar.x + 250, obj_healthbar.y - 25, "Hinweis: Monster und Objekte koennen Schaden an dir verursachen!");
	if(lokalerZ == room_speed * 3) {
	leben = health;	
	lokalerZ = 0;
	}
	lokalerZ++;
	}
	draw_set_color(c_green);
if(trigger) {
draw_set_color(c_yellow);
if(status < 30) {
	if(trigger3) {
	draw_self();
	}
	if(trigger2) {
	draw_sprite(sp_tut_jump, -1, x - 600, y);
	
	draw_text_transformed(2148, 6496, "Zum schiessen zielen Sie mit der Maus und feuern mit der linken Maustaste", 1.2, 1.2, image_angle);
	
	}
	if(trigger4) {
		draw_sprite(sp_tut_jump, 1, x - 800, y);
		draw_sprite(sp_tut_jump, 2, 2523, 6500);
	}
//draw_ellipse(x,y, x + 300, y-100, true);
//draw_text(x,y, "Druecken sie D um nach links zu laufen");
}
else if(status > 60){
	
	status = 0;
}

status++;
}
if(obj_Player.x > 1060 && obj_Player.x < 1370) {
	
	trigger = true;
	trigger3 = true;
} 
else {
	
	trigger3 = false;
	trigger = false; 
}
if((obj_Player.x > 640 && obj_Player.x < 1000) || (obj_Player.x > 2648 && obj_Player.x < 2800)) {
	trigger = true;
	trigger2 = true;
} 
else {
	
	trigger2 = false; 
}
if(obj_Player.x > 460 && obj_Player.x < 640 || obj_Player.x > 2324 && obj_Player.x < 2640 ) {
	trigger = true;
	trigger4 = true;
} 
else {
	
	trigger4 = false; 
}
