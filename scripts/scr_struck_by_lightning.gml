p_part = global.p_atom_explode;
p_cnt = 6;   
if type == AtomType.Lightning 
then scr_start_lightning_shock(); //Request Shock!!
else 
{ 
    scr_init_atom_lightning(in_game_piece);    
}
