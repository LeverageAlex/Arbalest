/// @description Insert description here
// You can write your code in this editor

switch(zustand) {
case 0:
if(!attacke) {
koenig_attacke2();
alarm[2] = 150;
attacke = true;
}
break;
case 1:
	if(x > -30) {
		x -= fluggeschwindigkeit;
		
		y = (ytiefe-200) + (0.00013 * ((MitteY-x)*(MitteY - x)));
	}
	else {
	zustand++;	
	}
break;
case 2:
if(y < ytiefe) {
	y += fluggeschwindigkeit;	
	}	
	else {
	zustand++;
	}
break;
case 3:
if(x < xMittig) {
		x += fluggeschwindigkeit;
		y = (ytiefe+200) - (0.00013 * ((MitteY-x)*(MitteY - x)));
	}
	else {
	zustand++;	
	}
break;
case 4:
if(!attacke) {
koenig_attacke2();
alarm[2] = 150;
attacke = true;
}
break;
case 5:
	if(x < 1960) {
		x += fluggeschwindigkeit;
		y = (ytiefe+200) - (0.00013 * ((MitteY-x)*(MitteY - x)));
	}
	else {
	zustand++;	
	}
break;
case 6:
if(y  + 150> ytiefe) {
	y -= fluggeschwindigkeit;	
	}	
	else {
	zustand++;
	}
break;
case 7:
if(x > xMittig) {
		x -= fluggeschwindigkeit;
		y = (ytiefe-200) + (0.00013 * ((MitteY-x)*(MitteY - x)));
	}
	else {
	zustand = 0;
	}
break;

	


}








/*if(herausfliegen) {
if(herausfliegenLinks) {
	
	if(x > -30) {
		x -= fluggeschwindigkeit;
		y = (ytiefe-200) + (0.00005 * ((MitteY-x)*(MitteY - x)));
	}
	else {
	herausfliegenLinks = false;	
	yRunter = true;
	}
	
	
	}
	else if(herausfliegenRechts) {
		if(x <= 2000) {
		x += fluggeschwindigkeit;
		y = (ytiefe/*-200*//*) - (0.00005 * ((MitteY-x)*(MitteY - x)));
	}
	else {
	herausfliegenRechts = false;	
	yRunter = false;
	}
	}
	}
	if(zurMitteFliegenvonRechts) {
	if(x < xMittig - 10) {
	y = ytiefe - 0.00005 * ((MitteY-x)*(MitteY - x));
	x += fluggeschwindigkeit;
	angriff = true;
	}}
	else if(zurMitteFliegenvonLinks) {
	if(x > xMittig + 10){
	y = ytiefe - 0.00005 * ((MitteY-x)*(MitteY - x));
	x -= fluggeschwindigkeit;
	angriff = true;
	}
	}
	else if (!angriffaktiv && angriff){
		koenig_attacke2();
		angriffaktiv = true;
		zaehlerSpin += 1;
		alarm[1] = 150;
		angriff = false;
		herausfliegen = false;
	
	/*else if(angriffaktiv){
			zaehlerSpin = +1;	
			if(zaehlerSpin > 90) {
		
			show_message("Geschafft")
			angriffaktiv = false;
			zaehlerSpin = 0;
			
			}
	}*/
/*	}



if((x <= -30 || x >=  2000) && yRunter) {
	//y -= fluggeschwindigkeit;
	if(y < ytiefe) {
	y += fluggeschwindigkeit;	
	}	
	else {
	yRunter = yRunter == false;	
	zurMitteFliegenvonLinks = true;
	}
	
} else if((x <= -30 || x >=  2000) && !yRunter) {
		//y += fluggeschwindigkeit;
	if(y > ytiefe - 250) {
	y -= fluggeschwindigkeit;	
	}
	else {
	yRunter = yRunter == false;	
	x -=1;
	zurMitteFliegenvonRechts = true;
	}
}*/