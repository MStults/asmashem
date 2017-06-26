
if scr_set_adjacent(gui_x, gui_y) 
{
 state = ControllerState.MoveEnd;
 }
else
{
     game_piece = scr_set_adjacent_gp(gui_x, gui_y);
     if game_piece then state = ControllerState.MoveEndGp;
}
