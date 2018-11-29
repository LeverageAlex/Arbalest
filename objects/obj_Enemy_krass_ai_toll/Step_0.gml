//Normal pathing

if (path_cycle == 1)
{
	
	sprite_index = sp_super_enemy_ai_krass;
	
	//Wenn nicht 0 --> laufen
	if (x_left_cycle != 0)
	
	{
		
		//Spiegelt sprite
		//		 image_xscale = -0.9;
		x_left_cycle = x_left_cycle - 1;
		x = x - ai_speed;
		Startposition = Startposition - 1;

	}	
	
	//Wenn nicht 0 --> laufen
	if (x_right_cycle != 0)
	
	{
		
		//Spiegelt sprite
		//		image_xscale = 0.9;
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

if (Startposition >= EntfernungMax) or (Startposition <= -EntfernungMax)
{
	
	//Das Pathing bricht ab, um zum Startpunkt zurück kehren zu können
	path_cycle = 0;
	
	//Wenn das Maximum (an range) erreicht ist läuft die AI zum Startpunkt zurück (rechts)
	if (Startposition >= EntfernungMax) 
	
	{
	
	x_left_cycle = Startposition;
	path_cycle = 1;
	
	}
	
	//Wenn das Maximum (an range) erreicht ist läuft die AI zum Startpunkt zurück (links)
		if (Startposition <= -EntfernungMax) 
	
	{
	
	x_right_cycle = Startposition;
	path_cycle = 1;
	
	}
	

}

//Fight - Leben
if (healthpoints <= 0)
{

instance_destroy(self);

}

//Check for Collisions

//In circle
if (defense_mode == false)
{
	
if collision_circle(x, y, CRone, obj_Player, false, true)
{
	
	player_spotted = true;
	
		if (healthpoints > 5)
		{
			
			attack_mode = true;
			
		}
		
	}
	
}

if (player_spotted == true)
{

path_cycle = 0;

}


//Out of circle 
if (defense_mode == false)
{
	
	
if !collision_circle(x, y, CRtwo, obj_Player, false, true)
	{
	
		player_spotted = false;
		fire_state = false;
		defense_mode = false;
	
	}

}

//Bewegung setzt fort + attack mode aus
if (player_spotted == false)
{

path_cycle = 1;
attack_mode = false;

}

//Attack pathing

//Bereitet Angriff vor 

if (attack_mode == true)
{

	fire_state = true;

}

if (attack_mode == false)
{

	fire_state = false;

}


//Greift an
if (fire_state == true)
{
	
	sprite_index = sp_super_enemy_ai_krass_attack;

	if (fire_cd == 0) 
	{
		fire_cd = fire_Cooldown;
		instance_create_layer(x,y,"ins_gun",obj_ai_ball_right);
		instance_create_layer(x,y,"ins_gun",obj_ai_ball_left);
	}

}

if (fire_cd > 0)
{
	
	fire_cd = fire_cd - 1;

}

//Defense Mode

if (healthpoints < 6) 
{
	
	defense_mode = true;
	
}

if (defense_mode == true) 
{
	
	sprite_index = sp_super_enemy_ai_krass_defense;
	attack_mode = false;
	path_cycle = 0;
	
	ifRegen = true;
	
	if (ifRegen == true)
	{
		
			if (AlreadyRegen == false)
			{
			
			AlreadyRegen = true;
			alarm_set(0,room_speed * 0.1);
			
			}
		
	}

}

			//Out of defense mode
			if (healthpoints >= 15) and (defense_mode == true)
			{
					
					defense_mode = false;
					
					ifRegen = false;
					AlreadyRegen = false;
				
			}
























