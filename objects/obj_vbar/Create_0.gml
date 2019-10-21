/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
image_xscale = random_range(0.5, 1)
image_yscale = image_xscale;

topLimit = y-(sprite_height/2) + (image_xscale*75);
bottomLimit = y+(sprite_height/2) - (image_xscale*75);

a = instance_create_layer(x, y, "Vorne",obj_vslider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.barLength = sprite_height;
a.topLimit = topLimit;
a.bottomLimit = bottomLimit;
a.y =  bottomLimit - (bottomLimit - topLimit)*global.volume/100;
