//argument0 => play sound 
if(scr_is_excited())
{
    var len = array_length_1d(electrons);   
    var theta = 360 / len;
    var beta = theta / 2 * choose(0,1,2);
    
    for(var i=0; i<len; i++)
    {    
        //scr_create_electron(electrons[i], electron_pts[i], false);
        scr_create_ejected_electron(electrons[i], i * theta + beta, 2);
    }
}

scr_smoke_atom(argument0);
