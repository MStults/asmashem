///make sure recators are unlocked if they are supposed to be 
var rks;
rks[0] = "PN";
rks[1] = "BCP";
rks[2] = "GVR";
var do_effect = false;

ini_open("atom_smashem.ini");    
for(var i=1; i<3; i++)
{
    var locked = ini_read_real("REACTOR", rks[i] + "_LOCKED", 1);
    
    if locked
    {
        var str_room = "";
        
        if rks[i] == "BCP" 
        then str_room = string(rm_PN_21);
        
        if rks[i] == "GVR" 
        then str_room = string(rm_BCP_21);
                
        if(ini_read_real(rks[i - 1], "ul" + str_room, 0) > 0)
        {
            ini_write_real("REACTOR", rks[i] + "_LOCKED", 0);
            ini_write_real("REACTOR", "LAST_VISITED", i);
            do_effect = true;
        }   
    }
}
ini_close(); 

if do_effect
{
    with(instance_create(x, y, obj_challenge_notification))
    {
        p_sys = global.p_system_front;
    }
}


