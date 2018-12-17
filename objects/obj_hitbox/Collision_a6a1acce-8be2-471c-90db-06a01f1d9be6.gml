/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
with(other) {
hp -= 2;
if (hp <= 0) 
{
with (obj_enemy_counter)
{
number_instances_killed = number_instances_killed + 1;
}
obj_Player.xp += 9;
instance_destroy();
}
}