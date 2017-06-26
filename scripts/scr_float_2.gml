var yy = argument0;
var cx = x + atom_w_half;

if yy < 0 then return yy;

if collision_point(cx, yy - atom_h_half, obj_atom, false, true) 
then return yy;

if collision_point(cx, yy - floor_h_half, obj_floor, false, true) 
then return yy; 

if collision_point(cx, yy - atom_h_half, obj_game_piece, false, true)
then return yy; 

return scr_float_2(yy - atom_h);
