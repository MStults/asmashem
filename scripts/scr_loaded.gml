if global._loaded 
 return true;

var a, len = obj_controller.base_number_of_atoms; // instance_number(obj_atom);
a = instance_find(obj_atom, len - 1);
global._loaded = a.visible && a.pos_x == a.x && a.pos_y == a.y  && a.speed == 0;
return global._loaded;
