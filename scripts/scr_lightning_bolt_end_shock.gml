var done = true;

for(var i=0; i<8; i++) if lightning_bolts[i] then done = false;

if done
{           
    alarm[2] = 4;
} 
else if lightning_bolts[pop_index] 
{
    with(adjacent[pop_index]) 
    {        
        //       
        if electrons_awaiting_launch < 1 //wait for all the electrons to leave 
           and lightning_state != LighthingAtomState.Shocking //if it is a lightning atom then wait until it is done shocking 
        {
            //show_debug_message("HIT: " + string(id));
            state = AtomState.ShockEnd;
            with(other)
            {
                lightning_bolts[pop_index] = false;
                pop_index = (++pop_index) % 8;
            }           
        } else with(other) {           
            pop_index = (++pop_index) % 8;
        }
    }     
    alarm[1] = 4;
} else {
    pop_index = (++pop_index) % 8;
    scr_lightning_bolt_end_shock();
}
