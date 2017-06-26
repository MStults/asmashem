//argument0 -> electron spr_index 
//argument1 -> direction 
//argument2 -> gravity

//start at center
var cx = x + atom_w_half, cy = y + atom_h_half;
var obj_e = instance_create(cx,cy, obj_ejected_electron);
var delay = 10;

obj_e.sprite_index = argument0;    
//obj_e.direction = argument1;
//obj_e.speed = argument2;   
obj_e.gravity_direction = argument1;
obj_e.gravity =  argument2;
obj_e.atom = id;
obj_e.depth = depth - 1;
