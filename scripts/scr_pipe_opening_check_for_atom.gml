pipe_atom = instance_position(x, y, obj_atom);
if not scr_ready(pipe_atom) then return false;
if(not pipe_atom.in_game_piece) then return false;
return scr_pipe_opening_is_atom_there();
