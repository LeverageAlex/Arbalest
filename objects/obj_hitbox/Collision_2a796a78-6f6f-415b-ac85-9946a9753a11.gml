/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
with(other) {
hp -= 2*obj_Player.schaden;
if (hp <= 0) 
{
	/*with(waffe) {
	instance_destroy();	
	}*/
obj_Player.xp += 40;
instance_destroy();

}
}
instance_destroy();