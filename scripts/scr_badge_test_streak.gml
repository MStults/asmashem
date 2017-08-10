var badge = argument0;
var amount_of_stars= argument1;
var num_of_levels_threshold = argument2;

var name = "streak" + string(badge);
var total = 0;

ini_open("atom_smashem.ini");
if amount_of_stars < 3
{
    ini_write_real( 'counts', name, 0);
}
else
{
    total = ini_read_real( 'counts', name, 0) + 1;
    ini_write_real( 'counts', name, total);
}
ini_close(); 

if total >= num_of_levels_threshold then scr_badge_add(badge);


