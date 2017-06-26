//argument0 => Shotgun Atom
//argument1 => Shotgun Operand Atom

var shotgun_atom = argument0;
var shotgun_operand_atom = argument1;

scr_normal_move_swapping(shotgun_operand_atom, shotgun_atom);

//shotgun code
var shotgun = instance_create(shotgun_atom.x, shotgun_atom.y, obj_atom_shotgun_gun);
shotgun.atom = shotgun_operand_atom;
shotgun.shotgun_atom = shotgun_atom;
shotgun.alarm[0] = 2;
 
with(shotgun_operand_atom) scr_move_atom(shotgun_atom.pos_x, shotgun_atom.pos_y);   
shotgun_operand_atom.state = AtomState.MovingToBeShotgunOperand;
shotgun_atom.state = AtomState.ShotgunStart;
