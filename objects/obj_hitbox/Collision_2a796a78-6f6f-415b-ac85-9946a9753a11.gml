/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
with(other) {
hp -= 2*global.schaden;
if (hp <= 0) 
{
	/*with(waffe) {
	instance_destroy();	
	}*/
global.xp += xp;
instance_destroy();

}
}
instance_destroy();