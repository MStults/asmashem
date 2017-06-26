var adj = 0;

//N
adj[0] = instance_position(x, y - ATOM_H, obj_atom);

//NE
adj[1] = instance_position(x + ATOM_W, y - ATOM_H, obj_atom);

//E
adj[2] = instance_position(x + ATOM_W, y, obj_atom);

//SE
adj[3] = instance_position(x + ATOM_W, y + ATOM_H, obj_atom);

//S
adj[4] = instance_position(x, y + ATOM_H, obj_atom);

//SW
adj[5] = instance_position(x - ATOM_W, y + ATOM_H, obj_atom);  

//W
adj[6] = instance_position(x - ATOM_W, y, obj_atom);  

//NW
adj[7] = instance_position(x - ATOM_W, y - ATOM_H, obj_atom);  

return adj;
