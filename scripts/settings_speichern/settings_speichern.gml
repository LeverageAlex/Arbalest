	reader = ini_open("saves.ini");
	ini_write_string("Settings", "klettern", chr(global.klettern));
	ini_write_string("Settings", "links", chr(global.links));
	ini_write_string("Settings", "rechts", chr(global.rechts));
	ini_write_string("Settings", "ducken", chr(global.ducken));
	ini_write_string("Settings", "springen", chr(global.springen));
	ini_write_string("Settings", "skillbaum", chr(global.skillbaum));
	
	ini_write_real("Settings", "Basisschwierigkeit", global.basisschwierigkeit);
	ini_write_real("Settings", "volume", global.volume);
	ini_write_real("Settings", "vollbild", window_get_fullscreen());
	ini_close();