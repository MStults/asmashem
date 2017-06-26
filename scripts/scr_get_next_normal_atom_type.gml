
next_atom_type = global.atom_type_array[global.atom_type_index];  
global.atom_type_index = (global.atom_type_index + 1) mod array_length_1d(global.atom_type_array);

if scr_iron_cnt() >=  global.iron_most_cnt and next_atom_type == AtomType.Iron 
then return scr_get_next_normal_atom_type();
else return next_atom_type;
