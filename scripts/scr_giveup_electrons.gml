//argument0 -> 1 = excited electrons, 2 = good, 3 = bad
//argument1 -> follow object if true
//argument2 -> delay (0-10)

//safty??
if global.launching_electron_cnt < 0 then global.launching_electron_cnt = 0;

//start at center
var cx = x + atom_w_half, cy = y + atom_h_half;
var arr_ele = 0;
    
//if excited
if argument0 == 1 then
{         
    var len = array_length_1d(electrons);       
    electrons_awaiting_launch = len; //track how many electrons are to be ejected 
           
    for(var i=0; i<len; i++)
    {    
        arr_ele[i] = scr_create_electron(electrons[i], electron_pts[i], argument1, argument2);
        //scr_create_ejected_electron(electrons[i], i * theta + beta, 2);
    }   
}
else 
{ 
    electrons_awaiting_launch = 1; //track how many electrons are to be ejected 
    
    if argument0 == 2 
    {
        //var e_index = irandom_range(0, len-1);
        //scr_create_electron(electrons[e_index], electron_pts[e_index], argument1);
        arr_ele[0] = scr_create_electron(spr_egood1, 50, argument1, argument2);
    }
    else
    {
    /**
        var reactor_penalty_multiplier = -1;
        if Reactor_Key == "BCP" then reactor_penalty_multiplier = -5;
        else if Reactor_Key == "GVR" then reactor_penalty_multiplier = -10;
        
        var penalty = 10;
        if global.consecutive_penalty > 1 then penalty = 50;        
        else if global.consecutive_penalty == 1 then penalty = 100;   
        
        penalty *= reactor_penalty_multiplier;
                
        
        if global.consecutive_penalty > 1
        {
            arr_ele[0] = scr_create_electron(spr_ebad3, penalty, argument1, argument2);
        } 
        else if global.consecutive_penalty == 1
        {
            arr_ele[0] = scr_create_electron(spr_ebad2, penalty, argument1, argument2);
        }
        else
        {
            arr_ele[0] = scr_create_electron(spr_ebad1, penalty, argument1, argument2);
        }
        **/
        
        
        var penalty = 0;
        if global.consecutive_penalty > 3 then global.consecutive_penalty = 3;
        
        if global.consecutive_penalty == 3
        {
            if Reactor_Key == "BCP" then penalty = -128;
            else if Reactor_Key == "GVR" then penalty = -2048;
            else penalty = -8;
            
            arr_ele[0] = scr_create_electron(spr_ebad4, penalty, argument1, argument2);
        } 
        else if global.consecutive_penalty == 2
        {
            if Reactor_Key == "BCP" then penalty = -64;
            else if Reactor_Key == "GVR" then penalty = -1024;
            else penalty = -4;
            
            arr_ele[0] = scr_create_electron(spr_ebad3, penalty, argument1, argument2);
        }
        else if global.consecutive_penalty == 1
        {
            if Reactor_Key == "BCP" then penalty = -32;
            else if Reactor_Key == "GVR" then penalty = -512;
            else penalty = -2;
            
            arr_ele[0] = scr_create_electron(spr_ebad2, penalty, argument1, argument2);
        }
        else
        {
            if Reactor_Key == "BCP" then penalty = -16;
            else if Reactor_Key == "GVR" then penalty = -256;
            else penalty = -1;
            
            arr_ele[0] = scr_create_electron(spr_ebad1, penalty, argument1, argument2);
        }
        
    }
}

return arr_ele;
