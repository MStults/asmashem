//argument0 => lookat 
//argument1 => chosen

var lookat = argument0;
var chosen = argument1;

with(chosen)
{
    kickback_to_x = pos_x;
    kickback_to_y = pos_y;
    scr_move_atom(lookat.pos_x,  lookat.pos_y);
    state = AtomState.MovingToBeKickedback;
}



