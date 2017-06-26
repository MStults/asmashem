///returns true if the atom passed in is ready for manipulation 
//argument0 => atom to test
var atom = argument0;
if not instance_exists(atom) then return false;
if atom.speed != 0 then return false;
return atom.state == AtomState.Idle;
