/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
with(other) {
	damaged = true;
hp -= 2;
if (hp <= 0) 
{
/*	with(waffe) {
	instance_destroy();	
	}*/
with (obj_enemy_counter)
{
number_instances_killed = number_instances_killed + 1;
}
global.xp += xp;
instance_destroy();

}
}

instance_destroy();