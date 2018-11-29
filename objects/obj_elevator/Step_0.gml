if (keyboard_check(ord("E")) && place_meeting(x, y-10, obj_Player))
{

y = y - 5;
obj_Player.y -= 5;
} else if !place_meeting(x,y + 5, obj_second_Wall)
{
	if( place_meeting(x, y-10, obj_Player)) {
			obj_Player.y += 5;
			with(obj_Player) {
			place_meeting(x, y+1, obj_second_Wall) {
				obj_Player.y -= 5;
			}
				
			}
	}
	y = y + 5;
	

}