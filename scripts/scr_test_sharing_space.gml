var a = collision_point(x + ATOM_H_W, y + ATOM_H_H, obj_atom, false, true);
if(!instance_exists(a)) then return false;

if a.state != AtomState.Idle then return false;

///good recover -> PRODUCTION
/**
state = AtomState.Recycle;
lost = true;
return true;
**/
    
//GOOD FOR TESTING 

if a.id > id 
{
    state = AtomState.Recycle;
    lost = true;
    return true;
} else {
    return false;
}

