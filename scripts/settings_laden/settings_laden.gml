	reader = ini_open("saves.ini");
	global.klettern = ord(ini_read_string("Settings", "klettern", "W"));
	global.links = ord(ini_read_string("Settings", "links", "A"));
	global.rechts = ord(ini_read_string("Settings", "rechts", "D"));
	global.ducken = ord(ini_read_string("Settings", "ducken", "S"));
	global.springen = ord(ini_read_string("Settings", "springen", " "));
	global.volume = ini_read_real("Settings", "volume", 75);
	audio_master_gain(global.volume/100);
	window_set_fullscreen(ini_read_real("Settings", "vollbild", false));
	ini_close();