image_xscale = 0.7;
image_yscale = 0.7;
eigen = true;

xpos = obj_cursor.x;
ypos = obj_cursor.y;

richtung = point_direction(x, y, mouse_x, mouse_y);
image_angle = richtung
direction =  point_direction(x, y, xpos, ypos);
speed = 8;

//way passed
way_passed = 0;