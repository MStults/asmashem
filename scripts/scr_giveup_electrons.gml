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
        if global.consecutive_penalty > 1
        {
            arr_ele[0] = scr_create_electron(spr_ebad3, -5000, argument1, argument2);
        } 
        else if global.consecutive_penalty == 1
        {
            arr_ele[0] = scr_create_electron(spr_ebad2, -1000, argument1, argument2);
        }
        else
        {
            arr_ele[0] = scr_create_electron(spr_ebad1, -200, argument1, argument2);
        }
    }
}

return arr_ele;
