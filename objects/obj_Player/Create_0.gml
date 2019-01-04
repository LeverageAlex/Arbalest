hspd = 0;
vspd = 0;
player_speed = 4;
grv = 1.0;
jumpcounter = 0;
jumpactive = false;
firecooldown = 0;
jumpl = 0;
//weapon indentify
weapon_state = 0;

// get ammo
ammonition = 0;
if(room == 0) {
health = 100;
global.ruestung = 0;
global.geld = 0;
}
locked = false;
xp = 1;
level = 1;
block = false;
weapon_right = true;
//stop = false;
leftswapped = false;
rechtswapped = false;
idle = false;
//counter = 0;
animieren = false;
downidle = false;
spr_old = noone;
springen = true;

//tilesetid
//tiledirt  = layer_tilemap_get_id("til_dirt");
//tilestone  = layer_tilemap_get_id("til_stone");
