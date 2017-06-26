//argument0 => Laser Atom
//argument1 => Laser Operand Atom

var laser_atom = argument0;
var laser_operand_atom = argument1;

scr_normal_move_swapping(laser_operand_atom, laser_atom);

//Laser code
var laser = instance_create(laser_atom.x, laser_atom.y, obj_atom_laser_gun);
laser.atom = laser_operand_atom;
laser.laser_atom = laser_atom;
laser.other_gun = noone;
laser.alarm[0] = 2;
 
with(laser_operand_atom) scr_move_atom(laser_atom.pos_x, laser_atom.pos_y);   
laser_operand_atom.state = AtomState.MovingToBeLaserOperand;
laser_atom.state = AtomState.LaserStart;
//obj_controller.state = ControllerState.Lasering;
