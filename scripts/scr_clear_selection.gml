if chosen && instance_exists(chosen) && chosen.state = AtomState.Chosen0 then chosen.state = AtomState.Idle;            
scr_clear_adjacent();
game_piece = noone;
