var xx = argument0
, yy  = argument1
, cx = xx + atom_w_half;

//check floor
if collision_point(cx, yy - floor_h_half, obj_floor, false, true) then return false; //true;
 

//check atom -- float past atoms that are in a game piece 
//var a = collision_point(cx, yy - atom_h_half, obj_atom, false, true);
//if not scr_can_float_past(a) then return false;

if not scr_can_float_past_all(cx, yy - atom_h_half) then return false;

      
//check game piece  
var gp = collision_point(cx, yy - atom_h_half, obj_game_piece, false, true);
        
//no game piece 
if not instance_exists(gp) then return true; //false;        
        
return scr_can_float_up(gp.x, gp.y);

