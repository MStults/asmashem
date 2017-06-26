///

var x0 = argument0;
var y0 = argument1;
var x1 = argument2;
var y1 = argument3;
var step = argument4;
var mov_speed = argument5;


/***
1. Create a wiggly path that runs horizontal
2. rotate it to point it to the receiver start position

e.g path we are creating 
---------------------------
  @       @       @
@---*---*---*---*----@-----
      @       @
---------------------------
**/
//create a wiggly path that runs horizontal 
//and that has a length equal to the distance from this to the receiver 
var dist = distance_to_point(x1, y1);
var steps = floor(dist / step);
var y_dir = choose(1, -1); // then y_dir = 1 else y_dir = -1;

var path = path_add();
path_add_point(path, x0, y0, mov_speed); //starting point
var xx, yy;
for(var i=0; i<steps; i++)
{
    xx = x + (i + 1) * step;
    yy = y + y_dir * irandom_range(step/2, step);
    path_add_point(path, xx, yy, 50); //irandom_range(50, 75)); 
    y_dir *= -1;
} 

path_add_point(path, x0 + dist, y0, mov_speed); //end point

//Rotate the path to the correct angle
var angle = point_direction(x, y, x1, y1);
path_rotate(path, angle);

//GM rotates from the center so we need to shift it back to the starting point
path_shift(path, x - path_get_x(path, 0), y - path_get_y(path, 0));
path_set_precision(path, 4);
path_set_closed(path, false); 
return path;
