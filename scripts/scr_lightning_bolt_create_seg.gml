///Creates a lightning segment that spans from x0, y0, to x1, y1
var x0 =  argument0;
var y0 =  argument1;
var x1 =  argument2;
var y1 =  argument3;

with(instance_create(x0 - 2, y0 - 2, obj_lightning_seg)) 
{
    image_angle = point_direction(x0, y0, x1, y1); 
    image_xscale = (point_distance(x0, y0, x1, y1) + 4) / sprite_width;      
}       
