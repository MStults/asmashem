var adj =0;
adj[0] = instance_position(x, y - ATOM_H, obj_atom); //top
adj[1] = instance_position(x - ATOM_W, y, obj_atom);
adj[2] = instance_position(x + ATOM_W, y, obj_atom);
adj[3] = instance_position(x, y + ATOM_H, obj_atom); 
return adj;
