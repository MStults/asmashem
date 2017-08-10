
var name = argument0;
var amount_earned_this_level = argument1;

ini_open("atom_smashem.ini");
var amount = ini_read_real( 'counts', name, 0);

amount += amount_earned_this_level;
ini_write_real( 'counts', name, amount);
ini_close(); 

return amount;
