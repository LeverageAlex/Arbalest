/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(!mouse_check_button(mb_left)) {
grab = false;	
	
}


if( grab == false) {
exit;	
	
	
}
else 
{
if ((mouse_y + yy)	< bottomLimit &&  mouse_y + yy> topLimit) {
	y = mouse_y + yy;
}
else if(mouse_y +yy > bottomLimit) {
y = bottomLimit;	
	
}
else if(mouse_y + yy < topLimit){
	y = topLimit;
	
}
}
percentage = round(((y-bottomLimit)/(topLimit - bottomLimit))*100)
global.volume = percentage;
show_debug_message(percentage) 