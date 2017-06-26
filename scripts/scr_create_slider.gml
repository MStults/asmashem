///argument0 => x 
///argument1 => y
///argument2 => length
///argument3 => precentage  
var slider = instance_create(argument0, argument1, obj_slider1);
with(slider)
{
    bar_length = argument2;
    right_limit = x + bar_length;
    bar_right = bar_left + bar_length;   
    x = argument3 * bar_length + left_limit;
    depth = other.depth - 1;
}

return slider;


