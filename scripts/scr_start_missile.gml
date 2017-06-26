//argument0 => Missile Atom
//argument1 => Missile Operand Atom


var missile_atom = argument0;
var missile_operand_atom = argument1;

scr_normal_move_swapping(missile_operand_atom, missile_atom);

//missile code 
var cx = missile_atom.x + missile_atom.atom_w_half;
var cy = missile_atom.y + missile_atom.atom_h_half;
var missile_launcher = instance_create(cx, cy, obj_missile_launcher);
missile_launcher.atom = missile_operand_atom;
missile_launcher.missile_atom = missile_atom;
missile_launcher.alarm[0] = 2;


with(missile_operand_atom) scr_move_atom(missile_atom.pos_x, missile_atom.pos_y);   
missile_operand_atom.state = AtomState.MovingToBeMissileOperand;
missile_atom.state = AtomState.MissileStart;
//obj_controller.state = ControllerState.missileing;
