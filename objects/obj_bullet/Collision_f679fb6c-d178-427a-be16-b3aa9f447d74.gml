/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(!eigen) {
	if(other.ruestung - 20 < 0) { 
		other.ruestung -= 20;
		health += other.ruestung;
	other.ruestung = 0;
	}
	else {
	other.ruestung -= 20;	
	}
instance_destroy();
}