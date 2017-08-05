///argument0 => badge enumeration

var badge = argument0;

var len = array_length_1d(global.badges_newly_earned);
for(var i=0; i<len; i++)
{
    if(global.badges_newly_earned[i] == badge)
    {
        return 0;
    }    
}

ini_open("atom_smashem.ini");
var found = ini_read_real( 'badges', string(badge), 0);
if found < 1 then ini_write_real( 'badges', string(badge), 1 );
ini_close(); 

if found > 0 then return 0;

global.badges_newly_earned[len] = badge;
return len + 1;


