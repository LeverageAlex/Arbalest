	reader = ini_open("saves.ini");
	ini_write_string("Settings", "klettern", global.klettern);
	ini_write_string("Settings", "links", global.links);
	ini_write_string("Settings", "rechts", global.rechts);
	ini_write_string("Settings", "ducken", global.ducken);
	ini_write_string("Settings", "springen", global.springen);
	ini_write_real("Settings", "volume", global.volume);
	ini_write_real("Settings", "vollbild", window_get_fullscreen());
	ini_close();