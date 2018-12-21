/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(mouse_check_button_pressed(mb_left)) {
	
	show_debug_message(device_mouse_x_to_gui( 0 ));
	show_debug_message(device_mouse_y_to_gui( 0 ));
	
	for(var i = 0; i < 3; i++) {
		
	for(var p = 0; p < 5; p++) {	
		if((device_mouse_x_to_gui( 0 ) > 363 + (p * 45) && device_mouse_x_to_gui( 0 ) < 408 + (p * 45)) && ((device_mouse_y_to_gui( 0 ) > 432 + (i * 46) && device_mouse_y_to_gui( 0 ) < 478 + (i * 46)))) {

			show_message(array_find_pos(5 + i*5 + p))
		}
		
		
	}
	}
	
	
}





