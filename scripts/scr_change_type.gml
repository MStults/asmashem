
var new_type = argument0, set_next = argument1, in_game_piece = argument2;
//choose(AtomType.One,AtomType.Two,AtomType.Three,AtomType.Four,AtomType.Five);

switch(new_type)
{
    case AtomType.One:
        scr_init_atom_1(in_game_piece);
        break;
    case AtomType.Two:
        scr_init_atom_2(in_game_piece);
        break;
    case AtomType.Three:
        scr_init_atom_3(in_game_piece);
        break;
    case AtomType.Four:
        scr_init_atom_4(in_game_piece);
        break;
    case AtomType.Five:
        scr_init_atom_5(in_game_piece);
        break;      
    case AtomType.Six:
        scr_init_atom_6(in_game_piece);
        break;    
    case AtomType.Lightning:        
        scr_init_atom_lightning(in_game_piece);
        break;
    case AtomType.Dop:        
        scr_init_atom_dop(in_game_piece);
        break;
    case AtomType.Laser:        
        scr_init_atom_laser(in_game_piece);
        break;
    case AtomType.Shotgun:        
        scr_init_atom_shotgun(in_game_piece);
        break;
    case AtomType.Missile:        
        scr_init_atom_missile(in_game_piece);
        break;
    case AtomType.Anti:        
        scr_init_atom_anti(in_game_piece);
        break;
    case AtomType.Iron:        
        scr_init_atom_iron(in_game_piece);
        break;
    case  AtomType.Mine:
        scr_init_atom_mine(in_game_piece);
        break;
}
if set_next 
{
    with(obj_next)scr_set_next_type();
}
