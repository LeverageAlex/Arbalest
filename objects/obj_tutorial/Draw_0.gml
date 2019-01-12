/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
	if(leben != health) {
		if(!deaktiviert2) {
	draw_set_color(c_blue);
	draw_arrow(obj_healthbar.x + 213, obj_healthbar.y - 14, obj_healthbar.x + 80, obj_healthbar.y - 14, 40);
	draw_set_color(c_red);
	draw_text(obj_healthbar.x + 216, obj_healthbar.y - 25, "Hinweis: Monster und Objekte koennen Schaden an dir verursachen!");
	}
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
	if(!deaktiviert2) {
	draw_sprite(sp_tut_jump, 5, 3868, 3780);
	}
	}
	if(trigger2) {
	draw_sprite(sp_tut_jump, -1, x - 600, y);
	if(obj_Player.weapon_state == 1) {
	draw_text_transformed(2148, 3798, "Zum schiessen zielen Sie mit der Maus und feuern mit der linken Maustaste", 1.2, 1.2, image_angle);
	}
	else {
	draw_text_transformed(2148, 3788, "Drücke die Taste 1, um den ersten Slot deiner Inventarleiste auszuwählen", 1.2, 1.2, image_angle);
	
	}
	}
	if(trigger4) {
		if(!deaktiviert1) {
		draw_sprite(sp_tut_jump, 1, x - 800, y);
		draw_sprite(sp_tut_jump, 2, 2539, 3782);
		}
	}
	if(trigger5 && !disabled) {
		draw_sprite(sp_tut_jump, 3, obj_healthbar.x - 158, obj_healthbar.y + 42);
		wdh++;
		if(room_speed * 2.3 < wdh) {
			disabled = true;
			lokaleXP = obj_Player.xp;
			wdh = 0;
		}
	}
	if(trigger5 && disabled) {
		draw_sprite(sp_tut_jump, 4, obj_healthbar.x - 147, obj_healthbar.y + 42);
		
		wdh++;
		if(room_speed * 3 < wdh) {
			lokaleXP = obj_Player.xp;
			aktiv = false;
		}
	}
//draw_ellipse(x,y, x + 300, y-100, true);
//draw_text(x,y, "Druecken sie D um nach links zu laufen");
}
else if(status > 60){
	
	status = 0;
}

status++;
}
if(obj_Player.x > 1076 && obj_Player.x < 1386 || (obj_Player.x > 3744 && obj_Player.x < 3990 && obj_Player.y > 3930 - 100 && obj_Player.y < 3930 + 100)) {
	
	trigger = true;
	trigger3 = true;
} 
else {
	
	trigger3 = false;
	trigger = false; 
}
if((obj_Player.x > 656 && obj_Player.x < 1016) || (obj_Player.x > 2664 && obj_Player.x < 2816)) {
	trigger = true;
	trigger2 = true;
} 
else {
	
	trigger2 = false; 
}
if(obj_Player.x > 476 && obj_Player.x < 656 || obj_Player.x > 2340 && obj_Player.x < 2656 ) {
	trigger = true;
	trigger4 = true;
} 
else {
	
	trigger4 = false; 
}
if( lokaleXP != obj_Player.xp && aktiv) {
	trigger = true;
	trigger5 = true;
	
} 
else {
	
	trigger5 = false; 
}

//Checker Bereich


if(array_findindex(global.inventory, ItemType.weapon) != -1) {
deaktiviert1 = true;	
}
if(array_findindex(global.inventory, ItemType.apfel) != -1) {
	deaktiviert2 = true;
}




