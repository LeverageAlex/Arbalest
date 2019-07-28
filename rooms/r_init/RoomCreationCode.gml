global.number = 0;
global.schadenmodifikator = 0;
/*global.klettern = ord("W");
global.links = ord("A");
global.rechts = ord("D");
global.ducken = ord("S");
global.springen = vk_space;*/


//ROOM 1
global.number = 0;
global.schadenmodifikator = 0;
global.volume = 50;

global.wase = true;
global.dialog_index = 0;

global.ruestung = 0;
global.geld = 8;
//}
locked = false;
global.xp = 1;
global.level = 1;

settings_laden();
inv_initialize();
room_goto_next();