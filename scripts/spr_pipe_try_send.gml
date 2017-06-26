var p_index = argument0;

if obj_controller.state != ControllerState.Scanning then return false;

var p_con = pipe_connections[p_index]
, dir = p_index;

if instance_exists(p_con) and scr_pipe_is_open(p_con, p_index, id)
{            
    path_add_point(pipe_path, x, y, 50);
    path_reverse(pipe_path);
    path_set_closed(pipe_path, false);
    path_set_kind(pipe_path, 1); 
    

    //pipe_receiving = pipe_end;
    pipe_receiving.state = GPPState.Receiving;
    pipe_receiving.receiving_dir = dir;
    pipe_receiving.pipe_atom = pipe_atom;
    state = GPPState.Sending;   
    var d = obj_pipe_connection.depth + 1;
    with(pipe_atom)
    {          
        depth = d;
        pipe_end = other.pipe_receiving;
        state = AtomState.Piping;
        pos_x = other.pipe_receiving.x;
        pos_y = other.pipe_receiving.y;
        path_start(other.pipe_path, PIPE_SPEED, path_action_stop, true);
    }            
    
    return true;
} else {
    return false;
}
