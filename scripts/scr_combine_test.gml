var in_place_cnt = 0;
for(var i=0; i< kids_cnt; i++) with(kids[i])
{   
    
    if scr_test_position()
    {
        scr_stop_atom(); 
        state = AtomState.CombiningKid;
        in_place_cnt++;
    } else {
        pos_y = other.pos_y;
    }
    //show_debug_message(string(id) + "   dist: " + string(last_dist));
}
return in_place_cnt == kids_cnt;

    
