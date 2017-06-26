var reactor_key = argument0;

var val = 0;
if reactor_key == "BCP" then val = 1;
if reactor_key == "GVR" then val = 2;

ini_open("atom_smashem.ini");
ini_write_real("REACTOR", "LAST_VISITED", val);
ini_close(); 
