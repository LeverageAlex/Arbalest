//Origin
x = x + 1;
origion_point = xprevious;
offset = 0;

//Pathing
path_cycle = 1;
x_left_cycle = 0;
x_right_cycle = 0;
RandomZahl = 5;

//Pathing stop
Startposition = 0;
EntfernungMax = 290;

//Trifft Spieler an
player_spotted = false; //Spieler im Angriffsbereich (Circle 1)
attack_mode = false;	//Spieler im Angriffsbereich (Circle 1)

//Circle radius
CRone = 500;
CRtwo = 800;

//Attack mode
fire_state = false;		//Angriff wird ausgeführt
fire_cd = 0;			//Schuss Cooldown
fire_Cooldown = 55;		//Schussrate
IncreasingBall = 0.1;

//Defense mode
defense_mode = false;
ifRegen = false;
AlreadyRegen = false;
realRegen = 2;

//Var Konstanten
ai_speed = 2;
healthpoints = 15;

//Image Scaling
image_xscale = 0.9;
image_yscale = 0.9;

