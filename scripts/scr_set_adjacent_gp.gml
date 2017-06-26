if !chosen then return false;
if not instance_exists(chosen) return false;
    
var xx = argument0;
var yy = argument1;
var cx = chosen.x + atom_w / 2;
var cy = chosen.y + atom_h / 2;
var diff_x = xx - cx;
var diff_y = yy - cy;
var game_piece_array = 0;
var game_piece_index = -1;


if abs(diff_x) > atom_w /4 || abs(diff_y) > atom_w /4 then // check if in the center of chosen
{                
    // 0
    //1x2
    // 3            
    game_piece_array[0] = instance_position(chosen.x, chosen.y - atom_h, obj_game_piece);
    game_piece_array[1] = instance_position(chosen.x - atom_w, chosen.y, obj_game_piece);
    game_piece_array[2] = instance_position(chosen.x + atom_w, chosen.y, obj_game_piece);
    game_piece_array[3] = instance_position(chosen.x, chosen.y + atom_h, obj_game_piece);    
    
    
    for(var i=0; i<4; i++)
        if instance_exists(game_piece_array[i]) and scr_has_hole_above(game_piece_array[i])
        then game_piece_array[i]= noone;           
                        
    if diff_x < 0 && diff_y < 0
    {
        //more up or more left
        if diff_y < diff_x then game_piece_index = 0 // more up
        else game_piece_index = 1 //more left
    }
    else if diff_x >= 0 && diff_y < 0
    {
        //more up or more right
        if diff_y * -1 > diff_x then game_piece_index = 0 // more up
        else game_piece_index = 2 //more right
    }
    else if diff_x < 0 && diff_y >= 0
    {
        //more down or more left
        if diff_y > diff_x * -1 then game_piece_index = 3 // more down
        else game_piece_index = 1 //more left
            
    } else {
        //more down or more right
        if diff_y > diff_x then game_piece_index = 3 // more down
        else game_piece_index = 2 //more right
    }   
} 

if game_piece_index < 0 or game_piece_array[game_piece_index] == noone then return noone;

return game_piece_array[game_piece_index];

/**
if point_distance(xx, yy, chosen.x + ATOM_H_W, chosen.y + ATOM_H_H) <  2 * ATOM_W
{
    return game_piece_array[game_piece_index];
}
else
{
    return noone;
}
**/

/*
if collision_point(xx, yy, game_piece_array[game_piece_index], false, false ) || collision_point(xx, yy, chosen, false, false )
{    
    return game_piece_array[game_piece_index];
} else {
    return noone;
}
*/
