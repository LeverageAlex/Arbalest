/// @description Insert description here
// You can write your code in this editor
for(i = 0; i < ds_list_size(spinnListe); i++) {
instance_destroy(ds_list_find_value(spinnListe, i))	
}
ds_list_clear(spinnListe)