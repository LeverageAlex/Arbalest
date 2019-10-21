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
if ((obj_cursor.y + yy)	< bottomLimit &&  obj_cursor.y + yy> topLimit) {
	y = obj_cursor.y + yy;
}
else if(obj_cursor.y +yy > bottomLimit) {
y = bottomLimit;	
	
}
else if(obj_cursor.y + yy < topLimit){
	y = topLimit;
	
}
}
percentage = round(((y-bottomLimit)/(topLimit - bottomLimit))*100)
global.volume = percentage;
audio_master_gain(global.volume/100);
//show_debug_message(percentage) 
