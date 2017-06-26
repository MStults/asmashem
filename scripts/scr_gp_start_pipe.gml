var gp_pipe = argument0;
var atom = argument1;

if gp_pipe.state == GPPState.Waiting4Atom
{    
    return scr_gp_start(gp_pipe, atom);
} 
else 
{
    return false;
}




