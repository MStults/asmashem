var pipe = argument0
, dir = argument1
, start_opening = argument2;

if pipe.pipe_type == PipeType.Opening  
{
    var open = true;
    with(obj_atom){
        if pos_x == pipe.x and pos_y == pipe.y then open = false;
    }   
    if start_opening.pipe_path then path_delete(start_opening.pipe_path);
    start_opening.pipe_path = path_add();
    path_add_point(start_opening.pipe_path, pipe.x, pipe.y, 50);
    start_opening.pipe_receiving = pipe;
    return open;
}

var back_dir = dir - 2;
if back_dir < 0 then back_dir += 4;
var p_index = back_dir, pe;

for(var i=0; i<3; i++)
{
    p_index = (p_index + 1) mod 4;
    if pipe.pipe_connections[p_index] 
    and scr_pipe_is_open(pipe.pipe_connections[p_index], p_index, start_opening)
    {
        path_add_point(start_opening.pipe_path, pipe.x, pipe.y, 100);
        return true;
    }   
}
    
return false;
