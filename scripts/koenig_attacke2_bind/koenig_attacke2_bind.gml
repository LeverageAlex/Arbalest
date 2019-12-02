bewegungX = argument0;
bewegungY = argument1;
for(i = 0; i < ds_list_size(spinnListe); i++) {
(ds_list_find_value(spinnListe, i)).x += bewegungX;
(ds_list_find_value(spinnListe, i)).y += bewegungY;
}
alarm[4] = 4;