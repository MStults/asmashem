if not instance_exists(pipe_atom) then return false;
if pipe_atom.pos_x == x and pipe_atom.pos_y == y
then return true;
else return false;
