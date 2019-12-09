switch(irandom(3)) {
case 0:
instanz = instance_create_layer(x, y - 100 + offset, "ins_player", obj_Geld)
with(instanz) {
	
value = irandom(100);	
	
}
break;
case 1:
instanz = instance_create_layer(x, y - 100 + offset, "ins_player", obj_healthkit1);
break;
case 2:
instanz = instance_create_layer(x, y - 100 + offset, "ins_player", obj_ammo_pack);

}
