/// @description Insert description here
// You can write your code in this editor

//Flug oberhalb
if(zustand == 1) {
	
x-= geschwindigkeit;
y = a*sin(b*(x-offsetX)) + offsetY;
if(x <= 600) {
zustand = 2;	
if(instance_exists(obj_spinningStars)) {
	attacke2 = noone;
instance_destroy(obj_spinningStars);	
}
alarm[3] = 120;
//koenig_attacke2()
}
}
else if(zustand == 3) {
x+=geschwindigkeit;
y = -a*sin(b*(x-offsetX)) + offsetY;
if(x >= 3350/2) {
	instance_destroy(attacke2)
	attacke2 = noone;
zustand = 4;	
alarm[6] = 120;
//koenig_attacke1();
}
}//Drei wird durch den Alarm überbrückt
else if(zustand == 5) {
	x+=geschwindigkeit;
y = -a*sin(b*(x-offsetX)) + offsetY;
if(x >= 2750) {
	if(instance_exists(obj_spinningStars)) {
instance_destroy(obj_spinningStars);	
attacke2 = noone;
}
	zustand = 6;
	alarm[3]=120;
}
}
else if(zustand = 7) {
	x-=geschwindigkeit;
	y = a*sin(b*(x-offsetX)) + offsetY;
if(x <= 3350/2) {
	instance_destroy(attacke2);
	attacke2 = noone;
	zustand = 8;
	alarm[5] = 180;
koenig_attacke1();
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

