///test if atom can float up
//test the basics
if in_game_piece
    return false;
    
if obj_controller.state == ControllerState.MoveEnding
    return false;
    
if obj_controller.state == ControllerState.Lasering
    return false;

if obj_controller.state == ControllerState.Missiling
    return false;
    
if obj_controller.state == ControllerState.AnitAnnihilation
    return false;

if obj_controller.state == ControllerState.AnitWaitForFinish
    return false;

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!    
//if state != AtomState.Idle  -> ORIGINAL CODE
//    return false;
    
//if state != AtomState.Idle and state != ControllerState.MoveBegin
//    return false;
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  
      
if !visible 
    return false;    

if pos_x != x || pos_y != y
    return false;
    
if !scr_loaded()
    return false;
          
//check if there is an overlap if so choose one 
var buddy = collision_circle(x + atom_w_half, y + atom_h_half, atom_w_half  - 2, obj_atom, false, true);
if instance_exists(buddy) and buddy.id < id and not buddy.in_game_piece
then return false;
    
//if buddy and buddy.id < id and not scr_can_float_past(buddy)
//    return false;

//if there is an atom, floor, or game piece above then it cannot float
return scr_can_float_up(pos_x, pos_y);
