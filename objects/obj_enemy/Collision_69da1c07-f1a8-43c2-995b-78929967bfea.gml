hp = hp - 1;

if (hp <= 0) 
{
with (obj_enemy_counter)
{
number_instances_killed = number_instances_killed + 1;
}
obj_Player.xp += 9;
instance_destroy();
}