/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
inv_itemAdd(ItemType.schwert)
inv_itemAdd(ItemType.weapon)


for(i = 0; i < 1000; i++) {
inv_itemAdd(ItemType.apfel)
inv_itemAdd(ItemType.ruestung)
inv_itemAdd(ItemType.pfeile)
//obj_magazin.ammo += 1;
}
if(obj_Player.downrate == 20) {
obj_Player.downrate = 0;	
}
else {
	obj_Player.downrate = 20;
}