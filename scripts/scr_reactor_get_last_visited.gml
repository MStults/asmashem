
ini_open("atom_smashem.ini");
var val = ini_read_real("REACTOR", "LAST_VISITED", 0);
ini_close(); 
return val;
