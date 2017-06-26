var reactor = argument0;
var cnt = 0;
var start_rm = global.pn_start_rm;
var end_rm = global.pn_end_rm;


if argument0 == "BCP" then
{
    start_rm = global.bcp_start_rm;
    end_rm = global.bcp_end_rm;
}


if argument0 == "GVR" then
{
    start_rm = global.gvr_start_rm;
    end_rm = global.gvr_end_rm;
}


var the_room = start_rm, str_rm;
var done = false;

ini_open("atom_smashem.ini");
while(true)
{
    str_rm =  string(the_room);
    cnt += ini_read_real(reactor, "sc" +  str_rm, 0);    
    if done then break;
    the_room = room_next(the_room);        
    if the_room == end_rm then done = true;
}    
ini_close(); 


return cnt;
