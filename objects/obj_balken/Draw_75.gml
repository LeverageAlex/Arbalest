/// @description Insert description here
// You can write your code in this editor

switch(knopfNr) {
case 1:
image_index = (global.schaden -1) / obj_Knopf.schaden;
break;
case 2:
image_index = (global.sprunghoehe - 1) / obj_Knopf.sprunghoehe;
break;
case 3:
image_index = (global.laufgeschwindigkeit -1) / obj_Knopf.laufspeed;
	
}


draw_self();
