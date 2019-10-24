/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(!place_meeting(x,y+wert, obj_wall)) {
	y += wert;
	wert *= erhoehung;
} else if (place_meeting(x,y+wert,obj_wall))
{
	while(!place_meeting(x,y+ sign(wert),obj_wall))
	{
		y = y + sign (wert);
	}
}
if(damaged && timerDmg <= 40) {
	if(pulsierend < 7) {
	image_blend = c_red;
	}
	else {
		image_blend = -1;
		if (pulsierend == 14) pulsierend = 0;
	}
	timerDmg++;
	pulsierend++;
	
}
else if(timerDmg > 40) {
	pulsierend = 0;
	image_blend = -1;
timerDmg = 0;
damaged = false;
}

blockiertRechts = false;
blockiertLinks = false;
if(place_meeting(x + 11, y, obj_todesblockteil2)) {
	//x -= 5;
	//show_message("triggered")
	blockiertRechts = true;
	//obj_fall.locked = true;

} else if(place_meeting(x - 11, y, obj_todesblockteil2)){
	//x += 5;
	//show_message("triggered")
	blockiertLinks = true;
	//obj_fall.locked = true;
}
