/// @description ghhjvbhj
// Sie können Ihren Code in diesem Editor schreiben
if(keyboard_check_pressed(vk_space) && animationfertig && global.dialog_index < ds_list_size(global.dialog)-1) {
	global.dialog_index++;
	zaehler = 0;
}
//TODO wenn alle Dialoge angezeigt
else if(keyboard_check_pressed(vk_space) && animationfertig && global.dialog_index < ds_list_size(global.dialog)) {
switch(global.toDo) {
case 0:
instance_destroy();	
}
}

