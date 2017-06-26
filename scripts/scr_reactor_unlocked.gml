var reactor_key = argument0;
var key = reactor_key + "_LOCKED";

ini_open("atom_smashem.ini");
ini_write_real("REACTOR", key, 0);
ini_close(); 


