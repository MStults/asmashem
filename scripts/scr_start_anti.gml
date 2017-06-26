//argument0 => Anti Atom
//argument1 => Anti Operand Atom


var anti_atom = argument0;
var anti_operand_atom = argument1;

scr_normal_move_swapping(anti_operand_atom, anti_atom);

//anti code 
var cx = anti_atom.x + anti_atom.atom_w_half;
var cy = anti_atom.y + anti_atom.atom_h_half;

var anti = instance_create(cx, cy, obj_anti);
anti.atom = anti_operand_atom;
anti.anti_atom = anti_atom;
anti.alarm[0] = 2;

with(anti_operand_atom) scr_move_atom(anti_atom.pos_x, anti_atom.pos_y);   
anti_operand_atom.state = AtomState.MovingToBeAntiOperand;
anti_atom.state = AtomState.AntiStart;

