//oben
lanzeOben = instance_create_layer(x + laengeBreite / 2, y - 10, "Boss", obj_koenig_lanzen)
ds_list_add(lanzenListe, lanzeOben);
lanzeOben.direction = 90;


//oben links und rechts
lanzeObenRechts = instance_create_layer(x + laengeBreite + 10, y + 20, "Boss", obj_koenig_lanzen)
lanzeObenLinks = instance_create_layer(x - 10, y + 20, "Boss", obj_koenig_lanzen)
ds_list_add(lanzenListe, lanzeObenRechts);
ds_list_add(lanzenListe, lanzeObenLinks);
lanzeObenRechts.direction = 45;
lanzeObenRechts.image_angle = 135+180;
lanzeObenLinks.direction = 135;
lanzeObenLinks.image_angle = 45;

//Mittig
lanzeMitteRechts = instance_create_layer(x + laengeBreite + 15, y + sprite_height / 2, "Boss", obj_koenig_lanzen)
lanzeMitteLinks = instance_create_layer(x - 15, y + sprite_height / 2, "Boss", obj_koenig_lanzen)
ds_list_add(lanzenListe, lanzeMitteRechts);
ds_list_add(lanzenListe, lanzeMitteLinks);
lanzeMitteRechts.direction = 0;
lanzeMitteRechts.image_angle = 270;
lanzeMitteLinks.direction = 180;
lanzeMitteLinks.image_angle = 90;

//Unten links und rechts

lanzeUntenRechts = instance_create_layer(x + laengeBreite + 10, y - 20 + sprite_height, "Boss", obj_koenig_lanzen)
lanzeUntenLinks = instance_create_layer(x - 10, y - 20 + sprite_height, "Boss", obj_koenig_lanzen)
ds_list_add(lanzenListe, lanzeUntenRechts);
ds_list_add(lanzenListe, lanzeUntenLinks);
lanzeUntenRechts.direction = 315;
lanzeUntenRechts.image_angle = 45+180;
lanzeUntenLinks.direction = 225;
lanzeUntenLinks.image_angle = 315-180;

//unten
lanzeUnten = instance_create_layer(x + laengeBreite / 2, y + 5 + laengeY, "Boss", obj_koenig_lanzen);
lanzeUnten.direction = 270
lanzeUnten.image_angle = 180
ds_list_add(lanzenListe, lanzeUnten);

alarm[0] = 140;