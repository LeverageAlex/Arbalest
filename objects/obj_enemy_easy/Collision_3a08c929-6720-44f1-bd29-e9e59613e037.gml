/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(eigen) {
hp = hp - 1;
damaged = true;
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
}}