/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(other.id.eigen) {
hp = hp - 1;

if (hp <= 0) 
{
	with(waffe) {
	instance_destroy();	
	}
with (obj_enemy_counter)
{
number_instances_killed = number_instances_killed + 1;
}
obj_Player.xp += 40;
show_debug_message(obj_Player.xp);
instance_destroy();

}
with(other.id) {
	
instance_destroy();	
}
}