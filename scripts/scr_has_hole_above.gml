

//test collsion
var obj = argument0
, cx = obj.x + atom_w_half
, yy = obj.y - floor_h_half;

//check floor
if collision_point(cx, yy, obj_floor, false, true) then return false;

//check atom
var atom = collision_point(cx,  yy, obj_atom, false, true);
if instance_exists(atom) then return scr_has_hole_above(atom);

//check game piece
var gp = collision_point(cx, yy, obj_game_piece, false, true);
if instance_exists(gp) then return scr_has_hole_above(gp);

var bs = collision_point(cx, yy, obj_board_space, false, true);
if instance_exists(bs) then return true;
return false;
