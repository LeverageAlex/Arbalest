//Normal pathing

if (path_cycle == 1)
{
	
	//Wenn nicht 0 --> laufen
	if (x_left_cycle != 0)
	
	{

		x_left_cycle = x_left_cycle - 1;
		x = x - ai_speed;
		Startposition = Startposition - 1;

	}	
	
	//Wenn nicht 0 --> laufen
	if (x_right_cycle != 0)
	
	{

		x_right_cycle = x_right_cycle - 1;
		x = x + ai_speed;
		Startposition = Startposition + 1;

	}	
	
	//Wenn beide = 0 --> richtung zum laufen wählen
	if (x_left_cycle == 0) && (x_right_cycle == 0)
	
	{	
		
		RandomZahl = round(random_range(2,4));
	
	
	}
	
	//Wenn (50% Chance) RandomZahl durch Zufall = 2 --> links laufen
	if (RandomZahl == 2)
	
	{

	x_left_cycle = x_left_cycle + 100;
	RandomZahl = 5;


	}
	
	//Wenn (50% Chance) RandomZahl durch Zufall = 3 --> rechts laufen
	if (RandomZahl == 3)
	
	{

	x_right_cycle = x_right_cycle + 100;
	RandomZahl = 5;


	}

}

//Pathing abbruch Fall 1
//Zu weite Entfernung? 

if (Startposition == EntfernungMax) or (Startposition == -EntfernungMax)
{

	path_cycle = 0;

}




