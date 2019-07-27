	reader = ini_open("saves.ini");
	global.klettern = ini_read_string("Settings", "klettern", "w");
	global.links = ini_read_string("Settings", "links", "a");
	global.rechts = ini_read_string("Settings", "rechts", "d");
	global.ducken = ini_read_string("Settings", "ducken", "s");
	global.springen = ini_read_string("Settings", "springen", " ");
	global.volume = ini_write_real("Settings", "volume", 75);
	window_set_fullscreen(ini_read_real("Settings", "vollbild", false));
	ini_close();