adjacent_index = -1;
if !chosen then return false;
if not instance_exists(chosen) return false;

//if global.combining_cnt > 0 return false;
    
var xx = argument0;
var yy = argument1;
var cx = chosen.x + atom_w / 2;
var cy = chosen.y + atom_h / 2;
var diff_x = xx - cx;
var diff_y = yy - cy;


scr_clear_adjacent();

//if not device_mouse_check_button(0, mb_left) then return false; //<-HERE CHANGE   

if abs(diff_x) > atom_w /4 || abs(diff_y) > atom_w /4 then // check if in the center of chosen
{                
    // 0
    //1x2
    // 3            
    adjacent[0] = instance_position(chosen.x, chosen.y - atom_h, obj_atom);
    adjacent[1] = instance_position(chosen.x - atom_w, chosen.y, obj_atom);
    adjacent[2] = instance_position(chosen.x + atom_w, chosen.y, obj_atom);
    adjacent[3] = instance_position(chosen.x, chosen.y + atom_h, obj_atom);    
    
    for(var i=0; i<4; i++)
        if instance_exists(adjacent[i]) && (adjacent[i].state != AtomState.Idle || scr_has_hole_above(adjacent[i]))
        then adjacent[i]= noone;                  
                    
    if diff_x < 0 && diff_y < 0
    {
        //more up or more left
        if diff_y < diff_x then adjacent_index = 0 // more up
        else adjacent_index = 1 //more left
    }
    else if diff_x >= 0 && diff_y < 0
    {
        //more up or more right
        if diff_y * -1 > diff_x then adjacent_index = 0 // more up
        else adjacent_index = 2 //more right
    }
    else if diff_x < 0 && diff_y >= 0
    {
        //more down or more left
        if diff_y > diff_x * -1 then adjacent_index = 3 // more down
        else adjacent_index = 1 //more left
            
    } else {
        //more down or more right
        if diff_y > diff_x then adjacent_index = 3 // more down
        else adjacent_index = 2 //more right
    }   
} 

if adjacent_index < 0 or adjacent[adjacent_index] == noone then return false;

return true;

/**

if point_distance(xx, yy, chosen.x + ATOM_H_W, chosen.y + ATOM_H_H) <  2 * ATOM_W
{
    return true;
}
else
{
    adjacent_index = -1;
    return false;
}
**/

//if device_mouse_check_button(0, mb_left) then return true; //<-HERE CHANGE   

/**
if collision_point(xx, yy, adjacent[adjacent_index], false, false ) || collision_point(xx, yy, chosen, false, false )
{
    return true;
} else {
    adjacent_index = -1;
    return false;
}
**/
