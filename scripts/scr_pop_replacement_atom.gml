var atom = argument0
, replacement = ds_stack_pop(global.replacement_atom_stack)
, xx_start = atom.pos_xstart;

instance_activate_object(replacement);

with(replacement)
{
    pos_xstart = xx_start;    
    state = AtomState.Recycling;         
    in_game_piece = false;
    //if global.recycle_cnt < 0 then global.recycle_cnt = 0;
    alarm[1] = 1; // global.recycle_cnt++ * 5 + 1;  
}
    
    

