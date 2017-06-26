var a = argument0;

//no atom the no problem
if not instance_exists(a) then return true;

//if it is not in a game piece then no
if not a.in_game_piece then return false;

//if it is not in an idle state (and in a game piece)
if a.state != AtomState.Idle then return false;

//the atom is in a game piece and it is idle
return true; 
