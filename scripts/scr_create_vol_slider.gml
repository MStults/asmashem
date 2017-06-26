///argument0 => x 
///argument1 => y
///argument2 => length
///argument3 => volume  
var slider = instance_create(argument0, argument1, obj_vol);
with(slider)
{
    bar_length = argument2;
    right_limit = x + bar_length;
    bar_right = bar_left + bar_length;   
    volume = sqrt(sqrt(argument3));
    x = volume * bar_length + left_limit;
    depth = other.depth - 1;
}

return slider;


