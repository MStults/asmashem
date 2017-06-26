
if starting_type == noone then return 0;
var _rem = instance_create(x,y, obj_remnant);
_rem.starting_atom_type = starting_type;
_rem.atom_type = type;
_rem.alarm[0] = 2;
