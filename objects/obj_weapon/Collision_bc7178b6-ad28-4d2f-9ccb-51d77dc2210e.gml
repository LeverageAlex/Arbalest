if (keyboard_check_pressed(ord("E")))
{
waffenstatus = true;
with (obj_Player)
{
weapon_state = 1;
//Anpassung des Sprites
if(sprite_index != sp_bewegung_links_mit_w || sprite_index != sp_player_with_w) {
if(sprite_index == sp_bewegung_rechts) {
sprite_index = sp_player_with_w;
} else if(sprite_index == sp_bewegung_links) {
	sprite_index = sp_bewegung_links_mit_w;
	
}




}
}
//instance_destroy();

}