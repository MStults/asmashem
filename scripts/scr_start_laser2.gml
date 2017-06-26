//argument0 => Laser Atom
//argument1 => Laser Operand Atom

var laser_atom = argument0;
var other_gun = argument1;

global.laser_cc++;
global.laser_max_cc = max(global.laser_max_cc, global.laser_cc);

//Laser code
var laser = instance_create(laser_atom.x, laser_atom.y, obj_atom_laser_gun);
laser.atom = noone;
laser.laser_atom = laser_atom;
laser.other_gun = other_gun;
laser.alarm[0] = 2;
laser_atom.state = AtomState.Lasering;
//obj_controller.state = ControllerState.Lasering;
