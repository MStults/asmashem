var sucess = false;

switch(game_piece.gp_type)
{
    case GP.Clamp:
        sucess = scr_gp_start_clamp(game_piece, chosen);
        break;
    case GP.Pipe:
        sucess = scr_gp_start_pipe(game_piece, chosen);
        break;
}

if sucess
{
    //set forth a replacement
    if(not chosen.in_game_piece)
    {
        scr_pop_replacement_atom(chosen);
        chosen.in_game_piece = true;
    }    
    chosen.pos_xstart = game_piece.x;
   
} else {
     scr_start_kickback(game_piece, chosen);
}

scr_clear_selection();
state = ControllerState.MoveEnding;  
          
