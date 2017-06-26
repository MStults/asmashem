//argument0 => atom0
//argument1 => atom1
//argument2 => true for vertical or false for horizontal
//returns true if they can react 

if not ALLOW_MATCHING then return false;

var good = instance_exists(argument0) 
            and instance_exists(argument1)
            and scr_can_type_of_atom_react(argument0)
            and scr_can_type_of_atom_react(argument1);           
          
/*** ORIGINAL CODE            
var good = instance_exists(argument0)
           && instance_exists(argument1)           
           && argument0.speed == 0 
           && argument1.speed == 0
           && argument1.state == AtomState.Idle 
           && argument0.state == AtomState.Idle; 
***/
if good
{   
    if argument0.state == AtomState.Piping then good = false;
    if argument1.state == AtomState.Piping then good = false;    
    if argument0.state == AtomState.PipeOpeningReached then good = false;
    if argument1.state == AtomState.PipeOpeningReached then good = false;    
}


if good and obj_controller.state != ControllerState.GlobalReactionStarted 
{
    good = argument0.type == argument1.type
           && argument1.type != AtomType.Lightning 
           && argument0.type != AtomType.Lightning
           && argument1.type != AtomType.Iron 
           && argument0.type != AtomType.Iron;
}       
    
if argument2
{    
    return good && argument0.pos_x == argument1.pos_x; 
}        
else 
{
    return good && argument0.pos_y == argument1.pos_y;    
} 
