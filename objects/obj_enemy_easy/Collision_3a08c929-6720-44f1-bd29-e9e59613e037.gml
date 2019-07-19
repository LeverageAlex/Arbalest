/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
hp = hp - 1;

if (hp <= 0) 
{
with (obj_enemy_counter)
{
number_instances_killed = number_instances_killed + 1;
}
global.xp += xp;

instance_destroy();
}
with(other.id) {
	
instance_destroy();	
}