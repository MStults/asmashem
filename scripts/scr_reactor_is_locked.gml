var reactor_key = argument0;

if reactor_key == "PN" then return false;
var key = reactor_key + "_LOCKED";

ini_open("atom_smashem.ini");
var val = ini_read_real("REACTOR", key, 1);

ini_close(); 


return val;
