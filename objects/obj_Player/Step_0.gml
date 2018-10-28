left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
down = keyboard_check(ord("S"));

var move = right - left;

if(locked == true) {
	
move = 0;	
}

hspd = move * player_speed;

vspd = vspd + grv;
//jump
if(place_meeting(x,y+1,obj_wall )) && (jump)
{
	vspd = -20;	
}

//horizontal
if (place_meeting(x+hspd,y,obj_wall))
{
	while(!place_meeting(x+sign(hspd),y,obj_wall))
	{
		x = x +sign (hspd);
	}
	hspd = 0;
}
x = x + hspd;

//vertikal
if (place_meeting(x,y+vspd,obj_wall))
{
	while(!place_meeting(x,y+sign(vspd),obj_wall))
	{
		y = y + sign (vspd);
	}
	vspd = 0;
}
y = y + vspd;

//schnellles fallen

if(keyboard_check_pressed(ord("S"))){
 vspd = vspd + 4;
}

//schießen
if (weapon_state == 1){
	
	if (ammonition > 0) {
		
if(mouse_check_button(mb_left)&& firecooldown = 0)

		{
instance_create_layer(obj_Player.x+3,obj_Player.y,"ins_player",obj_bullet)
	//decreases ammo
	with (obj_magazin)
		{
	
			ammo = ammo - 1;
	
		}	
firecooldown = 10;
		}
		
	}
}

if(firecooldown <= 10) 
{
 	if (firecooldown != 0)
	{
	firecooldown = firecooldown - 1;	
	}
}
//crouch
if(down)
{
	if (weapon_state == 0)
	
	{
	sprite_index = sp_playercrouch;
	}
	
	if (weapon_state == 1)
	
	{
	sprite_index = sp_playercrouch_with_w;
	}
	
	
	}
else{
	if (weapon_state == 0)
	
	{
		
	sprite_index = sp_player_Khanh_Leander;
	}
	
	if (weapon_state == 1)
	
	{
	sprite_index = sp_player_with_w;
	}
	
	}
	
	with (obj_frame_indicator_and_w_state)
	{
	
	get_waepon_state = other.weapon_state;
	
	}
	
	//LevelUp
if(xp >= 50*level) {
xp -= 50*level;
level++;
}




