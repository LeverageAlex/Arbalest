way_passed = way_passed + 1;

if (way_passed == 100)
{
 instance_destroy();	
}

if(place_meeting(x+2,y+2,obj_wall))
{
	instance_destroy()	
}

/*if(place_meeting(x+2,y+2,obj_enemy))
{
	instance_destroy()	
}*/

