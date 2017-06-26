var atom0 = argument0
, atom1 = argument1;

//this normal x pos swapping so that when they get recycled the goto the right column
var temp_x = atom0.pos_xstart;
atom0.pos_xstart = atom1.pos_xstart;
atom1.pos_xstart = temp_x;

//swap the replaced flags 
var temp_gp = atom0.in_game_piece;
atom0.in_game_piece = atom1.in_game_piece;
atom1.in_game_piece = temp_gp;



