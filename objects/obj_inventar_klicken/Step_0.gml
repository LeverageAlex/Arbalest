/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(mouse_check_button_pressed(mb_left) && zwischenspeicher == false && keyboard_check_direct(ord("I"))) {
	
	show_debug_message(device_mouse_x_to_gui( 0 ));
	show_debug_message(device_mouse_y_to_gui( 0 ));
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 811 + (p * 52) && device_mouse_x_to_gui( 0 ) < 857 + (p * 52)) && ((device_mouse_y_to_gui( 0 ) > 770 + (i * 46) && device_mouse_y_to_gui( 0 ) < 817 + (i * 46)))) {

			//show_message(array_find_pos(5 + i*5 + p));
			pos = 5 + i*5 + p;
			item = array_find_pos(5 + i*5 + p);
			zwischenspeicher = true;
		}
		
		
	}
	}
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 810 + (n * 52) && device_mouse_x_to_gui( 0 ) < 857 + (n * 52)) && ((device_mouse_y_to_gui( 0 ) > 941 && device_mouse_y_to_gui( 0 ) < 986))) {
//show_message(array_find_pos(n));
			pos = n;
			item = array_find_pos(n);
			zwischenspeicher = true;
		
	}
	
	
} }

else if(mouse_check_button_pressed(mb_left) && zwischenspeicher == true && keyboard_check_direct(ord("I"))) {
	
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 811 + (p * 52) && device_mouse_x_to_gui( 0 ) < 857 + (p * 52)) && ((device_mouse_y_to_gui( 0 ) > 770 + (i * 46) && device_mouse_y_to_gui( 0 ) < 817 + (i * 46)))) {

			pos2 = 5 + i*5 + p;
			item2 = array_find_pos(5 + i*5 + p);
			array_swappos(item, item2, pos, pos2);
			zwischenspeicher = false;
		}
		
		
	}
	}
	
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 810 + (n * 52) && device_mouse_x_to_gui( 0 ) < 857 + (n * 52)) && ((device_mouse_y_to_gui( 0 ) > 941 && device_mouse_y_to_gui( 0 ) < 986))) {
//show_message(array_find_pos(n));
			item2 = array_find_pos(n);
			pos2= n;
			array_swappos(item, item2, pos, pos2);
			zwischenspeicher = false;
		
	}
	}
	
	
}

