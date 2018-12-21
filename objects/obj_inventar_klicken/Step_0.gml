/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(mouse_check_button_pressed(mb_left) && zwischenspeicher == false) {
	
	show_debug_message(device_mouse_x_to_gui( 0 ));
	show_debug_message(device_mouse_y_to_gui( 0 ));
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 363 + (p * 50) && device_mouse_x_to_gui( 0 ) < 408 + (p * 50)) && ((device_mouse_y_to_gui( 0 ) > 432 + (i * 46) && device_mouse_y_to_gui( 0 ) < 478 + (i * 46)))) {

			show_message(array_find_pos(5 + i*5 + p));
			item = array_find_pos(5 + i*5 + p);
			zwischenspeicher = true;
		}
		
		
	}
	}
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 363 + (n * 50) && device_mouse_x_to_gui( 0 ) < 408 + (n * 50)) && ((device_mouse_y_to_gui( 0 ) > 598 && device_mouse_y_to_gui( 0 ) < 644))) {
show_message(array_find_pos(n));
			item = array_find_pos(n);
			zwischenspeicher = true;
		
	}
	
	
} }

else if(mouse_check_button_pressed(mb_left) && zwischenspeicher == true) {
	
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 363 + (p * 50) && device_mouse_x_to_gui( 0 ) < 408 + (p * 50)) && ((device_mouse_y_to_gui( 0 ) > 432 + (i * 46) && device_mouse_y_to_gui( 0 ) < 478 + (i * 46)))) {

			
			item2 = array_find_pos(5 + i*5 + p);
			array_swappos(item, item2);
			zwischenspeicher = false;
		}
		
		
	}
	}
	
	for(var n = 0; n < 5; n++) {
		if((device_mouse_x_to_gui( 0 ) > 363 + (n * 50) && device_mouse_x_to_gui( 0 ) < 408 + (n * 50)) && ((device_mouse_y_to_gui( 0 ) > 598 && device_mouse_y_to_gui( 0 ) < 644))) {
show_message(array_find_pos(n));
			item2 = array_find_pos(n);
			array_swappos(item, item2);
			zwischenspeicher = false;
		
	}
	}
	
	
}

