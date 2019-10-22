way_passed = way_passed + schritt;

if (way_passed == maxLaenge)
{
 instance_destroy();	
}

if(place_meeting(x+2,y+2,obj_wall))
{
	instance_destroy()	
	//schritt = 0;
	//audio_play_sound(snd_bogen_treffer, 10, false);
}

/*if(place_meeting(x+2,y+2,obj_enemy))
{
	instance_destroy()	
}*/

